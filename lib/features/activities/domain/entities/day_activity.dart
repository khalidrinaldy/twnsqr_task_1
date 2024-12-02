import 'dart:convert';

import 'package:twnsqr_task_1/features/activities/domain/entities/intensity.dart';

class DayActivity {
  final DateTime date;
  final List<ClassModel> classes;

  DayActivity({
    required this.date,
    required this.classes,
  });

  factory DayActivity.fromRawJson(String str) => DayActivity.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DayActivity.fromJson(Map<String, dynamic> json) => DayActivity(
        date: DateTime.now(),
        classes: List<ClassModel>.from(json["classes"].map((x) => ClassModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "date": date.toIso8601String(),
        "classes": List<dynamic>.from(classes.map((x) => x.toJson())),
      };
}

class ClassModel {
  final String time;
  final String duration;
  final String title;
  final String location;
  final int spotsLeft;
  final Intensity? intensity;
  final String price;
  final String status;
  final bool childcare;
  final AgeGroup? ageGroup;
  final bool workspace;

  ClassModel({
    required this.time,
    required this.duration,
    required this.title,
    required this.location,
    required this.spotsLeft,
    this.intensity,
    required this.price,
    required this.status,
    required this.childcare,
    this.ageGroup,
    required this.workspace,
  });

  factory ClassModel.fromRawJson(String str) => ClassModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ClassModel.fromJson(Map<String, dynamic> json) => ClassModel(
        time: json["time"],
        duration: json["duration"],
        title: json["title"],
        location: json["location"],
        spotsLeft: json["spots_left"],
        intensity: json["intensity"] == null ? null : json['intensity'].toString().toIntensity(),
        price: json["price"],
        status: json["status"],
        childcare: json["childcare"],
        ageGroup: json["age_group"] == null ? null : AgeGroup.fromJson(json["age_group"]),
        workspace: json["workspace"],
      );

  Map<String, dynamic> toJson() => {
        "time": time,
        "duration": duration,
        "title": title,
        "location": location,
        "spots_left": spotsLeft,
        "intensity": intensity,
        "price": price,
        "status": status,
        "childcare": childcare,
        "age_group": ageGroup?.toJson(),
        "workspace": workspace,
      };
}

class AgeGroup {
  final int min;
  final int max;

  AgeGroup({
    required this.min,
    required this.max,
  });

  factory AgeGroup.fromRawJson(String str) => AgeGroup.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AgeGroup.fromJson(Map<String, dynamic> json) => AgeGroup(
        min: json["min"],
        max: json["max"],
      );

  Map<String, dynamic> toJson() => {
        "min": min,
        "max": max,
      };
}
