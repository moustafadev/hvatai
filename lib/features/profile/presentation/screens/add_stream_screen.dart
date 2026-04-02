part of '../profile.dart';

class AddStreamScreen extends StatelessWidget {
  const AddStreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      appBar: const CustomAppBar(
        showBack: true,
        showSearch: false,
        showGift: false,
        showNotification: false,
      ),
      body: BlocProvider(
        create: (_) => locator<AddStreamCubit>()..loadCategories(),
        child: BlocBuilder<AddStreamCubit, AddStreamState>(
          builder: (context, state) {
            final cubit = context.read<AddStreamCubit>();
            final model = state.createStreamModel;

            if (state.isProductsLoading || state.isCategoriesLoading) {
              return const Center(
                  child: CircularProgressIndicator(
                color: AppColors.grey,
              ));
            }

            return CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      12.ph,
                      CustomText(
                        text: 'createStream'.tr(),
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                      12.ph,
                      CustomTextField(
                        hintText: 'title'.tr(),
                        onChanged: cubit.updateTitle,
                        controller: cubit.textEditingController,
                      ),
                      12.ph,

                      // description
                      CustomTextField(
                        hintText: 'description'.tr(),
                        isRequired: false,
                        maxLines: 5,
                        onChanged: cubit.updateDescription,
                        textInputAction: TextInputAction.done,
                      ),
                      12.ph,

                      // scheduled_at
                      CustomDateField(
                        label: 'date'.tr(),
                        onChanged: (val) {
                          // val is already an ISO UTC string like "2025-08-11T21:30:00Z"
                          final parsed = DateTime.tryParse(val);
                          if (parsed != null) {
                            cubit.updateScheduledAt(parsed);
                          }
                        },
                      ),
                      12.ph,

                      // is_recording_enabled
                      CustomSwitchWidget(
                        title: 'recording enabled'.tr(),
                        value: model.isRecordingEnabled,
                        onChanged: (_) => cubit.toggleIsRecordingEnabled(),
                      ),

                      // is_public
                      CustomSwitchWidget(
                        title: 'public'.tr(),
                        value: model.isPublic,
                        onChanged: (_) => cubit.toggleIsPublic(),
                      ),

                      // enable_comments
                      CustomSwitchWidget(
                        title: 'enable comments'.tr(),
                        value: model.enableComments,
                        onChanged: (_) => cubit.toggleEnableComments(),
                      ),

                      // enable_bidding
                      CustomSwitchWidget(
                        title: 'enable bidding'.tr(),
                        value: model.enableBidding,
                        onChanged: (_) => cubit.toggleEnableBidding(),
                      ),

                      // minimum_bid_increment (conditional)
                      if (model.enableBidding) ...[
                        12.ph,
                        CustomTextField(
                          hintText: 'minimum bid increment'.tr(),
                          keyboardType: TextInputType.number,
                          onChanged: (val) {
                            final parsed = double.tryParse(val);
                            if (parsed != null) {
                              cubit.updateMinimumBidIncrement(parsed);
                            }
                          },
                        ),
                        12.ph
                      ],

                      // auto_delete_after_end
                      CustomSwitchWidget(
                        title: 'auto_delete_after_end'.tr(),
                        value: model.autoDeleteAfterEnd,
                        onChanged: (_) => cubit.toggleAutoDeleteAfterEnd(),
                      ),

                      // auto_delete_hours (conditional)
                      if (model.autoDeleteAfterEnd) ...[
                        12.ph,
                        CustomTextField(
                          hintText: 'auto delete hours'.tr(),
                          keyboardType: TextInputType.number,
                          onChanged: (val) {
                            final parsed = int.tryParse(val);
                            if (parsed != null) {
                              cubit.updateAutoDeleteHours(parsed);
                            }
                          },
                        ),
                        12.ph
                      ],

                      // save_recording
                      CustomSwitchWidget(
                        title: 'save recording'.tr(),
                        value: model.saveRecording,
                        onChanged: (_) => cubit.toggleSaveRecording(),
                      ),

                      24.ph,
                      CustomText(
                        text: "bid duration".tr(),
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                      12.ph,
                      CustomDropdown(
                        hintText: 'bid duration seconds'.tr(),
                        value: model.bidDurationSeconds.toString(),
                        items: List.generate(40, (index) {
                          final seconds = index + 1;
                          return DropdownMenuItem<String>(
                            value: seconds.toString(),
                            child: Text('${seconds}s'),
                          );
                        }),
                        onChanged: (val) {
                          final parsed = int.tryParse(val ?? '');
                          if (parsed != null) {
                            cubit.updateBidDurationSeconds(parsed);
                          }
                        },
                      ),
                      24.ph,

                      // product_ids
                      // CustomText(
                      //   text: 'select products'.tr(),
                      //   fontSize: 20,
                      //   fontWeight: FontWeight.w800,
                      // ),

                      // 12.ph,
                      // Wrap(
                      //   spacing: 8,
                      //   runSpacing: 8,
                      //   children: () {
                      //     final chips = <Widget>[];
                      //     for (final id in model.productIds) {
                      //       final product = state.products.firstWhere(
                      //         (p) => p.id == id,
                      //         orElse: () => ProductModel(id: id),
                      //       );

                      //       final productCategoryId = product.categoryId;
                      //       if (productCategoryId == null ||
                      //           !selectedCategoryIds
                      //               .contains(productCategoryId)) {
                      //         continue;
                      //       }

                      //       chips.add(
                      //         InputChip(
                      //           label: CustomText(
                      //               text:
                      //                   product.productName ?? 'Product $id'),
                      //           onDeleted: () => cubit.removeProductId(id),
                      //         ),
                      //       );
                      //     }
                      //     return chips;
                      //   }(),
                      // ),

                      // 12.ph,
                      // CustomDropdown(
                      //   hintText: selectedCategoryIds.isEmpty
                      //       ? 'select categories first'.tr()
                      //       : 'select product'.tr(),
                      //   value: null,
                      //   items: availableProducts
                      //       .where((p) => !model.productIds.contains(p.id))
                      //       .map(
                      //         (p) => DropdownMenuItem<String>(
                      //           value: p.id!.toString(),
                      //           child:
                      //               Text(p.productName ?? 'Product ${p.id}'),
                      //         ),
                      //       )
                      //       .toList(),
                      //   onChanged: (val) {
                      //     if (selectedCategoryIds.isEmpty) return;
                      //     final selectedId = int.tryParse(val ?? '');
                      //     if (selectedId != null) {
                      //       cubit.addProductId(selectedId);
                      //     }
                      //   },
                      // ),
                      // // 24.ph,

                      CustomText(
                        text: 'select categories'.tr(),
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                      12.ph,
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: model.categoryIds.map((id) {
                          final category = _findCategory(
                            id,
                            state.categories,
                          );
                          return InputChip(
                            label: CustomText(
                                text: category?.name ?? 'Category $id'),
                            onDeleted: () => cubit.removeCategoryId(id),
                          );
                        }).toList(),
                      ),
                      12.ph,
                      CustomDropdown(
                        hintText: 'selectCategory'.tr(),
                        value: null,
                        items: _buildAvailableCategories(
                          state.categories,
                          model.categoryIds,
                        ),
                        onChanged: (val) {
                          final selectedId = int.tryParse(val ?? '');
                          if (selectedId != null) {
                            cubit.addCategoryId(selectedId);
                          }
                        },
                      ),
                      24.ph,
                    ]),
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomGradientButton(
                          text: 'create'.tr(),
                          isLoading: state.isLoading,
                          onPressed: () => cubit.createStream(context),
                        ),
                        35.ph,
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

CategoryChild? _findChildById(CategoryData category, int id) {
  if (category.children == null) return null;
  for (final child in category.children!) {
    if (child.id == id) {
      return child;
    }
  }
  return null;
}

CategoryData? _findCategory(int id, CategoryModel? categoryModel) {
  if (categoryModel?.data == null) return null;
  for (final category in categoryModel!.data!) {
    if (category.id == id) {
      return category;
    }
    final child = _findChildById(category, id);
    if (child != null) {
      return CategoryData(id: child.id, name: child.name);
    }
  }
  return null;
}

List<DropdownMenuItem<String>> _buildAvailableCategories(
  CategoryModel? categoryModel,
  List<int> selectedIds,
) {
  final items = <DropdownMenuItem<String>>[];
  if (categoryModel?.data == null) return items;

  for (final category in categoryModel!.data!) {
    if (category.id != null && !selectedIds.contains(category.id)) {
      items.add(
        DropdownMenuItem<String>(
          value: category.id.toString(),
          child: Text(category.name ?? 'Category ${category.id}'),
        ),
      );
    }

    if (category.children != null) {
      for (final child in category.children!) {
        if (child.id != null && !selectedIds.contains(child.id)) {
          items.add(
            DropdownMenuItem<String>(
              value: child.id.toString(),
              child: Text(child.name ?? 'Category ${child.id}'),
            ),
          );
        }
      }
    }
  }
  return items;
}
