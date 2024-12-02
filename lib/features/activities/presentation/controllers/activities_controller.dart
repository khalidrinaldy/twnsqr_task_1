import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twnsqr_task_1/shared/widgets/filter/app_filter.dart';

part 'activities_controller.freezed.dart';

class ActivitiesController extends Cubit<ActivitiesUIState> {
  ActivitiesController()
      : super(
          ActivitiesUIState(
            filters: ["Sports", "Food", "Kids", "Creative", "Popular", "Calm"]
                .map(
                  (e) => FilterModel(label: e, value: e),
                )
                .toList(),
            selectedFilter: null,
          ),
        );

  void selectFilter(FilterModel<String> filter) {
    emit(state.copyWith(selectedFilter: filter));
  }

  void resetFilter() {
    emit(state.copyWith(selectedFilter: null));
  }
}

@freezed
class ActivitiesUIState with _$ActivitiesUIState {
  const factory ActivitiesUIState({
    required List<FilterModel> filters,
    required FilterModel<String>? selectedFilter,
  }) = _ActivitiesUIState;
}
