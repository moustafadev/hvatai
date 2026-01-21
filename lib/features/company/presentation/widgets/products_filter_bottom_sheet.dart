part of '../company.dart';

enum ProductSortOption {
  recentlyAdded,
  cheapestFirst,
  mostExpensiveFirst,
}

class ProductsFilterBottomSheet extends StatefulWidget {
  const ProductsFilterBottomSheet({
    super.key,
    this.initialSortOption,
    this.onApply,
  });

  final ProductSortOption? initialSortOption;
  final ValueChanged<ProductSortOption?>? onApply;

  static void show(
    BuildContext context, {
    ProductSortOption? initialSortOption,
    ValueChanged<ProductSortOption?>? onApply,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      builder: (ctx) => ProductsFilterBottomSheet(
        initialSortOption: initialSortOption,
        onApply: onApply,
      ),
    );
  }

  @override
  State<ProductsFilterBottomSheet> createState() =>
      _ProductsFilterBottomSheetState();
}

class _ProductsFilterBottomSheetState extends State<ProductsFilterBottomSheet> {
  ProductSortOption? _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption = widget.initialSortOption;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
      ),
      padding: EdgeInsets.only(
        left: 16.w,
        right: 16.w,
        top: 8.h,
        bottom: 20.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Handle bar
          Center(
            child: Container(
              width: 44.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: AppColors.greyButton,
                borderRadius: BorderRadius.circular(100.r),
              ),
            ),
          ),
          24.ph,
          _FilterOption(
            title: 'recentlyAdded'.tr(),
            isSelected: _selectedOption == ProductSortOption.recentlyAdded,
            onTap: () {
              setState(() {
                _selectedOption = ProductSortOption.recentlyAdded;
              });
            },
          ),
          16.ph,
          _FilterOption(
            title: 'cheapestFirst'.tr(),
            isSelected: _selectedOption == ProductSortOption.cheapestFirst,
            onTap: () {
              setState(() {
                _selectedOption = ProductSortOption.cheapestFirst;
              });
            },
          ),
          16.ph,
          _FilterOption(
            title: 'mostExpensiveFirst'.tr(),
            isSelected: _selectedOption == ProductSortOption.mostExpensiveFirst,
            onTap: () {
              setState(() {
                _selectedOption = ProductSortOption.mostExpensiveFirst;
              });
            },
          ),
          32.ph,
          CustomButton(
            title: 'apply'.tr(),
            color: AppColors.primaryColor,
            textColor: AppColors.white,
            fontSize: 16,
            fontWeight: FontWeight.w800,
            height: 54,
            radius: 10.r,
            onPressed: () {
              widget.onApply?.call(_selectedOption);
              context.pop();
            },
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }
}

class _FilterOption extends StatelessWidget {
  const _FilterOption({
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Row(
        children: [
          Container(
            width: 24.w,
            height: 24.h,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(5.r),
              border: Border.all(
                color: isSelected
                    ? AppColors.primaryColor
                    : AppColors.greyTransparent,
                width: 2,
              ),
            ),
            child: isSelected
                ? Icon(
                    Icons.check,
                    color: AppColors.primaryColor,
                    size: 16.sp,
                  )
                : null,
          ),
          12.pw,
          Expanded(
            child: CustomText(
              text: title,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.blackDark,
            ),
          ),
        ],
      ),
    );
  }
}
