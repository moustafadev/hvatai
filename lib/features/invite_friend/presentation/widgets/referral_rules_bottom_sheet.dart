part of '../invite_friend.dart';

class ReferralRulesBottomSheet extends StatelessWidget {
  const ReferralRulesBottomSheet({super.key});

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const ReferralRulesBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.85,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Handle bar
          Container(
            margin: EdgeInsets.only(top: 8.h),
            width: 44.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: AppColors.greyButton,
              borderRadius: BorderRadius.circular(100.r),
            ),
          ),
          Flexible(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Main title
                  CustomText(
                    text: 'Условия участия в реферальной программе',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w800,
                  ),
                  16.ph,

                  // How it works
                  _SectionTitle(text: 'Как это работает?'),
                  8.ph,
                  _SectionBody(
                    text:
                        'Вы — Реферал (существующий клиент). Ваш друг — Реферрал (новый клиент).\n'
                        'Вы делитесь с другом уникальной реферальной ссылкой или промокодом из личного кабинета.\n'
                        'Друг переходит по ссылке, регистрируется и совершает целевое действие (например, первую покупку).\n'
                        'После успешного выполнения условий вы и ваш друг получаете заранее обещанные вознаграждения.',
                  ),
                  16.ph,

                  // Conditions for reward
                  _SectionTitle(text: 'Условия для получения вознаграждения'),
                  8.ph,
                  _SectionBody(
                    text:
                        'Друг должен совершить первую покупку на сумму не менее [XXX] рублей.\n'
                        'Друг должен быть новым пользователем, который ранее не совершал заказов и не регистрировался на сайте.\n'
                        'При регистрации или вводе промокода он должен использовать вашу персональную ссылку или код.\n'
                        'Вознаграждение начисляется после успешной оплаты и завершения заказа друга (после отгрузки товара или оказания услуги).',
                  ),
                  16.ph,

                  // What you get
                  _SectionTitle(text: 'Что вы получаете?'),
                  8.ph,
                  _SectionBody(
                    text:
                        'За каждого приглашенного друга: [Например, 500 ₽ на бонусный счет] или [Промокод на скидку 15% на следующий заказ].\n'
                        'Ваш друг получает: [Например, скидку 10% на первый заказ] или [Подарок к заказу].',
                  ),
                  16.ph,

                  // Important rules
                  _SectionTitle(text: 'Важные правила'),
                  8.ph,
                  _SectionBody(
                    text:
                        'Аккаунты. Запрещается создание множественных аккаунтов для саморефералов. При обнаружении мошенничества все бонусы будут аннулированы, а аккаунты заблокированы.\n'
                        'Ограничения. Реферальная программа не действует для клиентов, участвующих в других специальных акциях (например, "Первый заказ со скидкой 30%").\n'
                        'Накопление. Бонусы не суммируются с некоторыми другими промокодами (условия уточняйте).\n'
                        'Срок действия. Бонусные средства/промокоды действуют в течение [например, 30/60/90] дней с момента начисления.\n'
                        'Изменения. Администрация оставляет за собой право изменять условия программы, предварительно уведомив пользователей.',
                  ),
                  16.ph,

                  // Where to find referral link
                  _SectionTitle(text: 'Где найти свою реферальную ссылку?'),
                  8.ph,
                  _SectionBody(
                    text:
                        'Авторизуйтесь в Личном кабинете → перейдите в раздел "Пригласи друга" или "Реферальная программа". Там будет ваша уникальная ссылка, промокод и история приглашений.',
                  ),
                  8.ph,
                  _SectionBody(
                    text: 'Приглашайте друзей и получайте выгоду вместе!',
                  ),
                  24.ph,

                  // OK Button
                  SizedBox(
                    width: double.infinity,
                    child: CustomGradientButton(
                      text: 'Ок',
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  16.ph,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: text,
      fontSize: 14.sp,
      fontWeight: FontWeight.w700,
    );
  }
}

class _SectionBody extends StatelessWidget {
  const _SectionBody({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text: text,
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
    );
  }
}
