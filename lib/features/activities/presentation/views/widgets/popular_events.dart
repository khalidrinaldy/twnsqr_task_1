part of '../activities_view.dart';

class _PopularEvents extends StatelessWidget {
  const _PopularEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return _desktopWidget(context);
  }

  Widget _desktopWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 28, 28, 24),
      width: double.infinity,
      height: 0.35 * context.screenHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(Assets.images.imgEvent.path),
          fit: BoxFit.fill,
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AppText(
              "Popular events near you!",
              style: AppTextStyle.sfProDisplay.medium.copyWith(
                fontSize: 0.085 * constraints.maxWidth,
                color: AppColors.white,
              ),
            ),
            const Spacer(),
            AppText(
              "Unleash the fun! Explore the world of exciting events happening near you.",
              style: AppTextStyle.sfProDisplay.medium.copyWith(
                fontSize: 0.06 * constraints.maxWidth,
                color: AppColors.white,
              ),
            ),
            28.margin,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: AppButton.primary(
                onTap: () {},
                label: "See more",
                labelStyle: AppTextStyle.sfProDisplay.medium.copyWith(
                  fontSize: 0.06 * constraints.maxWidth,
                  color: AppColors.black,
                ),
                borderRadius: BorderRadius.circular(10),
                backgroundColor: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
