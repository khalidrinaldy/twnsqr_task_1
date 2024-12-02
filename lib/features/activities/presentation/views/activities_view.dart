import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:twnsqr_task_1/features/activities/domain/entities/day_activity.dart';
import 'package:twnsqr_task_1/features/activities/domain/entities/intensity.dart';
import 'package:twnsqr_task_1/features/activities/presentation/bloc/list/activities_list_bloc.dart';
import 'package:twnsqr_task_1/features/activities/presentation/controllers/activities_controller.dart';
import 'package:twnsqr_task_1/core/utils/helper/helper.dart';
import 'package:twnsqr_task_1/core/utils/theme/color.dart';
import 'package:twnsqr_task_1/core/utils/theme/effect.dart';
import 'package:twnsqr_task_1/core/utils/theme/textstyle.dart';
import 'package:twnsqr_task_1/gen/assets.gen.dart';
import 'package:twnsqr_task_1/shared/widgets/button/app_button.dart';
import 'package:twnsqr_task_1/shared/widgets/filter/app_filter.dart';
import 'package:twnsqr_task_1/shared/widgets/form/app_textfield.dart';
import 'package:twnsqr_task_1/shared/widgets/text/text.dart';

part 'platform/mobile_view.dart';
part 'platform/desktop_view.dart';
part 'widgets/header.dart';
part 'widgets/progress.dart';
part 'widgets/weekly_workshops.dart';
part 'widgets/popular_events.dart';
part 'widgets/activities_list.dart';
part 'widgets/day_activity.dart';
part 'widgets/class_card.dart';

class ActivitiesView extends StatelessWidget {
  const ActivitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ActivitiesController(),
        ),
        BlocProvider(
          create: (context) => ActivitiesListBloc()..add(const ActivitiesListEvent.fetch()),
        ),
      ],
      child: Scaffold(
        backgroundColor: isDarkMode ? AppColors.black : AppColors.background,
        body: ResponsiveBuilder(
          builder: (context, sizingInformation) => AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            child: sizingInformation.isDesktop ? const _DesktopView() : const _MobileView(),
          ),
        ),
      ),
    );
  }
}
