part of '../dashboard_view.dart';

class _Drawer extends StatelessWidget {
  const _Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.black,
      width: 0.2125 * context.screenWidth,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 54, 40, 54),
        child: LayoutBuilder(
          builder: (context, constraints) => BlocBuilder<DashboardController, DashboardUIState>(
            builder: (context, state) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Image.asset(
                    Assets.icons.icLogo.path,
                    width: constraints.maxWidth * 0.6,
                  ),
                ),
                60.margin,
                ...state.drawerItems.map(
                  (e) => HoverWidget(
                    onTap: () {},
                    builder: (isHovered) => AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.only(bottom: 16, top: 16, left: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: isHovered ? AppColors.neutral100.withOpacity(0.2) : null,
                      ),
                      child: Row(
                        children: [
                          e.icon,
                          32.margin,
                          Text(
                            e.label,
                            style: AppTextStyle.sfProDisplay.size20.medium.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                32.margin,
                AppButton.primary(
                  onTap: () {},
                  prefixIcon: const Icon(
                    Icons.add_rounded,
                    size: 32,
                    color: AppColors.black,
                  ),
                  label: "Create",
                ),
                32.margin,
                _profileMenu(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _profileMenu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage("https://avatar.iran.liara.run/public"),
          radius: 18,
        ),
        Text(
          "Profile",
          style: AppTextStyle.sfProDisplay.size20.medium.copyWith(
            color: AppColors.white,
          ),
        ),
        PopupMenuButton(
          iconColor: AppColors.white,
          icon: const Icon(
            Icons.more_vert_rounded,
          ),
          itemBuilder: (context) => [
            const PopupMenuItem(
              child: Text("Logout"),
              value: "logout",
            )
          ],
        ),
      ],
    );
  }
}
