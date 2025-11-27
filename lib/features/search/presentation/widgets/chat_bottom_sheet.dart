part of '../search.dart';

void showChatBottomSheet(BuildContext context, UserDataModel? user) {
  if (user == null || user.id == null) return;

  final contentController = TextEditingController();
  final chatsCubit = ChatsCubit.get(context);
  chatsCubit.setIsSendedMessage(false);

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
    ),
    builder: (context) {
      return BlocProvider.value(
        value: chatsCubit,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
          ),
          child: BlocBuilder<ChatsCubit, ChatsState>(
            builder: (context, state) {
              final cubit = context.read<ChatsCubit>();
              final fullName = [
                user.name,
                user.lastName,
              ].where((element) => (element ?? '').isNotEmpty).join(' ').trim();
              final userName = fullName.isEmpty ? (user.name ?? '') : fullName;
              final userImage = user.image ?? '';
              final isSendedMessage = state.isSendedMessage;

              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    4.ph,
                    Center(
                      child: Container(
                        height: 4.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          color: AppColors.gray,
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0.r),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'chatWithSeller'.tr(),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w800,
                          ),
                          10.ph,
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.gray,
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            padding: EdgeInsets.all(10.r),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100.r),
                                  child: CustomImage(
                                    imageSource: userImage,
                                    height: 70.h,
                                    width: 70.w,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: userName,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          15.ph,
                          if (isSendedMessage)
                            Center(
                              child: CustomText(
                                text: 'messageSent'.tr(),
                                fontSize: 18.sp,
                                color: AppColors.graniteGray,
                              ),
                            )
                          else
                            Center(
                              child: CustomText(
                                text: 'enterMessage'.tr(),
                                fontSize: 18.sp,
                                color: AppColors.graniteGray,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          15.ph,
                          if (!isSendedMessage)
                            Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: 12.0.w),
                              child: ChatInputField(
                                controller: contentController,
                                onSend: (content, images) {
                                  if (content.isNotEmpty ||
                                      images.isNotEmpty) {
                                    final receiverId = user.id ?? 0;
                                    cubit.sendMessage(
                                      content,
                                      receiverId,
                                      images,
                                    );
                                  }
                                },
                              ),
                            )
                          else
                            CustomButton(
                              title: 'allChats'.tr(),
                              onPressed: () {
                                ChatsCubit.get(context).getChats();
                                context.push(
                                  '${AppRoutes.chatRoot}/${AppRoutes.chat}',
                                );
                              },
                            ),
                        ],
                      ),
                    ),
                    MediaQuery.of(context).viewInsets.bottom.ph,
                  ],
                ),
              );
            },
          ),
        ),
      );
    },
  ).then((value) {
    final cubit = locator<ChatsCubit>();
    cubit.getChats();
    cubit.setIsSendedMessage(false);
  });
}

