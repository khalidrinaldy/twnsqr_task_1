import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:twnsqr_task_1/features/dashboard/presentation/controllers/dashboard_controller.dart';
import 'package:twnsqr_task_1/core/utils/helper/helper.dart';
import 'package:twnsqr_task_1/core/utils/theme/color.dart';
import 'package:twnsqr_task_1/core/utils/theme/effect.dart';
import 'package:twnsqr_task_1/core/utils/theme/textstyle.dart';
import 'package:twnsqr_task_1/gen/assets.gen.dart';
import 'package:twnsqr_task_1/shared/widgets/button/app_button.dart';
import 'package:twnsqr_task_1/shared/widgets/hover/hover_widget.dart';

part 'widgets/bottom_nav_bar.dart';
part 'widgets/drawer.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardController(),
      child: ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
          bottomNavigationBar: !sizingInformation.isDesktop ? const _BottomNavBar() : null,
          // drawer: kIsWeb ? _Drawer() : null,
          backgroundColor: AppColors.background,
          body: BlocBuilder<DashboardController, DashboardUIState>(
            builder: (context, state) {
              return Row(
                children: [
                  if (sizingInformation.isDesktop)
                    const Expanded(
                      flex: 2,
                      child: _Drawer(),
                    ),
                  Expanded(
                    flex: 8,
                    child: state.bottomNavBars.elementAt(state.currentIndex).page,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
