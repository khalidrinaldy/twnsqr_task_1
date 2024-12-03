import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:twnsqr_task_1/core/utils/helper/helper.dart';
import 'package:twnsqr_task_1/core/utils/theme/color.dart';
import 'package:twnsqr_task_1/core/utils/theme/textstyle.dart';
import 'package:twnsqr_task_1/gen/assets.gen.dart';
import 'package:twnsqr_task_1/shared/widgets/hover/hover_widget.dart';

class FilterModel<T> extends Equatable {
  final String label;
  final T value;
  const FilterModel({required this.label, required this.value});
  
  @override
  List<Object?> get props => [label, value];
}

class AppFilter<T> extends StatelessWidget {
  const AppFilter({
    super.key,
    required this.value,
    required this.filters,
    required this.onTapIconFilter,
    required this.onReset,
    required this.onChanged,
  });

  final List<FilterModel<T>> value;
  final List<FilterModel<T>> filters;
  final void Function() onTapIconFilter;
  final void Function() onReset;
  final void Function(FilterModel<T> value) onChanged;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => sizingInformation.isDesktop
          ? Flex(
              direction: Axis.horizontal,
              children: _children,
            )
          : SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              child: Row(
                children: _children,
              ),
            ),
    );
  }

  List<Widget> get _children {
    return [
      _chip(
        onTap: onTapIconFilter,
        isSelected: false,
        icon: SvgPicture.asset(
          Assets.icons.icFilter,
          width: 18,
          height: 18,
        ),
      ),
      _chip(
        onTap: onReset,
        isSelected: value.isEmpty,
        label: "All",
      ),
      ...filters.map(
        (e) => _chip(
          onTap: () => onChanged(FilterModel(label: e.label, value: e.value)),
          isSelected: value.contains(e),
          label: e.label,
        ),
      ),
    ];
  }

  Widget _chip({required void Function() onTap, required bool isSelected, Widget? icon, String? label}) {
    return HoverWidget(
      onTap: onTap,
      builder: (isHovered) => ResponsiveBuilder(
        builder: (context, sizingInformation) => AnimatedContainer(
          height: 32,
          margin: const EdgeInsets.only(right: 8),
          duration: const Duration(milliseconds: 150),
          padding: sizingInformation.isDesktop
              ? const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
              : const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: isSelected
                ? AppColors.secondaryB400
                : isHovered
                    ? AppColors.secondaryB400
                    : isDarkMode
                        ? AppColors.secondaryB300
                        : AppColors.secondaryB200,
          ),
          child: Center(
            child: icon ??
                Text(
                  label!,
                  style: AppTextStyle.sfProDisplay.size14.regular,
                ),
          ),
        ),
      ),
    );
  }
}
