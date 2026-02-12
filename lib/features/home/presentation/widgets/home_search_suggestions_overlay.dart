part of '../home.dart';

class HomeSearchSuggestionsOverlay extends StatefulWidget {
  final GlobalKey searchFieldKey;
  final LayerLink searchFieldLink;

  // ✅ new
  final ValueChanged<String> onSelected;

  const HomeSearchSuggestionsOverlay({
    super.key,
    required this.searchFieldKey,
    required this.searchFieldLink,
    required this.onSelected,
  });

  @override
  State<HomeSearchSuggestionsOverlay> createState() =>
      _HomeSearchSuggestionsOverlayState();
}

class _HomeSearchSuggestionsOverlayState
    extends State<HomeSearchSuggestionsOverlay> {
  OverlayEntry? _suggestionsEntry;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _updateOverlay());
  }

  void _updateOverlay() {
    if (!mounted) return;

    final cubit = context.read<HomeSearchCubit>();
    final state = cubit.state;

    _suggestionsEntry?.remove();
    _suggestionsEntry = null;

    final shouldShow = state.showSuggestions &&
        state.isSearchFocused &&
        state.suggestions.isNotEmpty;

    if (!shouldShow) return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      final s = cubit.state; // ✅ re-read latest state

      final stillShow =
          s.showSuggestions && s.isSearchFocused && s.suggestions.isNotEmpty;

      if (!stillShow) return;

      final newEntry = _buildOverlay(s.suggestions);
      Overlay.of(context).insert(newEntry);
      _suggestionsEntry = newEntry;
    });
  }

  OverlayEntry _buildOverlay(List<String> suggestions) {
    final renderBox =
        widget.searchFieldKey.currentContext?.findRenderObject() as RenderBox?;
    final size = renderBox?.size ?? Size.zero;

    final cubit = context.read<HomeSearchCubit>();

    return OverlayEntry(
      builder: (overlayContext) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          cubit.hideSuggestions();
        },
        child: Stack(
          children: [
            const Positioned.fill(
              child: ColoredBox(color: Colors.transparent),
            ),
            CompositedTransformFollower(
              link: widget.searchFieldLink,
              offset: Offset(0, size.height + 4),
              showWhenUnlinked: false,
              child: Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.transparent,
                shadowColor: Colors.black.withOpacity(0.2),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {}, // prevent closing when tap inside
                  child: Container(
                    width: size.width,
                    constraints: BoxConstraints(maxHeight: 200.h),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    padding: EdgeInsets.only(
                      top: 4.h,
                      bottom: 4.h,
                      right: 12.w,
                      left: 9.w,
                    ),
                    child: ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: suggestions.length,
                      separatorBuilder: (_, __) => SizedBox(height: 4.h),
                      itemBuilder: (_, index) {
                        final suggestion = suggestions[index];
                        return GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () {
                            cubit.hideSuggestions();
                            // ✅ write into textfield
                            widget.onSelected(suggestion);

                            // ✅ update cubit state + hide suggestions (or trigger submit if you want)
                            cubit.selectSuggestion(suggestion);

                            _suggestionsEntry?.remove();
                            _suggestionsEntry = null;
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.h),
                            child: CustomText(
                              text: suggestion,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.blackDark,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeSearchCubit, HomeSearchState>(
      listenWhen: (prev, curr) =>
          prev.showSuggestions != curr.showSuggestions ||
          prev.suggestions != curr.suggestions ||
          prev.isSearchFocused != curr.isSearchFocused,
      listener: (_, __) => _updateOverlay(),
      child: const SizedBox.shrink(),
    );
  }

  @override
  void dispose() {
    _suggestionsEntry?.remove();
    _suggestionsEntry = null;
    super.dispose();
  }
}
