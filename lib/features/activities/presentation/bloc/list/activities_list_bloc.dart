import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twnsqr_task_1/features/activities/domain/entities/day_activity.dart';
import 'package:twnsqr_task_1/features/activities/domain/usecases/get_activities_usecase.dart';

part 'activities_list_event.dart';
part 'activities_list_state.dart';
part 'activities_list_bloc.freezed.dart';

class ActivitiesListBloc extends Bloc<ActivitiesListEvent, ActivitiesListState> {
  final GetActivitiesUsecase _usecase = GetActivitiesUsecase();

  ActivitiesListBloc() : super(_Initial()) {
    on<ActivitiesListEvent>((event, emit) async {
      await event.map(
        fetch: (e) => getActivities(e, emit),
      );
    });
  }

  Future<void> getActivities(ActivitiesListEvent event, Emitter<ActivitiesListState> emit) async {
    emit(const ActivitiesListState.loading());
    final response = await _usecase.call();
    response.fold(
      (l) => emit(ActivitiesListState.failed(l)),
      (r) => emit(ActivitiesListState.success(data: r)),
    );
  }
}
