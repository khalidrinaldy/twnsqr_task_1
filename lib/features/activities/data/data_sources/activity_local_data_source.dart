import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:twnsqr_task_1/core/utils/helper/response.dart';
import 'package:twnsqr_task_1/features/activities/domain/entities/day_activity.dart';

class ActivityLocalDataSource {
  Future<DataResponse<List<DayActivity>>> getActivities() async {
    try {
      String strData = await rootBundle.loadString('assets/json/day_activity.json');

      List<Map<String, dynamic>> json = List<Map<String, dynamic>>.from(jsonDecode(strData));

      return DataResponse(
        error: false,
        message: 'success',
        data: json.map((e) => DayActivity.fromJson(e)).toList(),
      );
    } catch (e) {
      return DataResponse(
        error: true,
        message: e.toString(),
      );
    }
  }
}
