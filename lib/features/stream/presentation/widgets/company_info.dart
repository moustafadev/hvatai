part of '../stream.dart';

class CompanyInfo extends StatelessWidget {
  final StreamUserModel? streamUserModel;
  const CompanyInfo({
    super.key,
    this.streamUserModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Company Icon
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(24),
          ),
          child: const Center(
            child: Icon(
              Icons.apple,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(width: 12.w),
        // Company Details
        CompanyDetailsWidget(streamUserModel: streamUserModel,),
      ],
    );
  }
}
