part of '../home.dart';

class LiveVideosWidget extends StatelessWidget {
  final List<StreamDataModel> liveStreams;
  final String currentUserId;
  final String searchQuery;
  final String? selectedCategory;

  const LiveVideosWidget({
    super.key,
    required this.liveStreams,
    required this.currentUserId,
    this.searchQuery = '',
    this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    return ReusableLiveVideosGrid<StreamDataModel>(
      items: liveStreams,
      filter: (stream) {
        final title = stream.title?.toLowerCase();
        final admin = '';
        final category = '';

        final matchesSearch = searchQuery.isEmpty ||
            title!.contains(searchQuery.toLowerCase()) ||
            admin.contains(searchQuery.toLowerCase());

        final matchesCategory = selectedCategory == null ||
            category == selectedCategory!.toLowerCase();

        final isBlockedAndNotOwner = false;

        return matchesSearch && matchesCategory && !isBlockedAndNotOwner;
      },
      isBlocked: (stream) => false,
      isOwner: (stream) => false,
      blockedCardBuilder: (context, stream) {
        return Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.red.shade50,
            border: Border.all(color: AppColors.red),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.block, color: AppColors.red, size: 40),
              8.ph,
              const CustomText(
                text: 'Your stream is blocked',
                color: AppColors.red,
                fontWeight: FontWeight.bold,
              ),
              8.ph,
              CustomButton(
                  onPressed: () {
                    final TextEditingController reasonController =
                        TextEditingController();
                    showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          title: const CustomText(text: "Request Unblock"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const CustomText(
                                  text: "Please enter your reason:"),
                              const SizedBox(height: 10),
                              CustomTextField(
                                controller: reasonController,
                                hintText: "Enter reason here...",
                                // maxLines: 3,
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const CustomText(text: "Cancel"),
                            ),
                            CustomButton(
                              onPressed: () async {
                                final reason = reasonController.text.trim();
                                if (reason.isNotEmpty) {
                                  context.pop(context);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Unblock request sent."),
                                    ),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: CustomText(
                                          text: "Please enter a reason."),
                                    ),
                                  );
                                }
                              },
                              title: "Submit",
                            ),
                          ],
                        );
                      },
                    );
                  },
                  title: "Contact Support"),
            ],
          ),
        );
      },
      liveCardBuilder: (context, stream) => GestureDetector(
        onTap: () {
          final appLocal = locator<AppLocal>();
          final userId = appLocal.getUserId();

          context.read<CategoryTabsCubit>().joinStream(
              channelName: stream.channelName!,
              userId: userId,
              stream: stream,
              isPublisher: false, // viewer
              context: context);
        },
        child: CustomLiveVideoCard(
          price: '${stream.streamProducts?.first.startingPrice ?? ""}',
          title: stream.title ?? "",
          adminName: '${stream.user?.name}',
          adminImage: '',
          viewsCount: 5,
          description: stream.streamProducts?.first.product?.description ?? "",
          liveImage: '',
        ),
      ),
    );
  }
}
