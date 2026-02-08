part of '../clips.dart';

class CreateClipScreen extends StatelessWidget {
  final String? videoUrl;

  const CreateClipScreen({
    super.key,
    this.videoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateClipCubit, CreateClipState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.blackColorIcon,
          appBar: AppBar(
            backgroundColor: AppColors.blackColorIcon,
            titleSpacing: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () => context.pop(),
            ),
            title: CustomText(
              text: 'Редактировать клип',
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () => context.pop(),
              ),
            ],
          ),
          body: const EditVideoBody(),
        );
      },
    );
  }
}
