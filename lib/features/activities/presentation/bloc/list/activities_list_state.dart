part of 'activities_list_bloc.dart';

@freezed
class ActivitiesListState with _$ActivitiesListState {
  const factory ActivitiesListState.initial() = _Initial;
  const factory ActivitiesListState.loading() = _Loading;
  const factory ActivitiesListState.success({
    required List<DayActivity> data,
  }) = _Success;
  const factory ActivitiesListState.failed(String message) = _Failed;
}
