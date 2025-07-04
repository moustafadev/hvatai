part of '../home.dart';

class LiveVideosWidget extends StatelessWidget {
  final List<LiveStreamModel> liveStreams;
  final String currentUserId;
  final String searchQuery;
  final String? selectedCategory;
  //final ApiServiceHome apiService;

  const LiveVideosWidget({
    super.key,
    required this.liveStreams,
    required this.currentUserId,
    // required this.apiService,
    this.searchQuery = '',
    this.selectedCategory,
  });

  @override
  Widget build(BuildContext context) {
    final filtered = liveStreams.where((stream) {
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
    }).toList();

    if (filtered.isEmpty) {
      return Center(child: Text('no_matching_results'));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return GridView.builder(
            padding: EdgeInsets.only(bottom: 100),
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 11,
              mainAxisSpacing: 20,
              mainAxisExtent: 390,
            ),
            itemCount: filtered.length,
            itemBuilder: (context, index) {
              final stream = filtered[index];

              if (stream.isBlocked && currentUserId == stream.adminId) {
                // Blocked & owner
                return Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    border: Border.all(color: AppColors.red),
                    borderRadius: BorderRadius.circular(12.r),
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
                                      final reason =
                                          reasonController.text.trim();
                                      if (reason.isNotEmpty) {
                                        try {
                                          // await apiService.sendUnblockRequest(
                                          //     stream.channelId, reason);
                                          Navigator.pop(context);
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                                content: Text(
                                                    "Unblock request sent.")),
                                          );
                                        } catch (e) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                                content: Text(
                                                    "Failed to send request: $e")),
                                          );
                                        }
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                              content: Text(
                                                  "Please enter a reason.")),
                                        );
                                      }
                                    },
                                    child: const Text("Submit"),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: const Text("Contact Support"),
                      ),
                    ],
                  ),
                );
              }

              // Normal stream card
              return GestureDetector(
                onTap: () {
                  // joinLiveStreamingWithPrefs(stream.channelId);
                },
                child: CustomLiveVideoCard(
                  adminName: stream.adminName,
                  adminImage: stream.adminPhoto,
                  viewsCount: stream.viewsCount,
                  description: stream.description,
                  liveImage: stream.selectedProductImage.isNotEmpty
                      ? stream.selectedProductImage
                      : stream.liveImage,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
