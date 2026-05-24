part of '../cart.dart';

class PaymentWebView extends StatelessWidget {
  final String url;
  final bool isReward;
  final String? orderUuid;

  const PaymentWebView({
    super.key,
    required this.url,
    required this.isReward,
    this.orderUuid,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios,
                    color: AppColors.blackDark),
                onPressed: () {
                  GoRouter.of(context).pushReplacement(
                    AppRoutes.paymentFailed,
                  );
                },
              ),
            ),
            Expanded(
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: WebUri.uri(Uri.parse(url)), // ✅ Convert to WebUri
                ),
                onUpdateVisitedHistory: (controller, url, androidIsReload) {
                  final currentUrl = url.toString();

                  debugPrint('[WebView] URL: $currentUrl');

                  /// Optional: keep your old logic if backend still uses it
                  if (currentUrl.contains("success") ||
                      currentUrl.contains("https://superap.ru/")) {
                    if (isReward) {
                      GoRouter.of(context)
                          .pushReplacement(AppRoutes.rewardError);
                    } else {
                      GoRouter.of(context)
                          .pushReplacement(AppRoutes.paymentSuccess);
                    }
                    return;
                  }

                  if (currentUrl.contains("fail")) {
                    if (isReward) {
                      GoRouter.of(context)
                          .pushReplacement(AppRoutes.rewardError);
                    } else {
                      GoRouter.of(context)
                          .pushReplacement(AppRoutes.paymentFailed);
                    }
                    return;
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
