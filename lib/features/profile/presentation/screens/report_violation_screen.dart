part of '../profile.dart';

class ReportViolationScreen extends StatelessWidget {
  const ReportViolationScreen({super.key});

  static const List<Map<String, String>> violationReasons = [
    {'key': 'sold', 'title': 'Товар продан'},
    {'key': 'wrong_price', 'title': 'Неверная цена'},
    {'key': 'wrong_description', 'title': 'Неверное описание, фото'},
    {'key': 'wrong_address', 'title': 'Неверный адрес'},
    {'key': 'cannot_reach', 'title': 'Не дозвониться'},
    {'key': 'violates_rules', 'title': 'Объявление нарушает правила Хватай!'},
    {'key': 'not_private', 'title': 'Это не частное лицо'},
    {'key': 'dishonest_seller', 'title': 'Непорядочный продавец'},
    {'key': 'scammer', 'title': 'Мошенник'},
    {'key': 'other', 'title': 'Другая причина'},
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<ReportViolationCubit>(),
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.background,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,
                color: AppColors.blackColorIcon),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: CustomText(
            text: 'Сообщить о нарушении',
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.blackDark,
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: BlocBuilder<ReportViolationCubit, ReportViolationState>(
            builder: (context, state) {
              final cubit = context.read<ReportViolationCubit>();
              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    24.ph,
                    CustomText(
                      text: 'Причина жалобы',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w800,
                    ),
                    8.ph,
                    CustomText(
                      text:
                          'Расскажите, что не так в описании товара или поведении пользователя',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.blackColor.withValues(alpha: 0.2),
                    ),
                    24.ph,
                    ...violationReasons.map((reason) {
                      final isSelected = state.selectedReason == reason['key'];
                      return Padding(
                        padding: EdgeInsets.only(bottom: 16.h),
                        child: GestureDetector(
                          onTap: () => cubit.selectReason(reason['key']!),
                          child: Row(
                            children: [
                              Container(
                                width: 20.w,
                                height: 20.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: AppColors.blackColorIcon,
                                    width: 1,
                                  ),
                                  color: Colors.transparent,
                                ),
                                child: isSelected
                                    ? Center(
                                        child: Container(
                                          width: 10.w,
                                          height: 10.h,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: AppColors.purple2,
                                          ),
                                        ),
                                      )
                                    : null,
                              ),
                              12.pw,
                              Expanded(
                                child: CustomText(
                                  text: reason['title']!,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                    if (state.selectedReason == 'other') ...[
                      16.ph,
                      _CustomReasonField(
                        initialValue: state.customReason,
                        onChanged: (value) => cubit.updateCustomReason(value),
                      ),
                    ],
                    40.ph,
                    CustomGradientButton(
                      text: 'Подтвердить',
                      isLoading: state.isLoading,
                      isDisabled: state.selectedReason.isEmpty ||
                          (state.selectedReason == 'other' &&
                              state.customReason.isEmpty),
                      onPressed: () => cubit.submitReport(context),
                    ),
                    40.ph,
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

class _CustomReasonField extends StatefulWidget {
  const _CustomReasonField({
    required this.initialValue,
    required this.onChanged,
  });

  final String initialValue;
  final ValueChanged<String> onChanged;

  @override
  State<_CustomReasonField> createState() => _CustomReasonFieldState();
}

class _CustomReasonFieldState extends State<_CustomReasonField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
    _controller.addListener(() {
      widget.onChanged(_controller.text);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: AppColors.boxShadowTextField,
          ),
          child: CustomTextField(
            hintText: 'Укажите причину',
            controller: _controller,
            onChanged: widget.onChanged,
            maxLines: 5,
            maxLength: 2000,
            isRequired: false,
          ),
        ),
        8.ph,
        CustomText(
          text: 'Не более 2000 символов',
          fontSize: 10.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.blackColor.withValues(alpha: 0.2),
        ),
      ],
    );
  }
}
