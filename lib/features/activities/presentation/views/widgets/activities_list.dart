part of '../activities_view.dart';

class _ActivitiesList extends StatelessWidget {
  const _ActivitiesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivitiesListBloc, ActivitiesListState>(
      builder: (context, state) {
        return state.when(
          initial: () => Container(),
          loading: () => Align(
            alignment: Alignment.center,
            child: LoadingAnimationWidget.flickr(
              leftDotColor: isDarkMode ? AppColors.primary600 : AppColors.primary500,
              rightDotColor: isDarkMode ? AppColors.secondary600 : AppColors.secondary500,
              size: 100,
            ),
          ),
          failed: (message) => Center(
            child: Text(
              message,
              style: AppTextStyle.sfProDisplay.size16.regular,
            ),
          ),
          success: (value) => Stack(
            fit: StackFit.loose,
            children: [
              const Positioned.fill(
                child: Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: DottedLine(
                    direction: Axis.vertical,
                    lineThickness: 2.5,
                    dashColor: AppColors.neutral300,
                    dashLength: 8,
                    dashGapLength: 4,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: value
                    .map(
                      (e) => _DayActivity(dayActivity: e),
                    )
                    .toList(),
              )
            ],
          ),
        );
      },
    );
  }
}
