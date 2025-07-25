part of '../profile.dart';

class AddNewPaymentMethod extends StatelessWidget {
  const AddNewPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGreyBackground,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: AppColors.blackColorIcon),
          onPressed: () {
            context.pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: BlocProvider(
          create: (context) => locator<PaymentMethodCubit>(),
          child: BlocBuilder<PaymentMethodCubit, PaymentMethodState>(
            builder: (context, state) {
              final cubit = context.read<PaymentMethodCubit>();

              final cardNumberFormatter = MaskTextInputFormatter(
                mask: '#### #### #### ####',
                filter: {"#": RegExp(r'[0-9]')},
                initialText: state.cardNumber,
              );

              final maskFormatter = MaskTextInputFormatter(
                mask: '## / ##',
                filter: {"#": RegExp(r'[0-9]')},
                initialText: state.cardDate,
              );

              return Form(
                key: cubit.formKey,
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          12.ph,
                          CustomText(
                            text: 'addCard'.tr(),
                            fontWeight: FontWeight.w800,
                            fontSize: 20.sp,
                          ),
                          12.ph,
                          CustomTextField(
                            hintText: 'cardNumber'.tr(),
                            isRequired: false,
                            validator: (v) =>
                                v!.isEmpty ? 'enter Card number'.tr() : null,
                            onChanged: (v) =>
                                cubit.updateField('cardNumber', v),
                            controller: cubit.cardNumberController,
                            inputFormatters: [cardNumberFormatter],
                            keyboardType: TextInputType.number,
                          ),
                          20.ph,
                          CustomTextField(
                            isRequired: false,
                            hintText: 'cardName'.tr(),
                            validator: (v) =>
                                v!.isEmpty ? 'enter Name card'.tr() : null,
                            onChanged: (v) => cubit.updateField('cardName', v),
                            controller:
                                TextEditingController(text: state.cardName),
                          ),
                          20.ph,
                          Row(
                            children: [
                              Expanded(
                                child: CustomTextField(
                                  isRequired: false,
                                  hintText: 'mmYy'.tr(),
                                  validator: (v) {
                                    if (v == null || v.isEmpty)
                                      return 'enterDate'.tr();

                                    final parts = v.split('/');
                                    if (parts.length != 2)
                                      return 'invalidFormat'.tr();

                                    final mm = int.tryParse(parts[0].trim());
                                    final yy = int.tryParse(parts[1].trim());

                                    if (mm == null ||
                                        yy == null ||
                                        mm < 1 ||
                                        mm > 12) {
                                      return 'invalidMonthOrYear'.tr();
                                    }

                                    return null;
                                  },
                                  onChanged: (v) =>
                                      cubit.updateField('cardDate', v),
                                  controller: cubit.cardDateController,
                                  inputFormatters: [maskFormatter],
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              10.pw,
                              Expanded(
                                child: CustomTextField(
                                  isRequired: false,
                                  hintText: 'cvv'.tr(),
                                  onChanged: (v) =>
                                      cubit.updateField('cardCvv', v),
                                  controller: TextEditingController(
                                      text: state.cardCvv),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(3),
                                  ],
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ],
                          ),
                          24.ph,
                          CustomSwitchWidget(
                            title: 'doItTheMainMethod'.tr(),
                            value: state.doMainMethod,
                            onChanged: (val) {
                              cubit.toggleMainMethod();
                            },
                          ),
                        ],
                      ),
                    ),
                    SliverFillRemaining(
                      hasScrollBody: false,
                      fillOverscroll: true,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomGradientButton(
                            text: 'save'.tr(),
                            isDisabled: cubit.state.cardCvv.isEmpty ||
                                cubit.state.cardDate.isEmpty ||
                                cubit.state.cardName.isEmpty ||
                                cubit.state.cardNumber.isEmpty,
                            onPressed: () {
                              // تنفيذ عملية الحفظ
                            },
                          ),
                          40.ph,
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
