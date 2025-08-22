// part of '../search.dart';

// class AllProductsDetailsScreen extends StatelessWidget {
//   const AllProductsDetailsScreen({
//     super.key,
//     required this.product,
//     // required this.cart
//   });
//   final ProductModel product;
//   //final List<CartModel> cart;

//   @override
//   Widget build(BuildContext context) {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       context.read<SearchCubit>().resetImageIndex();
//     });
//     return BlocConsumer<SearchCubit, SearchState>(
//         listener: (context, state) {},
//         builder: (context, state) {
//           final cubit = context.read<SearchCubit>();

//           final totalPrice = state.cartResponse.total;

//           final variant = product.variants.isNotEmpty
//               ? product.variants.first
//               : VariantModel();

//           final deliveryType = product.deliveryType ?? '';
//           final deliveryText = deliveryType.isNotEmpty
//               ? '${deliveryType[0].toUpperCase()}${deliveryType.substring(1)}'
//               : 'notAvailable'.tr();

//           final images = product.images ?? [];

//           final ownerProducts = state.products
//               .where(
//                   (p) => p.owner?.id == product.owner?.id && p.id != product.id)
//               .toList();

//           return Scaffold(
//             floatingActionButton: state.carts.isNotEmpty
//                 ? Container(
//                     decoration: BoxDecoration(
//                       color: AppColors.primaryPink,
//                       borderRadius: BorderRadius.circular(10.r),
//                     ),
//                     child: FloatingActionButton.extended(
//                         backgroundColor: AppColors.primaryPink,
//                         onPressed: () async {
//                           final result = await context.push(
//                             AppRoutes.allProductCart,
//                           ) as dynamic;

//                           if (result != null) {
//                             print('sddfsdfdsfsdf$result');
//                             cubit.updateTotalPrice(result);
//                           }
//                         },
//                         icon: Image.asset(Assets.assetsIconsStore,
//                             height: 22.h, width: 22.w),
//                         label: CustomText(
//                           text: totalPrice.toString(),
//                           fontSize: 20.sp,
//                           fontWeight: FontWeight.w800,
//                         )),
//                   )
//                 : null,
//             backgroundColor: AppColors.lightGreyBackground,
//             appBar: AppBar(
//               backgroundColor: AppColors.lightGreyBackground,
//               elevation: 0,
//               leading: IconButton(
//                 icon: const Icon(Icons.arrow_back_ios,
//                     color: AppColors.blackDark),
//                 onPressed: () => context.pop(),
//               ),
//               actions: [
//                 IconButton(
//                   icon: const Icon(Icons.close, color: AppColors.blackDark),
//                   onPressed: () => context.pop(),
//                 ),
//               ],
//             ),
//             body: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: 300.h,
//                     child: PageView.builder(
//                       controller: state.pageController,
//                       itemCount: images.isEmpty ? 1 : images.length,
//                       onPageChanged: (index) {
//                         cubit.changeImageIndex(index);
//                       },
//                       itemBuilder: (context, index) {
//                         return images.isEmpty
//                             ? _buildPlaceholder()
//                             : CustomImage(
//                                 height: 300.h,
//                                 imageSource: images[index],
//                                 fit: BoxFit.cover,
//                               );
//                       },
//                     ),
//                   ),
//                   8.ph,
//                   Visibility(
//                     visible: images.isNotEmpty,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: List.generate(
//                         images.length,
//                         (index) => _buildDot(index == state.currentImageIndex),
//                       ),
//                     ),
//                   ),
//                   12.ph,
//                   Container(
//                     padding: const EdgeInsets.symmetric(horizontal: 16),
//                     color: AppColors.lightGreyBackground,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Flexible(
//                               child: CustomText(
//                                 text: product.productName ?? '',
//                                 fontSize: 20.sp,
//                                 fontWeight: FontWeight.w800,
//                               ),
//                             ),
//                             if (variant.price != null)
//                               Container(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 12, vertical: 2),
//                                 decoration: BoxDecoration(
//                                   color: AppColors.primaryColor,
//                                   borderRadius: BorderRadius.circular(10.r),
//                                 ),
//                                 child: CustomText(
//                                   text: variant.price! % 1 == 0
//                                       ? "${variant.price!.toInt()} ₽"
//                                       : "${variant.price} ₽",
//                                   fontSize: 20.sp,
//                                   fontWeight: FontWeight.w800,
//                                   color: AppColors.white,
//                                 ),
//                               ),
//                           ],
//                         ),
//                         8.ph,
//                         if (product.category?.name != null)
//                           Row(
//                             children: [
//                               CustomText(
//                                 text: '${product.category?.name} ',
//                                 color: AppColors.blackLite,
//                                 fontSize: 14.sp,
//                               ),
//                             ],
//                           ),
//                         8.ph,
//                         Row(
//                           children: [
//                             Container(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 8, vertical: 3),
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(10.r),
//                                   color: AppColors.gray),
//                               child: CustomText(
//                                 text: '${variant.stock} ${'pcs'.tr()}',
//                                 fontSize: 10.sp,
//                                 fontWeight: FontWeight.w600,
//                                 color: AppColors.blackLite,
//                               ),
//                             ),
//                             8.pw,
//                             if (product.saleType.isNotEmpty)
//                               Container(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 8, vertical: 3),
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10.r),
//                                       color: AppColors.gray),
//                                   child: CustomText(
//                                     text:
//                                         "${product.saleType[0].toUpperCase()}${product.saleType.substring(1)}",
//                                     fontSize: 10.sp,
//                                     fontWeight: FontWeight.w600,
//                                     color: AppColors.blackLite,
//                                   )),
//                           ],
//                         ),
//                         8.ph,
//                         Row(
//                           children: [
//                             GestureDetector(
//                               onTap: () {
//                                 cubit.addFavProduct(context);
//                               },
//                               child: CircleAvatar(
//                                 backgroundColor: AppColors.gray,
//                                 radius: 20.r,
//                                 child: state.product.isFavorited
//                                     ? Image.asset(
//                                         Assets.assetsIconsFavsav,
//                                         color: AppColors.primaryColor,
//                                         height: 20.h,
//                                         width: 20.w,
//                                       )
//                                     : Image.asset(
//                                         Assets.assetsIconsSave,
//                                         height: 20.h,
//                                         width: 18.w,
//                                       ),
//                               ),
//                             ),
//                             12.pw,
//                             CircleAvatar(
//                                 backgroundColor: AppColors.gray,
//                                 radius: 20.r,
//                                 child: Image.asset(
//                                   Assets.assetsIconsShare,
//                                   height: 20.h,
//                                   width: 18.w,
//                                 )),
//                             12.pw,
//                             Expanded(
//                               child: GestureDetector(
//                                 onTap: () {
//                                   cubit.addProductToCart(
//                                       context, product); // أضف product هنا
//                                 },
//                                 child: Container(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 10, vertical: 8),
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(10.r),
//                                       color: AppColors.primaryPink),
//                                   child: FittedBox(
//                                     child: CustomText(
//                                       text: 'participate'.tr(),
//                                       fontSize: 16.sp,
//                                       fontWeight: FontWeight.w800,
//                                       color: AppColors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         8.ph,
//                         if (product.productDescription?.isNotEmpty ?? false)
//                           CustomText(
//                             text: product.productDescription ?? '',
//                             fontSize: 14.sp,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         17.ph,
//                         Container(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 12, vertical: 9),
//                           decoration: BoxDecoration(
//                             color: AppColors.gray,
//                             borderRadius: BorderRadius.circular(6.r),
//                           ),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               CustomText(
//                                   text: 'delivery'.tr(),
//                                   color: AppColors.blackDark,
//                                   fontSize: 14.sp,
//                                   fontWeight: FontWeight.w700),
//                               CustomText(
//                                   text: deliveryText,
//                                   color: AppColors.blackDark,
//                                   fontSize: 14.sp,
//                                   fontWeight: FontWeight.w700),
//                             ],
//                           ),
//                         ),
//                         9.ph,
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             CustomText(
//                                 text: 'pickup'.tr(),
//                                 color: AppColors.blackDark,
//                                 fontSize: 14.sp,
//                                 fontWeight: FontWeight.w700),
//                             CustomText(
//                                 text: product.selfPickup
//                                     ? 'free'.tr()
//                                     : 'paid'.tr(),
//                                 color: AppColors.blackDark,
//                                 fontSize: 14.sp,
//                                 fontWeight: FontWeight.w700),
//                           ],
//                         ),
//                         12.ph,
//                         Row(
//                           children: [
//                             CustomText(
//                               text: 'seller'.tr(),
//                               color: AppColors.blackDark,
//                               fontSize: 20.sp,
//                               fontWeight: FontWeight.w800,
//                             ),
//                             Spacer(),
//                             if (product.owner?.image != null &&
//                                 product.owner!.image!.isNotEmpty)
//                               ClipRRect(
//                                 borderRadius: BorderRadius.circular(100.r),
//                                 child: CustomImage(
//                                   height: 20.h,
//                                   width: 20.h,
//                                   imageSource: product.owner!.image!,
//                                   fit: BoxFit.cover,
//                                 ),
//                               )
//                             else
//                               Icon(
//                                 Icons.person_2_outlined,
//                                 size: 20.h,
//                                 color: AppColors.graniteGray,
//                               ),
//                             6.pw,
//                             CustomText(
//                               text: product.owner?.name ?? '',
//                               color: AppColors.primaryPink,
//                               fontSize: 14.sp,
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ],
//                         ),
//                         12.ph,
//                         if (ownerProducts.isNotEmpty) ...[
//                           CustomText(
//                             text: 'otherProducts'.tr(),
//                             fontSize: 16.sp,
//                             fontWeight: FontWeight.w800,
//                           ),
//                           12.ph,
//                           ListView.builder(
//                             padding: EdgeInsets.zero,
//                             shrinkWrap: true,
//                             physics: const NeverScrollableScrollPhysics(),
//                             itemCount: ownerProducts.length,
//                             itemBuilder: (context, index) {
//                               final ownerproduct = ownerProducts[index];
//                               return CustomProductCard(
//                                 product: ownerproduct,
//                                 // cartResponse: cart,
//                                 isProductCompany: true,
//                                 products: state.products,
//                                 selectedCategoryIndex: index,
//                               );
//                             },
//                           ),
//                         ],
//                         30.ph
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         });
//   }

//   Widget _buildPlaceholder() {
//     return Container(
//       height: 300.h,
//       color: AppColors.gray,
//       child: Center(
//         child: Icon(
//           Icons.image,
//           size: 100.sp,
//           color: AppColors.lightGray,
//         ),
//       ),
//     );
//   }

//   Widget _buildDot(bool isActive) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 4),
//       width: isActive ? 12.w : 8.w,
//       height: 8.h,
//       decoration: BoxDecoration(
//         color: isActive ? AppColors.blackDark : AppColors.greyBorder,
//         borderRadius: BorderRadius.circular(4),
//       ),
//     );
//   }
// }
