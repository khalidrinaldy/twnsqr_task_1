import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twnsqr_task_1/core/utils/helper/helper.dart';
import 'package:twnsqr_task_1/core/utils/theme/color.dart';
import 'package:twnsqr_task_1/gen/assets.gen.dart';
import 'package:twnsqr_task_1/shared/models/menu_model.dart';
import 'package:twnsqr_task_1/features/activities/presentation/views/activities_view.dart';
import 'package:twnsqr_task_1/features/communities/presentation/views/communities_view.dart';
import 'package:twnsqr_task_1/features/locations/presentation/views/locations_view.dart';
import 'package:twnsqr_task_1/features/notifications/presentation/views/notifications_view.dart';
import 'package:twnsqr_task_1/features/services/presentation/views/services_view.dart';

part 'dashboard_controller.freezed.dart';

class DashboardController extends Cubit<DashboardUIState> {
  DashboardController()
      : super(
          DashboardUIState(
            bottomNavBars: [
              MenuModel(
                page: const ActivitiesView(),
                activeIcon: Icon(
                  Icons.calendar_today,
                  color: isDarkMode ? AppColors.primary600 : AppColors.primary500,
                ),
                icon: Icon(
                  Icons.calendar_today_outlined,
                  color: isDarkMode ? AppColors.white : AppColors.black,
                ),
                label: "Activities",
                showInBottomNav: true,
              ),
              MenuModel(
                page: const LocationsView(),
                activeIcon: Icon(
                  Icons.map_rounded,
                  color: isDarkMode ? AppColors.primary600 : AppColors.primary500,
                ),
                icon: Icon(
                  Icons.map_outlined,
                  color: isDarkMode ? AppColors.white : AppColors.black,
                ),
                label: "Locations",
                showInBottomNav: true,
              ),
              MenuModel(
                page: const LocationsView(),
                activeIcon: const SizedBox(),
                icon: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isDarkMode ? AppColors.primary500 : AppColors.primary200,
                  ),
                  child: const Icon(
                    Icons.add_rounded,
                    color: AppColors.black,
                  ),
                ),
                label: "Locations",
                showInBottomNav: true,
              ),
              MenuModel(
                page: const CommunitiesView(),
                activeIcon: Icon(
                  Icons.group_rounded,
                  color: isDarkMode ? AppColors.primary600 : AppColors.primary500,
                ),
                icon: SvgPicture.asset(
                  Assets.icons.icGroup,
                  color: isDarkMode ? AppColors.white : AppColors.black,
                ),
                label: "Communities",
                showInBottomNav: true,
              ),
              MenuModel(
                page: const ServicesView(),
                activeIcon: Icon(
                  Icons.star_rounded,
                  color: isDarkMode ? AppColors.primary600 : AppColors.primary500,
                ),
                icon: Icon(
                  Icons.star_outline_rounded,
                  color: isDarkMode ? AppColors.white : AppColors.black,
                ),
                label: "CCTV",
                showInBottomNav: true,
              ),
            ],
            drawerItems: [
              const MenuModel(
                page: ActivitiesView(),
                activeIcon: const Icon(
                  Icons.calendar_today,
                  color: AppColors.white,
                ),
                icon: Icon(
                  Icons.calendar_today_outlined,
                  color: AppColors.white,
                ),
                label: "Activities",
                showInBottomNav: false,
              ),
              const MenuModel(
                page: LocationsView(),
                activeIcon: Icon(
                  Icons.map_rounded,
                  color: AppColors.white,
                ),
                icon: Icon(
                  Icons.map_outlined,
                  color: AppColors.white,
                ),
                label: "Locations",
                showInBottomNav: false,
              ),
              const MenuModel(
                page: ServicesView(),
                activeIcon: Icon(
                  Icons.star_rounded,
                  color: AppColors.white,
                ),
                icon: Icon(
                  Icons.star_outline_rounded,
                  color: AppColors.white,
                ),
                label: "Services",
                showInBottomNav: false,
              ),
              MenuModel(
                page: const CommunitiesView(),
                activeIcon: const Icon(
                  Icons.group_rounded,
                  color: AppColors.white,
                ),
                icon: SvgPicture.asset(
                  Assets.icons.icGroup,
                  color: AppColors.white,
                ),
                label: "Communities",
                showInBottomNav: false,
              ),
              MenuModel(
                page: const NotificationsView(),
                activeIcon: SvgPicture.asset(
                  Assets.icons.icNotification,
                  color: AppColors.white,
                ),
                icon: SvgPicture.asset(
                  Assets.icons.icNotification,
                  color: AppColors.white,
                ),
                label: "Notifications",
                showInBottomNav: false,
              ),
            ],
            currentIndex: 0,
          ),
        );

  void changeBottomNavBar(int index) {
    if (index == 2) {
      return;
    }
    emit(state.copyWith(currentIndex: index));
  }

  void changeDrawerItem(int index) {
    emit(state.copyWith(currentIndex: index));
  }
}

@freezed
class DashboardUIState with _$DashboardUIState {
  const factory DashboardUIState({
    required List<MenuModel> bottomNavBars,
    required List<MenuModel> drawerItems,
    required int currentIndex,
  }) = _DashboardUIState;
}
