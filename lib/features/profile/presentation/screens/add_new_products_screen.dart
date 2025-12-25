part of '../profile.dart';

class AddNewProductsScreen extends StatelessWidget {
  final MyGoodsCubit? cubit;
  final List<int>? allowedCategoryIds;
  final bool isEdit;
  const AddNewProductsScreen({
    super.key,
    this.cubit,
    this.allowedCategoryIds,
    this.isEdit = false,
  });

  @override
  Widget build(BuildContext context) {
    final body = NewProductWidgetBody(
      allowedCategoryIds: allowedCategoryIds,
      isEdit: isEdit,
    );

    if (cubit != null) {
      cubit!.getProductCategory();
      return Scaffold(
        backgroundColor: AppColors.lightGreyBackground,
        appBar: CustomAppBar(
          showBack: true,
          showSearch: false,
          showGift: false,
          showNotification: false,
          height: 50,
        ),
        body: BlocProvider.value(
          value: cubit!,
          child: body,
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      appBar: CustomAppBar(
        showBack: true,
        showSearch: false,
        showGift: false,
        showNotification: false,
        height: 50,
      ),
      body: BlocProvider(
        create: (context) => locator<MyGoodsCubit>()..getProductCategory(),
        child: body,
      ),
    );
  }
}

class NewProductWidgetBody extends StatelessWidget {
  const NewProductWidgetBody({
    super.key,
    this.allowedCategoryIds,
    this.isEdit = false,
  });

  final List<int>? allowedCategoryIds;
  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyGoodsCubit, MyGoodsState>(builder: (context, state) {
      final cubit = context.read<MyGoodsCubit>();
      if (state.isLoading) {
        return const Center(
            child: CircularProgressIndicator(
          color: AppColors.grey,
        ));
      }

      if (state.errorMessage.isNotEmpty) {
        return Center(child: Text(state.errorMessage));
      }

      return CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                12.ph,
                CustomText(
                  text: 'createProduct'.tr(),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
                12.ph,
                CustomTextField(
                  key: ValueKey('title_field'),
                  hintText: 'title'.tr(),
                  initialValue: state.product.productName,
                  onChanged: (value) => cubit.updateField('name', value),
                ),
                12.ph,
                CustomTextField(
                  key: ValueKey('description_field'),
                  hintText: 'description'.tr(),
                  initialValue: state.product.productDescription,
                  onChanged: (value) => cubit.updateField('description', value),
                  maxLines: 5,
                ),
                12.ph,
                CategoryDropdown(
                  allowedCategoryIds: allowedCategoryIds,
                ),
                12.ph,
                CustomTextField(
                  key: ValueKey('price_field'),
                  hintText: 'price'.tr(),
                  initialValue: state.product.variants.isNotEmpty &&
                          state.product.variants.first.price != null
                      ? state.product.variants.first.price.toString()
                      : '',
                  onChanged: (value) => cubit.updateField('startingBid', value),
                ),
                24.ph,
                CustomText(
                  text: 'photo'.tr(),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
                8.ph,
                CustomText(
                  text:
                      'Добавьте миниатюру и предварительный просмотр видео, чтобы максимально раскрыть то, чего нет в вашем шоу.',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.graniteGray,
                ),
                CustomProductImageWidget(
                  updateImage: (List<String> imageUpdate) {
                    cubit.updateProductImages(imageUpdate);
                  },
                  initialImages: state.product.images,
                  title: '',
                ),
                24.ph,
                CustomText(
                  text: 'delivery'.tr(),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
                12.ph,
                AddDeliveryOptionDropdown(),
                12.ph,
                CustomSwitchWidget(
                  title: 'pickupFree'.tr(),
                  value: state.product.selfPickup == true,
                  onChanged: (val) => cubit.togglePickupFree(),
                ),
                12.ph,
                CustomSwitchWidget(
                  title: 'Оплата продавцом',
                  value: (state.product.deliveryDiscount ?? 0) > 0,
                  onChanged: (val) {
                    cubit.updateField(
                      'deliveryDiscount',
                      val ? '100' : '0',
                    );
                  },
                ),
                30.ph,
              ]),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: CustomGradientButton(
                    text: (isEdit || state.product.id != null)
                        ? 'save'.tr()
                        : 'create'.tr(),
                    isDisabled: cubit.isDisabled(),
                    isLoading: state.isLoading,
                    onPressed: () {
                      if (isEdit || state.product.id != null) {
                        cubit.updateProduct(context);
                      } else {
                        cubit.addProduct(context);
                      }
                    },
                  ),
                ),
                35.ph,
              ],
            ),
          ),
        ],
      );
    });
  }
}
