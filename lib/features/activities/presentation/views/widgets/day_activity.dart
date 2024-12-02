part of '../activities_view.dart';

class _DayActivity extends StatelessWidget {
  const _DayActivity({super.key, required this.dayActivity});

  final DayActivity dayActivity;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 14,
            height: 14,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.secondary300,
            ),
          ),
          20.margin,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Text(
                      _dayStringBuilder(),
                      style: AppTextStyle.sfProDisplay.medium.copyWith(
                        fontSize: sizingInformation.isDesktop ? 24 : 20,
                        color: isDarkMode ? AppColors.white : AppColors.black,
                      ),
                    ),
                    4.margin,
                    Text(
                      "/",
                      style: AppTextStyle.sfProDisplay.medium.copyWith(
                        fontSize: sizingInformation.isDesktop ? 20 : 16,
                        color: isDarkMode ? AppColors.neutral600 : AppColors.neutral500,
                      ),
                    ),
                    4.margin,
                    Text(
                      DateFormat("EEEE").format(dayActivity.date),
                      style: AppTextStyle.sfProDisplay.medium.copyWith(
                        fontSize: sizingInformation.isDesktop ? 20 : 16,
                        color: isDarkMode ? AppColors.neutral600 : AppColors.neutral500,
                      ),
                    ),
                  ],
                ),
                20.margin,
                ListView.separated(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: dayActivity.classes.length,
                  separatorBuilder: (context, index) => 16.margin,
                  itemBuilder: (context, index) => _ClassCard(
                    item: dayActivity.classes.elementAt(index),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  String _dayStringBuilder() {
    if (dayActivity.date.difference(DateTime.now()).inDays.abs() > 1) {
      return DateFormat("dd-MMMM-yyyy").format(dayActivity.date);
    }
    return dayActivity.date.day == DateTime.now().day ? "Today" : "Tomorrow";
  }
}
