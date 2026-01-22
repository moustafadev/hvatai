part of '../cart.dart';

class CartProductDetailsScreen extends StatelessWidget {
  const CartProductDetailsScreen({
    super.key,
    required this.product,
  });
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CartProductDetailsCubit, CartProductDetailsState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state.isLoading) {
          return Scaffold(
              body: const Center(child: CircularProgressIndicator()));
        }
        if (state.errorMessage.isNotEmpty) {
          return Scaffold(body: Center(child: Text(state.errorMessage)));
        }
        final cubit = context.read<CartProductDetailsCubit>();

        final variant = product.variants.isNotEmpty
            ? product.variants.first
            : VariantModel();

        final images = product.images;

        final ownerProducts = state.ownerProducts;

        return Scaffold(
          floatingActionButton: const CartFloatingActionButton(),
          backgroundColor: AppColors.lightGreyBackground,
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
                      isFavorited: state.isFavourites ?? product.isFavorited,
                      onFavoriteTap: () {
                        cubit.addFavProduct(product.id!);
                        cubit.toggleFav(product.isFavorited);
                      },
                      onShareTap: () {
                        // TODO: Implement share functionality
                      },
                      onParticipateTap: () {
                        cubit.addProductToCart(context, product);
                      },
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
                            onTap: () => context.pop(),
                          ),
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
                  product: product,
                  variant: variant,
                  ownerProducts: ownerProducts,
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
