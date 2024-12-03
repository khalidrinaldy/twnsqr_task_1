part of 'activities_list_bloc.dart';

@freezed
class ActivitiesListEvent with _$ActivitiesListEvent {
  const factory ActivitiesListEvent.fetch({required List<String> categories}) = _Fetch;
}