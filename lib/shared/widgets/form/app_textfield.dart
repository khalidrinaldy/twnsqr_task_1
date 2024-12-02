import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twnsqr_task_1/core/utils/helper/helper.dart';
import 'package:twnsqr_task_1/core/utils/theme/color.dart';
import 'package:twnsqr_task_1/core/utils/theme/effect.dart';
import 'package:twnsqr_task_1/core/utils/theme/textstyle.dart';
import 'package:twnsqr_task_1/gen/assets.gen.dart';

part 'search_textfield.dart';

abstract class AppTextfield {
  static Widget searchTextField({
    required String name,
    required String hint,
    required TextEditingController controller,
    void Function(String? value)? onChanged,
  }) =>
      _SearchTextField(
        controller: controller,
        name: name,
        hint: hint,
        onChanged: onChanged,
      );
}
