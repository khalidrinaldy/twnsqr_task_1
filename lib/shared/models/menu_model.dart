import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_model.freezed.dart';

@freezed
class MenuModel with _$MenuModel {
  const factory MenuModel({
    required Widget page,
    required Widget activeIcon,
    required Widget icon,
    required String label,
    required bool showInBottomNav,
  }) = _MenuModel;
}
