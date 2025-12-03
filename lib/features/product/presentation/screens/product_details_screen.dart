part of '../product.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({
    super.key,
    required this.product,
    required this.products,
  });
  final ProductModel product;
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductDetailsCubit, ProductDetailsState>(
      listener: (context, state) {},
      builder: (context, state) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          context.read<ProductDetailsCubit>().resetImageIndex();
        });
        final cubit = context.read<ProductDetailsCubit>();

        final variant = product.variants.isNotEmpty
            ? product.variants.first
            : VariantModel();

        final deliveryType = product.deliveryType ?? '';
        final deliveryText = deliveryType.isNotEmpty
            ? '${deliveryType[0].toUpperCase()}${deliveryType.substring(1)}'
            : 'notAvailable'.tr();

        final images = product.images;

        final ownerProducts = products
            .where(
                (p) => p.owner?.id == product.owner?.id && p.id != product.id)
            .toList();

        return Scaffold(
          floatingActionButton: ProductDetailsFloatingButton(
            totalCartPrice: state.totalCartPrice,
            onPressed: () async {
              final result =
                  await context.push<double>(AppRoutes.allProductCart);

              if (result != null) {
                print('Received result: $result');
                cubit.updateTotalPrice(result);
              }
            },
          ),
          backgroundColor: AppColors.lightGreyBackground,
          appBar: AppBar(
            backgroundColor: AppColors.lightGreyBackground,
            elevation: 0,
            leading: IconButton(
              icon:
                  const Icon(Icons.arrow_back_ios, color: AppColors.blackDark),
              onPressed: () => context.pop(),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.close, color: AppColors.blackDark),
                onPressed: () => context.pop(),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductDetailsImageCarousel(
                  images: images,
                  pageController: state.pageController ?? PageController(),
                  currentImageIndex: state.currentImageIndex,
                  onPageChanged: (index) {
                    cubit.changeImageIndex(index);
                  },
                ),
                12.ph,
                ProductDetailsContent(
                  product: product,
                  variant: variant,
                  deliveryText: deliveryText,
                  ownerProducts: ownerProducts,
                  products: products,
                  isFavorited: state.isFavourites ?? product.isFavorited,
                  onFavoriteTap: () {
                    cubit.addFavProduct(product.id!);
                    cubit.toggleFav(product.isFavorited);
                  },
                  onParticipateTap: () {
                    cubit.addProductToCart(context, product);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
