part of '../stream.dart';

enum _ViewerExitAction { cancel, leave }

class ViewerStreamScreen extends StatefulWidget {
  final StreamDataModel stream;
  final JoinStreamData? joinData;

  const ViewerStreamScreen({
    super.key,
    required this.stream,
    this.joinData,
  });

  @override
  State<ViewerStreamScreen> createState() => _ViewerStreamScreenState();
}

class _ViewerStreamScreenState extends State<ViewerStreamScreen> {
  late final ViewerStreamCubit _cubit;
  bool _hasHandledStreamEnd = false;
  bool _hasShownTerms = false;
  bool _hasHandledFirstTap = false;

  @override
  void initState() {
    super.initState();
    _cubit = ViewerStreamCubit(
      locator(),
      locator(),
      locator(),
      locator(),
      locator(),
      locator(),
      locator(),
      locator(),
      locator(),
      locator<AppLocal>(),
      stream: widget.stream,
      joinData: widget.joinData,
    );
  }

  @override
  void dispose() {
    _cubit.cleanup();
    super.dispose();
  }

  String _formatTime(int s) {
    final m = s ~/ 60, r = s % 60;
    return '${m.toString().padLeft(2, '0')}:${r.toString().padLeft(2, '0')}';
  }

  String _resolveCategoryName(int? categoryId) {
    if (categoryId == null) return '';
    final categories = widget.stream.categories;
    if (categories == null) return '';
    for (final category in categories) {
      if (category.id == categoryId) {
        return category.name ?? '';
      }
    }
    return '';
  }

  void _placeBid({
    required BuildContext context,
    required StreamProductModel product,
    required double amount,
  }) {
    final streamId = product.streamId ?? widget.stream.id;
    final streamProductId = product.id;
    if (streamId == null || streamProductId == null) {
      showFloatingMessageError('Невозможно определить товар для ставки');
      return;
    }

    // Check if this is the first bid for this user in this stream session
    final state = context.read<ViewerStreamCubit>().state;
    final currentUserId = state.currentUserId;
    final hasPlacedBid = state.bids.any((bid) => bid.userId == currentUserId);

    if (!hasPlacedBid) {
      // Show first bid bottom sheet
      final embeddedProduct = product.product;
      final productTitle = embeddedProduct?.name ?? '';
      final currentPrice = amount;
      final minimumPrice =
          double.tryParse(product.startingPrice ?? '') ?? amount;

      FirstBidBottomSheet.show(
        context,
        productTitle: productTitle,
        currentPrice: currentPrice,
        minimumPrice: minimumPrice,
        streamId: streamId,
        streamProductId: streamProductId,
      );
    } else {
      // User has already placed a bid in this stream, place bid directly
      context.read<ViewerStreamCubit>().placeBid(
            streamId: streamId,
            streamProductId: streamProductId,
            bidAmount: amount.toStringAsFixed(2),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: BlocListener<ViewerStreamCubit, ViewerStreamState>(
        listenWhen: (previous, current) =>
            previous.isStreamEnded != current.isStreamEnded,
        listener: (context, state) {
          if (state.isStreamEnded && !_hasHandledStreamEnd && mounted) {
            _hasHandledStreamEnd = true;
            // Stream ended - navigate away
            showFloatingMessageSuccess('Stream ended');
            Navigator.of(context).pop();
          }
        },
        child: BlocListener<ViewerStreamCubit, ViewerStreamState>(
          listenWhen: (previous, current) =>
              previous.showBidSuccess != current.showBidSuccess,
          listener: (context, state) {
            if (state.showBidSuccess && state.successfulBidAmount != null) {
              // Only close bottom sheet if it's the first bid (FirstBidBottomSheet is open)
              final isFirstBid = (state.currentBidTotalBids ?? 0) == 0;
              if (isFirstBid && Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              }
              // Show success bottom sheet
              WidgetsBinding.instance.addPostFrameCallback((_) {
                if (mounted) {
                  BidSuccessBottomSheet.show(
                    context,
                    bidAmount: state.successfulBidAmount!,
                  );
                  // Reset success state after showing
                  context.read<ViewerStreamCubit>().hideBidSuccess();
                }
              });
            }
          },
          child: BlocBuilder<ViewerStreamCubit, ViewerStreamState>(
            builder: (context, state) {
              if (state.isInitializing) {
                return const FullScreenLoader();
              }

              final activeProduct = state.activeStreamProduct;
              final hasProduct =
                  activeProduct != null && (activeProduct.isActive ?? true);
              StreamProductModel? currentProduct =
                  hasProduct ? activeProduct : null;
              var productTitle = '';
              var productCategory = '';
              var displayPrice = 0.0;
              var timerText = _formatTime(state.streamSeconds);
              var totalBids = state.currentBidTotalBids ?? 0;
              final winnerData = state.currentWinner;
              final isSelectingWinner = state.isSelectingWinner;
              final hasWinner = winnerData != null;
              final viewerIsWinner =
                  winnerData?.winner?.id == state.currentUserId;

              if (currentProduct != null) {
                final embeddedProduct = currentProduct.product;
                productTitle = embeddedProduct?.name ?? '';
                final categoryId = embeddedProduct?.categoryId;
                productCategory = _resolveCategoryName(categoryId);

                displayPrice =
                    double.tryParse(currentProduct.currentBid ?? '') ??
                        double.tryParse(currentProduct.startingPrice ?? '') ??
                        0.0;

                if (state.currentBidRemainingSeconds != null) {
                  final remaining = state.currentBidRemainingSeconds!;
                  timerText = remaining <= 0
                      ? 'Продано'
                      : _formatTime(remaining >= 0 ? remaining : 0);
                }
                totalBids = state.currentBidTotalBids ?? 0;
              }

              final isInitialBid = hasProduct && totalBids == 0;
              if (isInitialBid) {
                timerText = '--:--';
              } else if (!hasProduct && state.streamSeconds > 0) {
                timerText = _formatTime(state.streamSeconds);
              }
              final formattedPrice = displayPrice == 0
                  ? '—'
                  : (displayPrice % 1 == 0
                      ? '${displayPrice.toInt()}'
                      : displayPrice.toStringAsFixed(2));
              final singleBidLabel = 'Ставка: $formattedPrice ₽';
              final canBid = hasProduct &&
                  !state.isPlacingBid &&
                  currentProduct?.id != null &&
                  displayPrice > 0;
              final canInteractWithBids =
                  canBid && !isSelectingWinner && !hasWinner;

              Widget? postAuctionAction;
              if (hasWinner) {
                postAuctionAction = PostAuctionButton(
                  label: viewerIsWinner ? 'Забрать' : 'Ждём следующий лот',
                  backgroundColor: viewerIsWinner
                      ? AppColors.primaryColor
                      : const Color(0x99000000),
                  textColor: viewerIsWinner ? Colors.black : Colors.white,
                  onPressed: viewerIsWinner
                      ? () => _showWinnerCheckoutSheet(context)
                      : null,
                );
              }

              return WillPopScope(
                onWillPop: () async {
                  final action = await _showExitDialog();
                  if (action == _ViewerExitAction.cancel) return false;
                  await _performExit(action);
                  return false;
                },
                child: Scaffold(
                  backgroundColor: Colors.black,
                  body: GestureDetector(
                    onTap: () {
                      if (!_hasHandledFirstTap) {
                        _hasHandledFirstTap = true;
                        _checkAndShowTerms(context);
                      }
                    },
                    child: Stack(
                      children: [
                        Positioned.fill(child: ViewerVideoView(state: state)),
                        if (isSelectingWinner || hasWinner)
                          WinnerBannerOverlay(
                            isSelecting: isSelectingWinner,
                            winner: winnerData,
                            isViewerWinner: viewerIsWinner,
                            topPadding: MediaQuery.of(context).padding.top,
                          ),
                        Positioned(
                          top: MediaQuery.of(context).padding.top + 20,
                          left: 16,
                          right: 16,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CompanyInfo(
                                streamUserModel: widget.stream.user,
                                isSubscribed: state.isSubscribed,
                                isSubscriptionLoading:
                                    state.isLoadingSubscription ||
                                        state.isTogglingSubscription,
                                cubit: context.read<ViewerStreamCubit>(),
                              ),
                              ViewerCountWidget(
                                count: state.viewerCount,
                                isViewerMode: true,
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          right: 16,
                          bottom: hasProduct ? null : 16,
                          top: hasProduct
                              ? MediaQuery.of(context).size.height * 0.55
                              : null,
                          child: RightSideIcons(
                            onShopTap: () => _openViewerShop(context),
                            onClipTap: (name) async {
                              await _cubit.createClip(name: name);
                              if (context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Клип создан успешно'),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                              }
                            },
                            userTime: state.userTime,
                          ),
                        ),
                        Positioned(
                          left: 16,
                          right: 16,
                          bottom: 16,
                          child: LiveBottomPanel(
                            comments: state.comments,
                            controller: _cubit.controller,
                            onCommentChanged: (t) => context
                                .read<ViewerStreamCubit>()
                                .updateCommentText(t),
                            onSend: () => context
                                .read<ViewerStreamCubit>()
                                .sendCommentToServer(
                                    streamId: widget.stream.id ?? 0),
                            timerText: timerText,
                            productTitle: productTitle,
                            productCategory: productCategory,
                            startPrice: displayPrice,
                            showProductDetails: hasProduct,
                            showBidActions: hasProduct && !isSelectingWinner,
                            showSingleBidButton: isInitialBid &&
                                !isSelectingWinner &&
                                !hasWinner,
                            singleBidButtonLabel: singleBidLabel,
                            isBidLoading: state.isPlacingBid,
                            postAuctionAction: postAuctionAction,
                            onSingleBidPressed:
                                canInteractWithBids && currentProduct != null
                                    ? () => _placeBid(
                                          context: context,
                                          product: currentProduct,
                                          amount: displayPrice,
                                        )
                                    : null,
                            onEditPressed: (!isInitialBid &&
                                    hasProduct &&
                                    currentProduct != null &&
                                    canInteractWithBids)
                                ? () async {
                                    // Get minimum bid increment from stream
                                    final minimumBidIncrementString = widget
                                            .stream.minimumBidIncrement
                                            ?.toString() ??
                                        '1000';
                                    final minimumBidIncrement = double.tryParse(
                                            minimumBidIncrementString) ??
                                        1000.0;

                                    final customPrice =
                                        await showModalBottomSheet<double>(
                                      context: context,
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      builder: (ctx) =>
                                          CustomBidPriceBottomSheet(
                                        minimumPrice: displayPrice,
                                        currentPrice: displayPrice,
                                        step: minimumBidIncrement,
                                        remainingSeconds:
                                            state.currentBidRemainingSeconds,
                                      ),
                                    );

                                    if (!context.mounted ||
                                        customPrice == null) {
                                      return;
                                    }

                                    _placeBid(
                                      context: context,
                                      product: currentProduct,
                                      amount: customPrice,
                                    );
                                  }
                                : null,
                            onBidPressed: (!isInitialBid &&
                                    canInteractWithBids &&
                                    currentProduct != null)
                                ? () => _placeBid(
                                      context: context,
                                      product: currentProduct,
                                      amount: displayPrice,
                                    )
                                : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _checkAndShowTerms(BuildContext context) {
    if (_hasShownTerms) return;

    final appLocal = locator<AppLocal>();
    final hasAcceptedTerms = appLocal.getStreamTermsAccepted();

    if (!hasAcceptedTerms) {
      _hasShownTerms = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.transparent,
            isScrollControlled: true,
            isDismissible: false,
            enableDrag: false,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
            ),
            builder: (ctx) => StreamTermsBottomSheet(
              onButtonTap: () {
                final appLocal = locator<AppLocal>();
                appLocal.saveStreamTermsAccepted(true);
                if (context.mounted) {
                  context.pop();
                }
              },
            ),
          );
        }
      });
    }
  }

  Future<void> _openViewerShop(BuildContext context) async {
    final streamId = widget.stream.id;
    if (streamId == null) return;
    final categories =
        widget.stream.categories?.map((c) => c.id).whereType<int>().toList() ??
            [];

    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => LiveListingsBottomSheet(
        streamId: streamId,
        categoryIds: categories,
        currentStreamProductId: _cubit.state.currentStreamProductId,
        isViewerMode: true,
        showManagementActions: false,
        onBuyNowPressed: (product) {
          _openProductDetails(product);
        },
      ),
    );
  }

  void _openProductDetails(ProductModel product) {
    final cubit = locator<CartProductDetailsCubit>();
    final productId = product.id;
    if (productId != null) {
      context.push(
        AppRoutes.cartProductDetails,
        extra: {
          'productId': productId,
          'cubit': cubit,
        },
      );
    }
  }

  Future<void> _showWinnerCheckoutSheet(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => const WinnerCheckoutSheet(),
    );
  }

  Future<_ViewerExitAction> _showExitDialog() async {
    return await showDialog<_ViewerExitAction>(
          context: context,
          builder: (_) => AlertDialog(
            title: Row(
              children: [
                const Expanded(
                  child: Text('Leave stream?'),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () =>
                      Navigator.of(context).pop(_ViewerExitAction.cancel),
                ),
              ],
            ),
            content: const Text(
              'You will leave the live stream.',
            ),
            actions: [
              TextButton(
                onPressed: () =>
                    Navigator.of(context).pop(_ViewerExitAction.leave),
                child: const Text('Leave'),
              ),
            ],
          ),
        ) ??
        _ViewerExitAction.cancel;
  }

  Future<void> _performExit(_ViewerExitAction action) async {
    final streamId = widget.stream.id ?? 0;

    // Disconnect from room
    await _cubit.state.room?.disconnect();

    if (action == _ViewerExitAction.leave) {
      final ok = await _cubit.leaveStream(streamId: streamId);
      if (ok && mounted) {
        Navigator.of(context).pop();
      }
    }
  }
}
