part of '../search.dart';

class CategoriesTabsSearchWidget extends StatelessWidget {
  // Dummy data ثابتة بدل جلب بيانات من Firebase
  final List<String> categories = [
    "Electronics",
    "Clothing",
    "Home & Kitchen",
    "Books",
    "Sports",
  ];

  final Map<String, String> categoryImages = {
    "Electronics": "https://via.placeholder.com/100x95.png?text=Electronics",
    "Clothing": "https://via.placeholder.com/100x95.png?text=Clothing",
    "Home & Kitchen":
        "https://via.placeholder.com/100x95.png?text=Home+%26+Kitchen",
    "Books": "https://via.placeholder.com/100x95.png?text=Books",
    "Sports": "https://via.placeholder.com/100x95.png?text=Sports",
  };

  CategoriesTabsSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // نستخدم dummy data بدون فلتر أو تحميل أو بحث
    return DefaultTabController(
      length: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          // Search Bar (غير فعّال هنا)
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

          // ButtonsTabBar(
          //   unselectedBackgroundColor: Colors.white,
          //   borderWidth: 0,
          //   borderColor: Colors.transparent,
          //   unselectedBorderColor: Colors.transparent,
          //   contentPadding:
          //       const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          //   labelStyle: const TextStyle(
          //       color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          //   unselectedLabelStyle: const TextStyle(
          //       color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(12),
          //     gradient: AppColors.primaryGradient,
          //   ),
          //   tabs: [
          //     Tab(text: "recommended".tr()),
          //     Tab(text: "popular".tr()),
          //     Tab(text: "a_z".tr()),
          //   ],
          //   onTap: (_) {},
          // ),

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
                            child: imageUrl != null
                                ? CachedNetworkImage(
                                    width: 100,
                                    height: 95,
                                    fit: BoxFit.cover,
                                    imageUrl: imageUrl,
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
