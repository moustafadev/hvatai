// part of 'customs.dart';

// class SalesCard extends StatelessWidget {
//   final String title;
//   final String price;
//   final bool isExpanded;
//   final VoidCallback onToggle;

//   const SalesCard({
//     super.key,
//     required this.title,
//     required this.price,
//     required this.isExpanded,
//     required this.onToggle,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 300),
//         width: 343,
//         padding: const EdgeInsets.all(12),
//         decoration: BoxDecoration(
//           color: AppColors.white,
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 CustomText(
//                   text:title,
//                   color: AppColors.blackDark,
//                   fontWeight: FontWeight.w700,
//                   fontSize: 14,
//                 ),
//                 const Spacer(),
//                 const Icon(Icons.error_outline, color: AppColors.primary),
//               ],
//             ),
//             const Divider(color: AppColors.graniteGray,),
//             Row(
//               children: [
//                 CustomText(
//                   text: price,
//                   color: AppColors.blackDark,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 14,
//                 ),
//                 const Spacer(),
//                 InkWell(
//                   onTap: onToggle,
//                   child: Icon(
//                     isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
//                     size: 20,
//                     color: AppColors.blackDark,
//                   ),
//                 ),
//               ],
//             ),
//             if (isExpanded) const CustomText(
//               text: 'Принесли продажи',
//               color: AppColors.grey,
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//             ),
//             if (isExpanded) const Divider(color: AppColors.graniteGray,),
//             if (isExpanded) 24.ph,
//             if (isExpanded) _buildChart(),
//           ],
//         ),
//       ),
//     );
//   }
//   Widget _buildChart() {
//     return SizedBox(
//       height: 262,
//       child: LineChart(
//         LineChartData(
//           titlesData: FlTitlesData(
//             show: true,
//             bottomTitles: AxisTitles(
//               sideTitles: SideTitles(
//                 showTitles: true,
//                 reservedSize: 22,
//                 getTitlesWidget: (value, meta) {
//                   return Text(value.toInt().toString());
//                 },
//               ),
//             ),
//             leftTitles: AxisTitles(
//               sideTitles: SideTitles(
//                 showTitles: true,
//                 reservedSize: 40,
//                 getTitlesWidget: (value, meta) {
//                   return Text(value.toInt().toString());
//                 },
//               ),
//             ),
//             rightTitles: const AxisTitles(
//               sideTitles: SideTitles(showTitles: false),
//             ),
//             topTitles: const AxisTitles(
//               sideTitles: SideTitles(showTitles: false),
//             ),
//           ),
//           borderData: FlBorderData(
//             show: true,
//             border: const Border(
//               left: BorderSide(color: AppColors.blackDark, width: 1),
//               bottom: BorderSide(color: AppColors.blackDark, width: 1),
//               top: BorderSide.none,
//               right: BorderSide.none,
//             ),
//           ),
//           gridData: const FlGridData(
//             show: false,
//           ),
//           lineBarsData: [
//             LineChartBarData(
//               spots: [
//                 const FlSpot(0, 2000),
//                 const FlSpot(2, 4000),
//                 const FlSpot(3, 6000),
//                 const FlSpot(4, 8000),
//                 const FlSpot(5, 6000),
//                 const FlSpot(6, 4000),
//                 const FlSpot(7, 2000),
//                 const FlSpot(8, 4000),
//                 const FlSpot(9, 6000),
//               ],
//               isCurved: true,
//               color: AppColors.blueLite,
//               barWidth: 1,
//               isStrokeCapRound: true,
//               belowBarData: BarAreaData(show: false),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

// }
