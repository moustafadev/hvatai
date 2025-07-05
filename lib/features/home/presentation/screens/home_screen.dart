part of '../home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: TopBarWidget(),
      body: BlocProvider(
        create: (_) => locator<CategoryTabsCubit>()..fetchCategories(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              15.ph,
              const TopBarWidget(),
              16.ph,
              CategoryTabsWidget(
                onCategorySelected: (category) {
                  if (category != null) {
                    context.read<CategoryTabsCubit>().selectCategory(category);
                  }
                },
              ),
              10.ph,
              TitleCategoriesForYou(),
              12.ph,
              MyCategory(),
              12.ph,
              Expanded(
                child: LiveVideosWidget(
                  liveStreams: [
                    LiveStreamModel(
                      price: 'Starting price 87 ₽',
                      title: 'Vintage Levis 501 Jeans',
                      adminName: 'company_name',
                      liveImage:
                          '2wCEAAkGBxITEhEQEBAVEhUQFRAVEA8PDw8PEBAPFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf',
                      category: 'Category 1',
                      isBlocked: false,
                      channelId: '1',
                      adminPhoto:
                          ' 2wCEAAkGBxITEhEQEBAVEhUQFRAVEA8PDw8PEBAPFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf',
                      viewsCount: 86,
                      description: 'Women \'s vintage clothing',
                      adminId: '1',
                      selectedProductImage:
                          '2wCEAAkGBxITEhEQEBAVEhUQFRAVEA8PDw8PEBAPFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf',
                      unblockRequested: false,
                      unblockRequestReason: '',
                    ),
                    LiveStreamModel(
                      price: 'Starting price 50 ₽',
                      title: 'Vintage Levis 501 Jeans',
                      adminName: 'company_name',
                      liveImage:
                          '2wCEAAkGBxITEhEQEBAVEhUQFRAVEA8PDw8PEBAPFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf',
                      category: 'Category 1',
                      isBlocked: false,
                      channelId: '1',
                      adminPhoto:
                          ' 2wCEAAkGBxITEhEQEBAVEhUQFRAVEA8PDw8PEBAPFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf',
                      viewsCount: 86,
                      description:
                          'Lorem ipsum dolor sit amet consectetur adipiscing ',
                      adminId: '1',
                      selectedProductImage:
                          '2wCEAAkGBxITEhEQEBAVEhUQFRAVEA8PDw8PEBAPFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf',
                      unblockRequested: false,
                      unblockRequestReason: '',
                    ),
                    LiveStreamModel(
                      price: 'Starting price 30 ₽',
                      title: 'Vintage Levis 501 Jeans',
                      adminName: 'company_name',
                      liveImage:
                          '2wCEAAkGBxITEhEQEBAVEhUQFRAVEA8PDw8PEBAPFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf',
                      category: 'Category 1',
                      isBlocked: false,
                      channelId: '1',
                      adminPhoto:
                          ' 2wCEAAkGBxITEhEQEBAVEhUQFRAVEA8PDw8PEBAPFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf',
                      viewsCount: 86,
                      description:
                          'Lorem ipsum dolor sit amet consectetur adipiscing ',
                      adminId: '1',
                      selectedProductImage:
                          '2wCEAAkGBxITEhEQEBAVEhUQFRAVEA8PDw8PEBAPFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf',
                      unblockRequested: false,
                      unblockRequestReason: '',
                    ),
                    LiveStreamModel(
                      price: 'Starting price 40 ₽',
                      title: 'Vintage Levis 501 Jeans',
                      adminName: 'company_name',
                      liveImage:
                          '2wCEAAkGBxITEhEQEBAVEhUQFRAVEA8PDw8PEBAPFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf',
                      category: 'Category 1',
                      isBlocked: false,
                      channelId: '1',
                      adminPhoto:
                          ' 2wCEAAkGBxITEhEQEBAVEhUQFRAVEA8PDw8PEBAPFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf',
                      viewsCount: 86,
                      description:
                          'Lorem ipsum dolor sit amet consectetur adipiscing ',
                      adminId: '1',
                      selectedProductImage:
                          '2wCEAAkGBxITEhEQEBAVEhUQFRAVEA8PDw8PEBAPFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf',
                      unblockRequested: false,
                      unblockRequestReason: '',
                    ),
                    LiveStreamModel(
                      price: 'Starting price 67 ₽',
                      title: 'Vintage Levis 501 Jeans',
                      adminName: 'company_name',
                      liveImage:
                          '2wCEAAkGBxITEhEQEBAVEhUQFRAVEA8PDw8PEBAPFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf',
                      category: 'Category 1',
                      isBlocked: false,
                      channelId: '1',
                      adminPhoto:
                          ' 2wCEAAkGBxITEhEQEBAVEhUQFRAVEA8PDw8PEBAPFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf',
                      viewsCount: 86,
                      description:
                          'Lorem ipsum dolor sit amet consectetur adipiscing ',
                      adminId: '1',
                      selectedProductImage:
                          '2wCEAAkGBxITEhEQEBAVEhUQFRAVEA8PDw8PEBAPFRUWFhUVFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0fHx0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf',
                      unblockRequested: false,
                      unblockRequestReason: '',
                    ),
                    LiveStreamModel(
                      price: 'Starting price 86 ₽',
                      title: 'Vintage Levis 501 Jeans',
                      adminName: 'company_name',
                      liveImage: '',
                      category: 'Category 1',
                      isBlocked: false,
                      channelId: '1',
                      adminPhoto: '',
                      viewsCount: 86,
                      description:
                          'Lorem ipsum dolor sit amet consectetur adipiscing ',
                      adminId: '1',
                      selectedProductImage: '',
                      unblockRequested: false,
                      unblockRequestReason: '',
                    ),
                  ],
                  currentUserId: '1',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
