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
          return AbsorbPointer(
            absorbing: state.isLoading,
            child: Scaffold(
              backgroundColor: AppColors.background,
              body: SafeArea(
                bottom: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: AbsorbPointer(
                    absorbing: state.isLoading,
                    child: CustomScrollView(
                      physics: BouncingScrollPhysics(),
                      slivers: [
                        SliverToBoxAdapter(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AuthHeader(title: 'yourName'.tr()),
                              24.ph,
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: AppColors.boxShadowTextField,
                                ),
                                child: CustomTextField(
                                  hintText: 'enterYourName'.tr(),
                                  onChanged: cubit.updateName,
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
                              CustomGradientButton(
                                text: 'continue'.tr(),
                                isLoading: state.isLoading,
                                isDisabled: state.name.trim().isEmpty,
                                onPressed: () {
                                  FocusScope.of(context).unfocus();
                                  cubit.submit(context);
                                },
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
            ),
          );
        },
      ),
    );
  }
}
