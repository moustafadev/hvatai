part of '../chat.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    inChat = true;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(
        showSearch: false,
        showNotification: false,
        showGift: false,
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: "Чаты",
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: BlocBuilder<ChatsCubit, ChatsState>(
                builder: (context, state) {
                  if (state.isLoading || state.isLoadingSupportChat) {
                    return const Center(
                        child: CustomCircularProgressIndicator());
                  } else if (state.isError) {
                    return Center(child: Text(state.errorMessage));
                  } else if (state.chats.isEmpty &&
                      state.supportChat?.lastMessage == null) {
                    return Container(
                      color: AppColors.background,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomImage(
                              imageSource: Assets.assetsImagesChatEmpty),
                          SizedBox(
                            height: 20.h,
                          ),
                          CustomText(
                            text: 'noMessages'.tr(),
                          )
                        ],
                      ),
                    );
                  } else {
                    return Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              // 🔹 Show support chat first if it has a last message
                              if (state.supportChat?.lastMessage != null)
                                SupportChatTile(chat: state.supportChat!),

                              // 🔹 Divider between support chat and normal chats
                              if (state.supportChat?.lastMessage != null &&
                                  state.chats.isNotEmpty)
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 1,
                                    color: const Color(0xffF2F2F2),
                                  ),
                                ),

                              // 🔹 Normal chat list
                              Expanded(
                                child: ListView.builder(
                                  itemCount: state.chats.length,
                                  itemBuilder: (context, index) {
                                    final chat = state.chats[index];
                                    final user = chat.otherUser;

                                    return InkWell(
                                      onTap: () async {
                                        final cubit = ChatsCubit.get(context);
                                        cubit.markMessageAsRead(chat.id ?? 0);
                                        cubit.getMessages(chat.id ?? 0);

                                        context.push(
                                          '${AppRoutes.chatRoot}/${AppRoutes.chatDetails}',
                                          extra: {
                                            'chatId': chat.id,
                                            'user': user,
                                          },
                                        );
                                      },
                                      child: ChatTile(chat: chat),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
