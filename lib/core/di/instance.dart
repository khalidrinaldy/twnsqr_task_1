import 'package:get_it/get_it.dart';
import 'package:twnsqr_task_1/features/activities/data/data_sources/activity_local_data_source.dart';
import 'package:twnsqr_task_1/features/activities/domain/repo/activity_repo.dart';

final GetIt getIt = GetIt.instance;

void registerInstances() async {
  getIt.registerSingleton(ActivityRepoImpl(activityLocalDataSource: ActivityLocalDataSource()));
}

final ActivityRepo activityRepo = getIt<ActivityRepoImpl>();
