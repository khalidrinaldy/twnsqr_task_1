import 'package:fpdart/fpdart.dart';
import 'package:twnsqr_task_1/core/di/instance.dart';
import 'package:twnsqr_task_1/core/usecase/use_case.dart';
import 'package:twnsqr_task_1/core/utils/constant/typedef.dart';
import 'package:twnsqr_task_1/features/activities/domain/entities/day_activity.dart';

class GetActivitiesUsecase extends UseCase<List<DayActivity>, NoParams, NoRequestBody> {
  @override
  Future<Either<String, List<DayActivity>>> call({NoParams? params, NoRequestBody? body}) async {
    final response = await activityRepo.getActivities();

    await Future.delayed(const Duration(milliseconds: 1100));

    if (response.error) {
      return Left(response.message);
    } else {
      return Right(response.data!);
    }
  }
}
