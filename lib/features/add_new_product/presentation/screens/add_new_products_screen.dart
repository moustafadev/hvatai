part of '../add_new_product.dart';

class AddNewProductsScreen extends StatelessWidget {
  final ProductModel? product;
  final bool isEdit;
  const AddNewProductsScreen({
    super.key,
    this.product,
    this.isEdit = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(
        showBack: true,
        showSearch: false,
        showGift: false,
        showNotification: false,
        height: 50,
      ),
      body: BlocProvider(
        create: (context) {
          final formCubit = locator<ProductFormCubit>();
          if (product != null) {
            formCubit.initProductModel(product!);
          }
          formCubit.getProductCategory();
          return formCubit;
        },
        child: NewProductWidgetBody(
          isEdit: isEdit,
        ),
      ),
    );
  }
}

class NewProductWidgetBody extends StatelessWidget {
  const NewProductWidgetBody({
    super.key,
    this.isEdit = false,
  });

  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductFormCubit, ProductFormState>(
        builder: (context, state) {
      final presets = ["20 мин", "30-40 мин", "60 мин", "90 мин", "120 мин"];
      final selected = state.product.deliveryTime;

      final cubit = context.read<ProductFormCubit>();
      if (state.isLoading) {
        return const Center(child: CustomCircularProgrressIndicator());
      }

      if (state.errorMessage.isNotEmpty) {
        return Center(child: Text(state.errorMessage));
      }

      return AbsorbPointer(
        absorbing: state.isLoadingRequest,
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        12.ph,
                        CustomText(
                          text: 'createProduct'.tr(),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                        ),
                        12.ph,
                        CustomText(
                          text: 'photo'.tr(),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                        ),
                        CustomProductImageWidget(
                          updateImage: (List<String> imageUpdate) {
                            cubit.updateProductImages(imageUpdate);
                          },
                          initialImages: state.product.images,
                          title: '',
                        ),
                        12.ph,
                        CategoryDropdown(),
                        12.ph,
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: AppColors.boxShadowTextField,
                          ),
                          child: CustomTextField(
                            key: ValueKey('title_field'),
                            hintText: 'title'.tr(),
                            initialValue: state.product.productName,
                            hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color:
                                  AppColors.blackColor.withValues(alpha: 0.2),
                            ),
                            onChanged: (value) =>
                                cubit.updateField('name', value),
                          ),
                        ),
                        12.ph,
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: AppColors.boxShadowTextField,
                          ),
                          child: CustomTextField(
                            key: ValueKey('description_field'),
                            hintText: 'description'.tr(),
                            hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color:
                                  AppColors.blackColor.withValues(alpha: 0.2),
                            ),
                            initialValue: state.product.productDescription,
                            onChanged: (value) =>
                                cubit.updateField('description', value),
                            maxLines: 5,
                          ),
                        ),
                        12.ph,
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: AppColors.boxShadowTextField,
                          ),
                          child: CustomTextField(
                            key: ValueKey('price_field'),
                            hintText: 'price'.tr(),
                            hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color:
                                  AppColors.blackColor.withValues(alpha: 0.2),
                            ),
                            keyboardType: TextInputType.number,
                            initialValue: state.product.variants.isNotEmpty &&
                                    state.product.variants.first.price != null
                                ? state.product.variants.first.price.toString()
                                : '',
                            onChanged: (value) =>
                                cubit.updateField('startingBid', value),
                          ),
                        ),
                        12.ph,
                        QantityWidget(),
                        12.ph,
                      ],
                    ),
                  ),
                  DeliveryProductSection(presets: presets, selected: selected),
                  12.ph,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CustomSwitchWidget(
                      title: 'pickupFree'.tr(),
                      value: state.product.selfPickup == true,
                      onChanged: (val) => cubit.togglePickupFree(),
                    ),
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  30.ph,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CustomGradientButton(
                      text: (isEdit || state.product.id != null)
                          ? 'save'.tr()
                          : 'create'.tr(),
                      isDisabled: cubit.isDisabled(),
                      isLoading: state.isLoadingRequest,
                      onPressed: () async {
                        if (isEdit || state.product.id != null) {
                          await cubit.updateProduct(context);
                        } else {
                          await cubit.addProduct(context);
                        }
                      },
                    ),
                  ),
                  35.ph,
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
