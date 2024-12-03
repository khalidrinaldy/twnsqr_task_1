import 'package:fpdart/fpdart.dart';
import 'package:twnsqr_task_1/core/di/instance.dart';
import 'package:twnsqr_task_1/core/usecase/use_case.dart';
import 'package:twnsqr_task_1/core/utils/constant/typedef.dart';
import 'package:twnsqr_task_1/features/activities/domain/entities/day_activity.dart';

class GetActivitiesUsecase extends UseCase<List<DayActivity>, List<String>, NoRequestBody> {
  @override
  Future<Either<String, List<DayActivity>>> call({required List<String>? params, NoRequestBody? body}) async {
    final response = await activityRepo.getActivities(categories: params ?? []);

    await Future.delayed(const Duration(milliseconds: 1100));

    if (response.error) {
      return Left(response.message);
    } else {
      return Right(response.data!);
    }
  }
}
