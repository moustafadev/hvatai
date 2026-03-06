part of '../clips.dart';

class EditVideoBody extends StatelessWidget {
  const EditVideoBody({super.key, this.videoUrl});
  final String? videoUrl;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateClipCubit, CreateClipState>(
      builder: (context, state) {
        return EditVideoEditor(
          videoUrl: videoUrl,
        );
      },
    );
  }
}
