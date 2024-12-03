part of '../../domain/repo/activity_repo.dart';

class ActivityRepoImpl extends ActivityRepo {
  final ActivityLocalDataSource activityLocalDataSource;

  ActivityRepoImpl({
    required this.activityLocalDataSource,
  });

  @override
  Future<DataResponse<List<DayActivity>>> getActivities({required List<String> categories}) async =>
      await activityLocalDataSource.getActivities(categories: categories);
}
