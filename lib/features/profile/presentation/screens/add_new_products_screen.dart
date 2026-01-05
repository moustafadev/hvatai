part of '../profile.dart';

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
      backgroundColor: AppColors.lightGreyBackground,
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
      final cubit = context.read<ProductFormCubit>();
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
                CategoryDropdown(),
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
                // CustomText(
                //   text: 'delivery'.tr(),
                //   fontSize: 20.sp,
                //   fontWeight: FontWeight.w800,
                // ),
                // 12.ph,
                CustomSwitchWidget(
                  title: 'pickupFree'.tr(),
                  value: state.product.selfPickup == true,
                  onChanged: (val) => cubit.togglePickupFree(),
                ),
                12.ph,
                // CustomSwitchWidget(
                //   title: 'Оплата продавцом',
                //   value: (state.product.deliveryDiscount ?? 0) > 0,
                //   onChanged: (val) {
                //     cubit.updateField(
                //       'deliveryDiscount',
                //       val ? '100' : '0',
                //     );
                //   },
                // ),
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
                    onPressed: () async {
                      if (isEdit || state.product.id != null) {
                        await cubit.updateProduct(context);
                      } else {
                        await cubit.addProduct(context);
                        if (context.mounted) {
                          context.pop(true);
                        }
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
