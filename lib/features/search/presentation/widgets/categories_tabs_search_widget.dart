part of '../search.dart';

class CategoriesTabsSearchWidget extends StatelessWidget {
  final List<String> categories = [
    "Electronics",
    "Clothing",
    "Home & Kitchen",
    "Books",
    "Sports",
  ];

  final Map<String, String> categoryImages = {
    "Electronics": "",
    "Clothing": "",
    "Home & Kitchen": "",
    "Books": "",
    "Sports": "",
  };

  CategoriesTabsSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: TextField(
              enabled: false,
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                hintText: 'Search by category',
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Gilroy-Medium',
                  color: Colors.grey,
                ),
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: CustomText(
              text: "search_by_category".tr(),
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 8),

          // List with dummy categories
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                final imageUrl = categoryImages[category];

                return GestureDetector(
                  onTap: () {
                    //Get.to(() => ProductsPage(category: category));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      height: 95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: AppColors.primaryGradient,
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                            ),
                            child: imageUrl != null && imageUrl.isNotEmpty
                                ? CustomImage(
                                    imageSource: imageUrl,
                                    width: 100,
                                    height: 95,
                                    fit: BoxFit.cover,
                                  )
                                : Image.asset(
                                    Assets.assetsImagesWatch,
                                    width: 100,
                                    height: 95,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  text: category,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffFFFFFF),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image.asset(
                                      Assets.assetsImagesWave,
                                      height: 20,
                                    ),
                                    const SizedBox(width: 40),
                                    const CustomText(
                                      text: '1.3k',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffFFFFFF),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
