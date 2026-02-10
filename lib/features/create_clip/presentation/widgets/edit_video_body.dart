part of '../clips.dart';

class EditVideoBody extends StatelessWidget {
  const EditVideoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateClipCubit, CreateClipState>(
      builder: (context, state) {
        // Show loading indicator if loading or video not loaded yet
        if (state.isLoading || !state.isVideoLoaded) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.white),
          );
        }

        return const EditVideoEditor();
      },
    );
  }
}
