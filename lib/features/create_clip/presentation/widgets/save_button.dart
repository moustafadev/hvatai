part of '../clips.dart';

class SaveButton extends StatelessWidget {
  const SaveButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateClipCubit, CreateClipState>(
      builder: (context, state) {
        final cubit = context.read<CreateClipCubit>();

        return Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: state.clipName.trim().isEmpty
                ? null
                : () {
                    if (state.endValue > state.startValue) {
                      cubit.trimVideo();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Please select a valid video segment'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
            child: Container(
              width: 75,
              height: 21,
              decoration: BoxDecoration(
                color: state.clipName.trim().isEmpty
                    ? AppColors.disabledColor
                    : AppColors.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: CustomText(
                  text: 'Сохранить',
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: state.clipName.trim().isEmpty
                      ? AppColors.disabledBackground
                      : AppColors.blackColorIcon,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
