import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hvatai/features/activity/data/models/auction_product.dart';
import 'package:hvatai/features/home/data/model/live_stream_model.dart';

part 'featured_activity_cubit.freezed.dart';
part 'featured_activity_state.dart';

class FeaturedActivityCubit extends Cubit<FeaturedActivityState> {
  FeaturedActivityCubit()
      : super(const FeaturedActivityState(
            selectedCategoryIndex: 0, products: [], liveStreams: [])) {
    loadProducts();
    loadLiveStreams();
  }

  void changeCategory(int index) {
    emit(state.copyWith(selectedCategoryIndex: index));
  }

  void loadProducts() {
    emit(state.copyWith(
      products: List.generate(
        5,
        (index) => AuctionProduct(
          id: '$index',
          title: 'Product $index',
          description: 'Description $index',
          price: '${100 * (index + 1)}',
          images: [],
          bidders: {},
          isSold: index % 2 == 0,
          ownerId: 'owner_$index',
        ),
      ),
    ));
  }

  void loadLiveStreams() {
    final streams = List.generate(
      6,
      (index) => LiveStreamModel(
        price: '${100 * (index + 1)}',
        title: 'Stream $index',
        adminName: 'Admin $index',
        liveImage: '',
        category: 'Category ${index % 3}',
        isBlocked: false,
        channelId: '$index',
        adminPhoto: '',
        viewsCount: index * 10,
        description: 'Description of stream $index',
        adminId: '$index',
        selectedProductImage: '',
        unblockRequested: false,
        unblockRequestReason: '',
      ),
    );

    emit(state.copyWith(liveStreams: streams));
  }
}
