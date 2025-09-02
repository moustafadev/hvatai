part of '../stream.dart';

class ViewerCountWidget extends StatelessWidget {
  final int count;
  const ViewerCountWidget({
    super.key, required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(Assets.assetsIconsViewers),
                SizedBox(width: 8.w),
                 CustomText(
                  text: count.toString(),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                8.pw,
              ],
            ),
          ),
        ),
        4.pw,
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Icon(Icons.keyboard_arrow_down,
              color: Colors.white, size: 26),
        ),
      ],
    );
  }
}
