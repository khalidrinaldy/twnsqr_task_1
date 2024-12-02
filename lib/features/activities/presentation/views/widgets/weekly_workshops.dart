part of '../activities_view.dart';

class _WeeklyWorkshop extends StatelessWidget {
  const _WeeklyWorkshop({super.key});

  @override
  Widget build(BuildContext context) {
    return _desktopWidget(context);
  }

  Widget _desktopWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 64, 24, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.secondary200,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppText(
              "Weekly workshops \nfor kids",
              style: AppTextStyle.sfProDisplay.medium.copyWith(
                fontSize: 0.08 * constraints.maxWidth,
              ),
            ),
            12.margin,
            AppText(
              "Sign up for early access to weekly activities for your kids full of learning and fun!",
              style: AppTextStyle.sfProDisplay.regular.copyWith(
                fontSize: 0.045 * constraints.maxWidth,
              ),
            ),
            12.margin,
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                  horizontal: 8,
                ),
                width: constraints.maxWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: AppColors.white,
                  boxShadow: const [
                    AppEffectStyles.cardShadowEffect0,
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Learn more",
                      style: AppTextStyle.sfProDisplay.regular.copyWith(
                        fontSize: 0.06 * constraints.maxWidth,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_circle_right_outlined,
                      size: 24,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
