part of '../search.dart';

class _SearchSuggestionsOverlay extends StatefulWidget {
  final GlobalKey searchFieldKey;
  final LayerLink searchFieldLink;

  const _SearchSuggestionsOverlay({
    required this.searchFieldKey,
    required this.searchFieldLink,
  });

  @override
  State<_SearchSuggestionsOverlay> createState() =>
      _SearchSuggestionsOverlayState();
}

class _SearchSuggestionsOverlayState extends State<_SearchSuggestionsOverlay> {
  OverlayEntry? _suggestionsEntry;

  @override
  void initState() {
    super.initState();
    // Listen to state changes to update overlay
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _updateOverlay();
    });
  }

  void _updateOverlay() {
    if (!mounted) return;

    final cubit = context.read<SearchCubit>();
    final state = cubit.state;

    _suggestionsEntry?.remove();
    _suggestionsEntry = null;

    if (state.showSuggestions &&
        state.isSearchFocused &&
        state.suggestions.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && state.showSuggestions && state.suggestions.isNotEmpty) {
          final newEntry = _buildOverlay(state.suggestions);
          Overlay.of(context).insert(newEntry);
          _suggestionsEntry = newEntry;
        }
      });
    }
  }

  OverlayEntry _buildOverlay(List<String> suggestions) {
    final renderBox =
        widget.searchFieldKey.currentContext?.findRenderObject() as RenderBox?;
    final size = renderBox?.size ?? Size.zero;
    // Capture the cubit from the original context that has access to the provider
    final cubit = context.read<SearchCubit>();

    return OverlayEntry(
      builder: (overlayContext) => GestureDetector(
        onTap: () {
          // Close suggestions when tapping outside
          cubit.hideSuggestions();
        },
        behavior: HitTestBehavior.translucent,
        child: Stack(
          children: [
            Positioned.fill(
              child: Container(color: Colors.transparent),
            ),
            CompositedTransformFollower(
              link: widget.searchFieldLink,
              offset: Offset(0, size.height + 4),
              child: Material(
                elevation: 8,
                borderRadius: BorderRadius.circular(10.r),
                color: Colors.transparent,
                shadowColor: Colors.black.withOpacity(0.2),
                child: GestureDetector(
                  onTap: () {}, // Prevent tap from propagating
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    width: size.width,
                    constraints: BoxConstraints(
                      maxHeight: 200.h,
                    ),
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
                      itemCount: suggestions.length,
                      padding: EdgeInsets.zero,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 4.h),
                      itemBuilder: (context, index) {
                        final suggestion = suggestions[index];
                        return GestureDetector(
                          onTap: () {
                            cubit.selectSuggestion(suggestion);
                            _suggestionsEntry?.remove();
                            _suggestionsEntry = null;
                          },
                          behavior: HitTestBehavior.opaque,
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
    return BlocListener<SearchCubit, SearchState>(
      listenWhen: (prev, curr) =>
          prev.showSuggestions != curr.showSuggestions ||
          prev.suggestions != curr.suggestions ||
          prev.isSearchFocused != curr.isSearchFocused,
      listener: (context, state) {
        _updateOverlay();
      },
      child: const SizedBox.shrink(),
    );
  }

  @override
  void dispose() {
    _suggestionsEntry?.remove();
    super.dispose();
  }
}
