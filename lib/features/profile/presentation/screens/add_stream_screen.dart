part of '../profile.dart';

class AddStreamScreen extends StatelessWidget {
  const AddStreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightGreyBackground,
        appBar: CustomAppBar(
          showBack: true,
          showSearch: false,
          showGift: false,
          showNotification: false,
        ),
        body: BlocProvider(
          create: (context) => locator<AddStreamCubit>(),
          child: BlocBuilder<AddStreamCubit, AddStreamState>(
              builder: (context, state) {
            final cubit = context.read<AddStreamCubit>();
            return CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      12.ph,
                      CustomText(
                        text: 'createStream'.tr(),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                      12.ph,
                      CustomTextField(hintText: 'title'.tr()),
                      12.ph,
                      CustomTextField(
                        isRequired: false,
                        hintText: 'description'.tr(),
                        maxLines: 5,
                      ),
                      12.ph,
                      CustomDropdown(
                        hintText: 'category'.tr(),
                        value: 'category'.tr(),
                        items: [],
                        onChanged: (String? value) {},
                      ),
                      12.ph,
                      CustomTextField(hintText: 'date'.tr()),
                      12.ph,
                      CustomSwitchWidget(
                        title: 'repeat'.tr(),
                        value: state.bookParticipation,
                        onChanged: (val) => cubit.toggleBookParticipation(),
                      ),
                      12.ph,
                      CustomText(
                        text: 'photos'.tr(),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                      12.ph,
                      CustomText(
                        text: 'addThumbnail'.tr(),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                      12.ph,
                      UploadPhoto(
                        selectedImages: state.selectedImages,
                        onPickImage: () => cubit.pickImage(),
                      ),
                      24.ph,
                      CustomText(
                        text: 'delivery'.tr(),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w800,
                      ),
                      12.ph,
                      CustomDropdown(
                        hintText: 'deliveryWays'.tr(),
                        value: 'deliveryWays'.tr(),
                        items: [],
                        onChanged: (String? value) {},
                      ),
                      12.ph,
                      CustomSwitchWidget(
                        title: 'pickupFree'.tr(),
                        value: state.pickupFree,
                        onChanged: (val) => cubit.togglePickupFree(),
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
                          isDisabled: false,
                          onPressed: () {},
                        ),
                        35.ph,
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
