part of '../activities_view.dart';

class _Progress extends StatelessWidget {
  const _Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) =>
          sizingInformation.isDesktop ? _desktopWidget(context) : _mobileWidget(context),
    );
  }

  Widget _mobileWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 14, 12, 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [AppEffectStyles.cardShadowEffect0],
        color: isDarkMode ? AppColors.primary300 : AppColors.primary200,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppText(
                  "You're close to your goal!",
                  style: AppTextStyle.sfProDisplay.size16.medium,
                ),
                12.margin,
                AppText(
                  "Join more sport activities to collect more points",
                  style: AppTextStyle.sfProDisplay.size12.regular,
                ),
                12.margin,
                Row(
                  children: [
                    AppButton.primary(
                      onTap: () {},
                      label: "Join now",
                      labelStyle: AppTextStyle.sfProDisplay.size12.medium.copyWith(
                        color: AppColors.white,
                      ),
                      backgroundColor: AppColors.black,
                      foregroundColor: AppColors.white,
                      borderRadius: BorderRadius.circular(4),
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 12,
                      ),
                    ),
                    12.margin,
                    AppButton.primary(
                      onTap: () {},
                      label: "My Points",
                      labelStyle: AppTextStyle.sfProDisplay.size12.medium.copyWith(
                        color: AppColors.white,
                      ),
                      backgroundColor: AppColors.black,
                      foregroundColor: AppColors.white,
                      borderRadius: BorderRadius.circular(4),
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          8.margin,
          Builder(builder: (context) {
            final size = 0.08 * context.screenHeight;
            return SizedBox(
              width: size,
              height: size,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Background Circle
                  SizedBox(
                    width: size,
                    height: size,
                    child: const CircularProgressIndicator(
                      value: 1.0,
                      strokeWidth: 8.0,
                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
                    ),
                  ),
                  // Progress Circle
                  SizedBox(
                    width: size,
                    height: size,
                    child: const CircularProgressIndicator(
                      value: 50 / 100,
                      strokeWidth: 8.0,
                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary600),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  // Center Text
                  Text(
                    "27",
                    style: TextStyle(
                      fontSize: size * 0.3,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _desktopWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: isDarkMode ? AppColors.primary300 : AppColors.primary200,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppText(
            "You're close to your goal!",
            style: AppTextStyle.sfProDisplay.size20.medium,
          ),
          12.margin,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AppText(
                      "Join more sport activities to collect more points",
                      style: AppTextStyle.sfProDisplay.size12.regular,
                    ),
                    14.margin,
                    Row(
                      children: [
                        Expanded(
                          child: LayoutBuilder(
                            builder: (context, constraints) => AppButton.primary(
                              onTap: () {},
                              label: "Join now",
                              labelStyle: AppTextStyle.sfProDisplay.medium.copyWith(
                                color: AppColors.white,
                                fontSize: constraints.maxWidth * 0.12,
                              ),
                              backgroundColor: AppColors.black,
                              foregroundColor: AppColors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                        12.margin,
                        Expanded(
                          child: LayoutBuilder(
                            builder: (context, constraints) => AppButton.primary(
                              onTap: () {},
                              label: "My Points",
                              labelStyle: AppTextStyle.sfProDisplay.medium.copyWith(
                                color: AppColors.white,
                                fontSize: constraints.maxWidth * 0.12,
                              ),
                              backgroundColor: AppColors.black,
                              foregroundColor: AppColors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              12.margin,
              Builder(builder: (context) {
                final size = 0.09 * context.screenHeight;
                return SizedBox(
                  width: size,
                  height: size,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Background Circle
                      SizedBox(
                        width: size,
                        height: size,
                        child: const CircularProgressIndicator(
                          value: 1.0,
                          strokeWidth: 8.0,
                          valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
                        ),
                      ),
                      // Progress Circle
                      SizedBox(
                        width: size,
                        height: size,
                        child: const CircularProgressIndicator(
                          value: 50 / 100,
                          strokeWidth: 8.0,
                          valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary600),
                          backgroundColor: Colors.transparent,
                        ),
                      ),
                      // Center Text
                      Text(
                        "27",
                        style: TextStyle(
                          fontSize: size * 0.3,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ],
          )
        ],
      ),
    );
  }
}
