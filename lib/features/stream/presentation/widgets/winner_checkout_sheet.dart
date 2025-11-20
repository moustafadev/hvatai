part of '../stream.dart';

class WinnerCheckoutSheet extends StatefulWidget {
  const WinnerCheckoutSheet({super.key});

  @override
  State<WinnerCheckoutSheet> createState() => _WinnerCheckoutSheetState();
}

class _WinnerCheckoutSheetState extends State<WinnerCheckoutSheet> {
  final TextEditingController _promoController = TextEditingController();
  bool _promoApplied = false;

  @override
  void dispose() {
    _promoController.dispose();
    super.dispose();
  }

  Future<void> _openAddAddress(BuildContext context) async {
    final cubit = context.read<DeliveryAddressCubit>();
    await context.push(
      AppRoutes.addDeliveryAddress,
      extra: cubit,
    );
    if (!mounted) return;
    await cubit.getDeliveryAddress();
  }

  Future<void> _openAddCard(BuildContext context) async {
    final cubit = context.read<PaymentMethodCubit>();
    await context.push(
      AppRoutes.addNewPaymentMethod,
      extra: cubit,
    );
    if (!mounted) return;
    await cubit.getPaymentMethods();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => locator<DeliveryAddressCubit>()..getDeliveryAddress(),
        ),
        BlocProvider(
          create: (_) => locator<PaymentMethodCubit>()..getPaymentMethods(),
        ),
      ],
      child: Builder(
        builder: (context) {
          final addressState = context.watch<DeliveryAddressCubit>().state;
          final paymentState = context.watch<PaymentMethodCubit>().state;
          final hasAddress = addressState.deliveryModel.isNotEmpty;
          final hasCard = paymentState.cards.isNotEmpty;
          final mediaQuery = MediaQuery.of(context);

          final addressTitle = hasAddress
              ? _formatAddress(addressState.deliveryModel.first)
              : 'Нет адреса';
          final cardTitle = hasCard
              ? _formatCard(paymentState.cards.first)
              : 'Нет сохранённой карты';

          return Padding(
            padding: EdgeInsets.only(bottom: mediaQuery.viewInsets.bottom),
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: const Color(0xFFFBFBFB),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16.r),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.h),
                    Center(
                      child: Container(
                        width: 44,
                        height: 4,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Center(
                      child: const CustomText(
                        text: 'Оплата и доставка',
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: AppColors.blackDark,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    if (addressState.isLoading)
                      const _LoaderTile()
                    else
                      _InfoTile(
                        icon: Assets.assetsIconsDelivery,
                        title: addressTitle,
                        onTap: hasAddress ? () {} : () => _openAddAddress(context),
                        trailing: hasAddress
                            ? null
                            : _PlusAction(onTap: () => _openAddAddress(context)),
                      ),
                    SizedBox(height: 16.h),
                    if (paymentState.isLoading)
                      const _LoaderTile()
                    else
                      _InfoTile(
                        icon: Assets.assetsIconsCardStream,
                        title: cardTitle,
                        onTap: hasCard ? () {} : () => _openAddCard(context),
                        trailing: hasCard
                            ? null
                            : _PlusAction(onTap: () => _openAddCard(context)),
                      ),
                    SizedBox(height: 24.h),
                    _PromoSection(
                      controller: _promoController,
                      applied: _promoApplied,
                      onApply: () {
                        setState(() {
                          _promoApplied = true;
                        });
                      },
                    ),
                    SizedBox(height: 16.h),
                    CustomButton(
                      title: 'Ок',
                      color: const Color(0xFF7BE4EE),
                      textColor: Colors.white,
                      
                      radius: 10,
                      height: 42,
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      onPressed: hasAddress && hasCard ? () {} : (){},
                    ),
                    SizedBox(height: 16.h),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  String _formatAddress(UserRegistrationData data) {
    final parts = <String>[];
    for (final value in [
      data.intercomCode,
      data.city,
      data.street,
      data.apartment,
      data.frontDoor,
    ]) {
      if (value != null && value.isNotEmpty) {
        parts.add(value);
      }
    }
    return parts.isEmpty ? 'Нет адреса' : parts.join(', ');
  }

  String _formatCard(CardModel card) {
    final brand = (card.brand ?? '').toUpperCase();
    final lastFour = card.lastFour ?? _extractLastDigits(card.cardNumber);
    final masked = (lastFour == null || lastFour.isEmpty)
        ? '****'
        : lastFour.padLeft(4, '*');
    return '${brand.isEmpty ? 'CARD' : brand} **$masked';
  }

  String? _extractLastDigits(String? number) {
    if (number == null || number.isEmpty) return null;
    return number.length <= 4 ? number : number.substring(number.length - 4);
  }
}

class _InfoTile extends StatelessWidget {
  const _InfoTile({
    required this.icon,
    required this.title,
    this.onTap,
    this.trailing,
  });

  final String icon;
  final String title;
  final VoidCallback? onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: AppColors.lightGreyBackground,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Image.asset(
            icon,
            width: 24,
            height: 24,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: CustomText(
            text: title,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.blackDark,
          ),
        ),
        trailing ??
            InkWell(
              onTap: onTap,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColors.lightGreyBackground,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Image.asset(
                  Assets.assetsIconsPin,
                  width: 18,
                  height: 18,
                  fit: BoxFit.contain,
                ),
              ),
            ),
      ],
    );
  }
}

class _PlusAction extends StatelessWidget {
  const _PlusAction({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: AppColors.lightGreyBackground,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: const Icon(
          Icons.add,
          color: AppColors.blackDark,
        ),
      ),
    );
  }
}

class _LoaderTile extends StatelessWidget {
  const _LoaderTile();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      alignment: Alignment.center,
      child: const SizedBox(
        width: 24,
        height: 24,
        child: CircularProgressIndicator(strokeWidth: 2),
      ),
    );
  }
}

class _PromoSection extends StatelessWidget {
  const _PromoSection({
    required this.controller,
    required this.applied,
    required this.onApply,
  });

  final TextEditingController controller;
  final bool applied;
  final VoidCallback onApply;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Промокод',
              ),
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            width: 120,
            child: CustomButton(
              title: applied ? 'Применено' : 'Применить',
              onPressed: applied ? null : onApply,
              color: applied ? const Color(0xFFD2FBFF) : const Color(0xffD2FBFF),
              disabled: applied,
              textColor:
                   const Color(0xFFE8E8E8),
              radius: 12,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

