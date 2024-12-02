part of '../activities_view.dart';

class _MobileView extends StatelessWidget {
  const _MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(30, 64, 25, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const _Header(),
            20.margin,
            const _Progress(),
            18.margin,
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
    );
  }
}
