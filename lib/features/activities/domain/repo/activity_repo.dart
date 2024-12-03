import 'package:twnsqr_task_1/core/utils/helper/response.dart';
import 'package:twnsqr_task_1/features/activities/data/data_sources/activity_local_data_source.dart';
import 'package:twnsqr_task_1/features/activities/domain/entities/day_activity.dart';

part '../../data/repo_impl/activity_repo_impl.dart';

abstract class ActivityRepo {
  Future<DataResponse<List<DayActivity>>> getActivities({required List<String> categories});
}
