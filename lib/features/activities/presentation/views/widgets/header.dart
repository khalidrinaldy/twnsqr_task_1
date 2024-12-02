part of '../activities_view.dart';

class _Header extends StatelessWidget {
  const _Header({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppText(
                  DateFormat('EEE, MMM dd').format(now),
                  style: sizingInformation.isDesktop
                      ? AppTextStyle.sfProDisplay.size14.medium.copyWith(
                          color: AppColors.neutral500,
                        )
                      : AppTextStyle.sfProDisplay.size12.medium.copyWith(
                          color: AppColors.neutral500,
                        ),
                ),
                getValueForScreenType<double>(context: context, mobile: 16, desktop: 8).margin,
                AppText(
                  "This week in Estepona",
                  style: sizingInformation.isDesktop
                      ? AppTextStyle.sfProDisplay.size24.medium.copyWith(
                          color: isDarkMode ? AppColors.white : AppColors.black,
                        )
                      : AppTextStyle.sfProDisplay.size20.medium.copyWith(
                          color: isDarkMode ? AppColors.white : AppColors.black,
                        ),
                ),
              ],
            ),
          ),
          if (!sizingInformation.isDesktop)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  Assets.icons.icNotification,
                  colorFilter: ColorFilter.mode(
                    isDarkMode ? AppColors.white : AppColors.black,
                    BlendMode.srcIn,
                  ),
                ),
                12.margin,
                const CircleAvatar(
                  backgroundImage: NetworkImage("https://avatar.iran.liara.run/public"),
                  radius: 14,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
