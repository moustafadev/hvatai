part of '../search.dart';

class SearchLiveVideoWidget extends StatelessWidget {
  final List<SearchLiveStreamModel> liveStreams;
  final String currentUserId;
  final String searchQuery;
  final String? selectedCategory;

  const SearchLiveVideoWidget({
    super.key,
    required this.liveStreams,
    required this.currentUserId,
    this.searchQuery = '',
    this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    return ReusableLiveVideosGrid<SearchLiveStreamModel>(
      items: liveStreams,
      filter: (stream) {
        final title = stream.title.toLowerCase();
        final admin = stream.adminName.toLowerCase();
        final category = stream.category.toLowerCase();

        final matchesSearch = searchQuery.isEmpty ||
            title.contains(searchQuery.toLowerCase()) ||
            admin.contains(searchQuery.toLowerCase());

        final matchesCategory = selectedCategory == null ||
            category == selectedCategory!.toLowerCase();

        final isBlockedAndNotOwner =
            stream.isBlocked && currentUserId != stream.adminId;

        return matchesSearch && matchesCategory && !isBlockedAndNotOwner;
      },
      isBlocked: (stream) => stream.isBlocked,
      isOwner: (stream) => currentUserId == stream.adminId,
      blockedCardBuilder: (context, stream) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: Colors.red.shade50,
            border: Border.all(color: AppColors.red),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.block, color: AppColors.red, size: 40),
              const SizedBox(height: 8),
              const CustomText(
                text: 'Your stream is blocked',
                color: AppColors.red,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  final TextEditingController reasonController =
                      TextEditingController();
                  showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: const Text("Request Unblock"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text("Please enter your reason:"),
                            const SizedBox(height: 10),
                            TextField(
                              controller: reasonController,
                              maxLines: 3,
                              decoration: const InputDecoration(
                                hintText: "Enter reason here...",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Cancel"),
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              final reason = reasonController.text.trim();
                              if (reason.isNotEmpty) {
                                Navigator.pop(context);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Unblock request sent."),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Please enter a reason."),
                                  ),
                                );
                              }
                            },
                            child: const CustomText(text: "Submit"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const CustomText(text: "Contact Support"),
              ),
            ],
          ),
        );
      },
      liveCardBuilder: (context, stream) => GestureDetector(
        onTap: () {
          // joinLiveStreamingWithPrefs(stream.channelId);
        },
        child: CustomLiveVideoCard(
          price: stream.price,
          title: stream.title,
          adminName: stream.adminName,
          adminImage: stream.adminPhoto,
          viewsCount: stream.viewsCount,
          description: stream.description,
          liveImage: stream.selectedProductImage.isNotEmpty
              ? stream.selectedProductImage
              : stream.liveImage,
        ),
      ),
    );
  }
}
