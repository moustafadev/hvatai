part of '../home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<CategoryTabsCubit>()..fetchCategories(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 111.h,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.grey,
                  blurRadius: 5.r,
                ),
              ],
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.r),
                bottomRight: Radius.circular(16.r),
              ),
            ),
            child: const TopBarWidget(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: SizedBox(
              height: 60.h,
              child: CategoryTabsWidget(
                onCategorySelected: (category) {
                  if (category != null) {
                    context.read<CategoryTabsCubit>().selectCategory(category);
                  }
                },
              ),
            ),
          ),
          10.ph,
          Expanded(
            child: LiveVideosWidget(
              liveStreams: [
                LiveStreamModel(
                  title: 'Lorem ipsum dolor sit amet consectetur adipiscing',
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
                  title: 'Lorem ipsum dolor sit amet consectetur adipiscing',
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
                  title: 'Lorem ipsum dolor sit amet consectetur adipiscing',
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
                  title: 'Lorem ipsum dolor sit amet consectetur adipiscing',
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
                  title: 'Lorem ipsum dolor sit amet consectetur adipiscing',
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
                  title: 'Lorem ipsum dolor sit amet consectetur adipiscing',
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
    );
  }
}
