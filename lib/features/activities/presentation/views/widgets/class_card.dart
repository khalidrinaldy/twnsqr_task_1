part of '../activities_view.dart';

class _ClassCard extends StatelessWidget {
  const _ClassCard({super.key, required this.item});

  final ClassModel item;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        padding: EdgeInsets.symmetric(
          vertical: sizingInformation.isDesktop ? 12 : 8,
          horizontal: sizingInformation.isDesktop ? 32 : 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isDarkMode ? AppColors.black : AppColors.white,
          boxShadow: isDarkMode ? null : [AppEffectStyles.cardShadowEffect0],
          border: isDarkMode
              ? Border.all(
                  color: AppColors.neutral600,
                )
              : null,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      AppText(
                        item.time,
                        style: AppTextStyle.sfProDisplay.medium.copyWith(
                          fontSize: sizingInformation.isDesktop ? 14 : 12,
                          color: isDarkMode ? AppColors.white : AppColors.black,
                        ),
                      ),
                      8.margin,
                      AppText(
                        "(${item.duration})",
                        style: AppTextStyle.sfProDisplay.medium.copyWith(
                          fontSize: sizingInformation.isDesktop ? 14 : 12,
                          color: isDarkMode ? AppColors.neutral600 : AppColors.neutral500,
                        ),
                      ),
                    ],
                  ),
                  12.margin,
                  AppText(
                    item.title,
                    style: AppTextStyle.sfProDisplay.bold.copyWith(
                      fontSize: sizingInformation.isDesktop ? 20 : 14,
                      color: isDarkMode ? AppColors.white : AppColors.black,
                    ),
                  ),
                  12.margin,
                  Row(
                    children: [
                      SvgPicture.asset(
                        Assets.icons.icMarker,
                        width: 14,
                        height: 14,
                      ),
                      8.margin,
                      AppText(
                        item.location,
                        style: AppTextStyle.sfProDisplay.medium.copyWith(
                          fontSize: sizingInformation.isDesktop ? 14 : 12,
                          color: isDarkMode ? AppColors.neutral600 : AppColors.neutral500,
                        ),
                      ),
                    ],
                  ),
                  12.margin,
                  Wrap(
                    runSpacing: 5,
                    children: _buildTags(),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(
                    item.price,
                    style: AppTextStyle.sfProDisplay.bold.copyWith(
                      fontSize: sizingInformation.isDesktop ? 20 : 14,
                      color: isDarkMode ? AppColors.white : AppColors.black,
                    ),
                  ),
                ),
                16.margin,
                Builder(builder: (context) {
                  bool disabled = item.spotsLeft == 0 || item.status == "unavailable";
                  return AppButton.primary(
                    onTap: disabled ? null : () {},
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16,
                    ),
                    borderRadius: BorderRadius.circular(6),
                    backgroundColor: isDarkMode ? AppColors.white : AppColors.black,
                    label: item.spotsLeft == 0 ? "Sold Out" : "Join",
                    labelStyle: AppTextStyle.sfProDisplay.bold.copyWith(
                      fontSize: 14,
                      color: disabled || !isDarkMode ? AppColors.white : AppColors.black,
                    ),
                  );
                }),
              ],
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _buildTags() {
    List<Widget> tags = [
      _tagChip(
        label: ResponsiveBuilder(
          builder: (context, sizingInformation) => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                Assets.icons.icUser,
                width: sizingInformation.isDesktop ? 12 : 10,
                height: sizingInformation.isDesktop ? 12 : 10,
                colorFilter: ColorFilter.mode(
                  isDarkMode ? AppColors.neutral200 : AppColors.neutral600,
                  BlendMode.srcIn,
                ),
              ),
              4.margin,
              Text(
                "${item.spotsLeft} spots left",
                style: AppTextStyle.sfProDisplay.medium.copyWith(
                  fontSize: sizingInformation.isDesktop ? 12 : 10,
                  color: isDarkMode ? AppColors.neutral200 : AppColors.neutral600,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: isDarkMode ? AppColors.neutral600 : AppColors.neutral200,
      ),
    ];

    if (item.intensity != null) {
      tags.add(
        _tagChip(
          label: ResponsiveBuilder(
            builder: (context, sizingInformation) => Text(
              item.intensity!.name,
              style: AppTextStyle.sfProDisplay.bold.copyWith(
                fontSize: sizingInformation.isDesktop ? 12 : 10,
                color: item.intensity!.fgColor,
              ),
            ),
          ),
          backgroundColor: item.intensity!.bgColor,
        ),
      );
    }

    if (item.ageGroup != null) {
      tags.add(
        _tagChip(
          label: ResponsiveBuilder(
            builder: (context, sizingInformation) => Text(
              "ages ${item.ageGroup!.min}-${item.ageGroup!.max}",
              style: AppTextStyle.sfProDisplay.bold.copyWith(
                fontSize: sizingInformation.isDesktop ? 12 : 10,
                color: isDarkMode ? AppColors.childcareTag : AppColors.childcareTitle,
              ),
            ),
          ),
          backgroundColor: isDarkMode ? AppColors.childcareTitle : AppColors.childcareTag,
        ),
      );
    }

    if (item.childcare) {
      tags.add(
        _tagChip(
          label: ResponsiveBuilder(
            builder: (context, sizingInformation) => Text(
              "childcare",
              style: AppTextStyle.sfProDisplay.bold.copyWith(
                fontSize: sizingInformation.isDesktop ? 12 : 10,
                color: isDarkMode ? AppColors.childcareTag : AppColors.childcareTitle,
              ),
            ),
          ),
          backgroundColor: isDarkMode ? AppColors.childcareTitle : AppColors.childcareTag,
        ),
      );
    }

    if (item.workspace) {
      tags.add(
        _tagChip(
          label: ResponsiveBuilder(
            builder: (context, sizingInformation) => Text(
              "Workspace",
              style: AppTextStyle.sfProDisplay.bold.copyWith(
                fontSize: sizingInformation.isDesktop ? 12 : 10,
                color: AppColors.white,
              ),
            ),
          ),
          backgroundColor: AppColors.workplaceTag,
        ),
      );
    }

    return tags;
  }

  Widget _tagChip({
    required Widget label,
    required Color backgroundColor,
  }) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        margin: const EdgeInsets.only(right: 5),
        padding: sizingInformation.isDesktop
            ? const EdgeInsets.symmetric(
                vertical: 2,
                horizontal: 4,
              )
            : const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 8,
              ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(2),
        ),
        child: label,
      ),
    );
  }
}
