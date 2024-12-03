import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:twnsqr_task_1/core/utils/helper/response.dart';
import 'package:twnsqr_task_1/features/activities/domain/entities/day_activity.dart';

class ActivityLocalDataSource {
  Future<DataResponse<List<DayActivity>>> getActivities({required List<String> categories}) async {
    try {
      String strData = await rootBundle.loadString('assets/json/day_activity.json');

      List<Map<String, dynamic>> json = List<Map<String, dynamic>>.from(jsonDecode(strData));

      var data = json.map((e) => DayActivity.fromJson(e)).toList();

      List<DayActivity> result = [];

      // Filter
      print(categories);

      if (categories.isNotEmpty) {
        for (var day in data) {
          List<ClassModel> classes = [];

          classes.addAll(day.classes
              .where(
                (cl) => categories.any(
                  (category) => cl.categories.contains(category.toLowerCase()),
                ),
              )
              .toList());
          print(categories);
          print(classes.map(
            (e) => e.price,
          ));

          result.add(
            DayActivity(date: day.date, classes: classes),
          );
        }
      } else {
        result.addAll(data);
      }

      return DataResponse(
        error: false,
        message: 'success',
        data: result,
      );
    } catch (e) {
      return DataResponse(
        error: true,
        message: e.toString(),
      );
    }
  }
}
