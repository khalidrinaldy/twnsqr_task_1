part of '../activities_view.dart';

class _DesktopView extends StatelessWidget {
  const _DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 7,
          child: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                vertical: 50,
                horizontal: 48,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const _Header(),
                  16.margin,
                  AppTextfield.searchTextField(
                    name: "search",
                    hint: "What do you feel like doing?",
                    controller: TextEditingController(),
                  ),
                  24.margin,
                  BlocBuilder<ActivitiesController, ActivitiesUIState>(
                    builder: (context, state) {
                      return AppFilter(
                        value: state.selectedFilter,
                        filters: state.filters,
                        onTapIconFilter: () {},
                        onReset: () {
                          context.read<ActivitiesController>().resetFilter();
                        },
                        onChanged: (value) => context.read<ActivitiesController>().selectFilter(value),
                      );
                    },
                  ),
                  24.margin,
                  const _ActivitiesList(),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            margin: const EdgeInsets.symmetric(
              vertical: 64,
              horizontal: 32,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) => SizedBox(
                height: constraints.maxHeight,
                width: constraints.maxWidth,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const _Progress(),
                      28.margin,
                      const _WeeklyWorkshop(),
                      28.margin,
                      const _PopularEvents(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
