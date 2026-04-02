part of '../search.dart';

class TopBarSearchWidget extends StatefulWidget {
  const TopBarSearchWidget({
    super.key,
    required this.searchFieldLink,
    required this.searchFieldKey,
    this.onChanged,
    this.onFocus,
    this.onSubmitted,
    this.initialValue,
  });

  final LayerLink searchFieldLink;
  final GlobalKey searchFieldKey;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onFocus;
  final ValueChanged<String>? onSubmitted;
  final String? initialValue;

  @override
  State<TopBarSearchWidget> createState() => _TopBarSearchWidgetState();
}

class _TopBarSearchWidgetState extends State<TopBarSearchWidget> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue ?? '');
  }

  @override
  void didUpdateWidget(TopBarSearchWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialValue != widget.initialValue &&
        _controller.text != widget.initialValue) {
      _controller.text = widget.initialValue ?? '';
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchCubit = context.read<SearchCubit>();

    return Row(
      //crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (searchCubit.state.selectedCategoryId != null ||
            _controller.text.isNotEmpty)
          GestureDetector(
              onTap: () {
                // Clear selected category if one is selected, otherwise pop
                searchCubit.clearSelectedCategory();
                setState(() {
                  _controller.clear();
                });
              },
              child: Icon(Icons.arrow_back_ios)),
        2.ph,
        Expanded(
          child: CompositedTransformTarget(
            link: widget.searchFieldLink,
            child: SizedBox(
              key: widget.searchFieldKey,
              height: 40,
              child: CustomTextField(
                controller: _controller,
                fillColor: AppColors.white,
                height: 40,
                borderRadius: BorderRadius.circular(10.r),
                onChanged: widget.onChanged,
                onTap: widget.onFocus,
                onSubmitted: widget.onSubmitted,
                textInputAction: TextInputAction.search,
                hintText: 'find'.tr(),
                prefixIcon: Image.asset(
                  Assets.assetsIconsSearch,
                  color: AppColors.blackDark,
                  height: 22.h,
                  width: 22.w,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
