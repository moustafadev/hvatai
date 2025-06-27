part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default('User') String firstName,
    String? profileImageUrl,
    @Default(false) bool isLoading,
    @Default([]) List<Map<String, dynamic>> settingsOptions,
    @Default([]) List<Map<String, dynamic>> helpAndContact,
    required int uid,
    required String channelId,
  }) = _ProfileState;
}
