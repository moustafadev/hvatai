part of '../auth.dart';

class NameScreen extends StatelessWidget {
  const NameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<NameCubit>(),
      child: BlocBuilder<NameCubit, NameState>(
        builder: (context, state) {
          final cubit = context.read<NameCubit>();
          return Scaffold(
            backgroundColor: AppColors.lightGreyBackground,
            body: SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Form(
                  key: cubit.formKey,
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 16.w),
                                  CustomText(
                                    text: 'Ваше имя',
                                    color: AppColors.blackDark,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18.sp,
                                  ),
                                  IconButton(
                                    onPressed: () => context.pop(context),
                                    icon: const Icon(Icons.close),
                                    tooltip: 'close'.tr(),
                                  )
                                ],
                              ),
                            ),
                            20.ph,
                            CustomTextField(
                              hintText: 'Укажите имя профиля',
                              isRequired: false,
                              onChanged: cubit.updateName,
                              validator: (value) {
                                if (value == null || value.trim().isEmpty) {
                                  return 'Введите имя';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                      SliverFillRemaining(
                        hasScrollBody: false,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomGradientButton(
                              text: 'Продолжить',
                              isLoading: state.isLoading,
                              isDisabled: state.name.trim().isEmpty,
                              onPressed: () => cubit.submit(context),
                            ),
                            20.ph,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
