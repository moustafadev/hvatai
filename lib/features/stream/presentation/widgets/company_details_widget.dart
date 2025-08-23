part of '../stream.dart';
class CompanyDetailsWidget extends StatelessWidget {
  const CompanyDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: 'company_name',
          fontWeight: FontWeight.w800,
          fontSize: 14,
          color: Colors.white,
        ),
        Row(
          children: [
            const Icon(Icons.star,
                color: Colors.white, size: 16),
            SizedBox(width: 4.w),
            const CustomText(
              text: '4.7',
              fontWeight: FontWeight.w800,
              fontSize: 14,
              color: Colors.white,
            ),
            SizedBox(width: 12.w),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                    color: Colors.white.withOpacity(0.3)),
              ),
              child: const CustomText(
                text: 'Подписаться',
                fontWeight: FontWeight.w500,
                fontSize: 10,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
