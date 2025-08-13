part of '../profile.dart';

class AddStreamScreen extends StatelessWidget {
  const AddStreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: AppColors.lightGreyBackground,
        appBar: const CustomAppBar(
          showBack: true,
          showSearch: false,
          showGift: false,
          showNotification: false,
        ),
        body: BlocProvider(
          create: (_) => locator<AddStreamCubit>()..loadProducts(),
          child: BlocBuilder<AddStreamCubit, AddStreamState>(
            builder: (context, state) {
              final cubit = context.read<AddStreamCubit>();
              final model = state.createStreamModel;
              if (state.isProductsLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
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

                        // title
                        CustomTextField(
                          hintText: 'title'.tr(),
                          onChanged: cubit.updateTitle,
                        ),
                        12.ph,

                        // description
                        CustomTextField(
                          hintText: 'description'.tr(),
                          isRequired: false,
                          maxLines: 5,
                          onChanged: cubit.updateDescription,
                        ),
                        12.ph,

                        // scheduled_at
                        CustomDateField(
                          label: 'date'.tr(),
                          onChanged: (val) {
                            final parsedDate =
                                DateFormat('dd.MM.yyyy').parse(val);
                            cubit.updateScheduledAt(parsedDate.toUtc());
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
                            hintText: 'minimum bid increment',
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
                            hintText: 'auto delete hours',
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

                        // product_ids
                        CustomText(
                          text: 'select products'.tr(),
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                        12.ph,
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: model.productIds.map((id) {
                            final product = state.products.firstWhere(
                              (p) => p.id == id,
                              orElse: () => ProductModel(id: id),
                            );
                            return InputChip(
                              label: Text(product.productName ?? 'Product $id'),
                              onDeleted: () => cubit.removeProductId(id),
                            );
                          }).toList(),
                        ),
                        12.ph,
                        CustomDropdown(
                          hintText: 'select product'.tr(),
                          value: null,
                          items: state.products
                              .where((p) => !model.productIds.contains(p.id))
                              .map((p) => DropdownMenuItem<String>(
                                    value: p.id.toString(),
                                    child: Text(
                                        p.productName ?? 'Product ${p.id}'),
                                  ))
                              .toList(),
                          onChanged: (val) {
                            final selectedId = int.tryParse(val ?? '');
                            if (selectedId != null) {
                              cubit.addProductId(selectedId);
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
      ),
    );
  }
}
