part of '../cart.dart';

class CartProductDetailsScreen extends StatelessWidget {
  const CartProductDetailsScreen({
    super.key,
    required this.productId,
  });
  final int productId;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartProductDetailsCubit, CartProductDetailsState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state.isLoading) {
          return Scaffold(
              body: const Center(child: CustomCircularProgressIndicator()));
        }

        // Safety check: ensure product is loaded
        if (state.product.id == null) {
          return Scaffold(
            body: const Center(child: CustomCircularProgressIndicator()),
          );
        }

        final cubit = context.read<CartProductDetailsCubit>();

        // Use state.product which is fetched from API
        final currentProduct = state.product;

        final variant = currentProduct.variants.isNotEmpty
            ? currentProduct.variants.first
            : VariantModel();

        final images = currentProduct.images;

        final ownerProducts = state.ownerProducts;
        final isInLiveAuction = currentProduct.isInLiveAuction;

        return Scaffold(
          floatingActionButton: const CartFloatingActionButton(),
          backgroundColor: AppColors.background,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ProductDetailsImageCarousel(
                      images: images,
                      pageController: state.pageController ?? PageController(),
                      currentImageIndex: state.currentImageIndex,
                      onPageChanged: (index) {
                        cubit.changeImageIndex(index);
                      },
                      isFavorited: currentProduct.isFavorited,
                      onFavoriteTap: () {
                        cubit.addFavProduct(currentProduct.id!);
                        cubit.toggleFav(currentProduct.isFavorited);
                      },
                      onShareTap: () {},
                      onParticipateTap: () => cubit.joinStream(context),
                      isInLiveAuction: isInLiveAuction,
                      isJoiningStream: state.isJoiningStream,
                    ),
                    Positioned(
                      top: MediaQuery.of(context).padding.top + 8,
                      left: 16,
                      right: 16,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _CircleButton(
                              icon: Icons.arrow_back_ios_new_rounded,
                              onTap: () {
                                context.pop(state.isPrevFavourites !=
                                    state.product.isFavorited);
                              }),
                          _CircleButton(
                            icon: Icons.close,
                            onTap: () => context.pop(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                12.ph,
                ProductDetailsContent(
                    product: currentProduct,
                    variant: variant,
                    ownerProducts: ownerProducts,
                    isFavorited:
                        state.isFavourites ?? currentProduct.isFavorited,
                    onFavoriteTap: () {
                      cubit.addFavProduct(currentProduct.id!);
                      cubit.toggleFav(currentProduct.isFavorited);
                    },
                    onParticipateTap: isInLiveAuction
                        ? () => cubit.joinStream(context)
                        : () {}),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _CircleButton extends StatelessWidget {
  const _CircleButton({
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
        icon,
        size: 28,
      ),
    );
  }
}
