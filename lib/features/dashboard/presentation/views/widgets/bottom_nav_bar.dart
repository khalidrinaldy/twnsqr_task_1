part of '../dashboard_view.dart';

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          AppEffectStyles.responsiveMenuShadowEffect0,
        ],
      ),
      child: BlocBuilder<DashboardController, DashboardUIState>(
        builder: (context, state) {
          final controller = context.read<DashboardController>();
          return BottomNavigationBar(
            backgroundColor: isDarkMode ? AppColors.black : AppColors.white,
            currentIndex: state.currentIndex,
            onTap: (value) => controller.changeBottomNavBar(value),
            type: BottomNavigationBarType.fixed,
            items: state.bottomNavBars.map((item) {
              bool isActive = state.bottomNavBars.elementAt(state.currentIndex) == item;
              return BottomNavigationBarItem(
                icon: Column(
                  children: [
                    const Gap(12),
                    isActive ? item.activeIcon : item.icon,
                    // const Gap(4),
                    // Text(
                    //   item.label,
                    //   style: AppTextStyle.sfProDisplay.size12.copyWith(
                    //     fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                    //     color: isActive ? AppColors.primaryMain : AppColors.textPrimary,
                    //   ),
                    // )
                  ],
                ),
                label: "",
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
