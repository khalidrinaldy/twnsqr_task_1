part of 'app_button.dart';

class _PrimaryButton extends StatelessWidget {
  const _PrimaryButton({
    super.key,
    required this.onTap,
    this.backgroundColor = AppColors.primary600,
    this.foregroundColor = AppColors.black,
    this.borderRadius,
    required this.label,
    this.labelStyle,
    this.prefixIcon,
    this.suffixIcon,
    this.padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
  });

  final void Function()? onTap;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final BorderRadius? borderRadius;
  final String label;
  final TextStyle? labelStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(100),
        ),
        disabledBackgroundColor: isDarkMode ? AppColors.neutral600 : AppColors.neutral500,
        minimumSize: Size.zero,
        padding: padding,
        elevation: 0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (prefixIcon != null) ...{
            prefixIcon!,
            32.margin,
          },
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              label,
              style: labelStyle ??
                  AppTextStyle.sfProDisplay.size20.bold.copyWith(
                    color: foregroundColor,
                  ),
            ),
          ),
          if (suffixIcon != null) ...{
            12.margin,
            suffixIcon!,
          },
        ],
      ),
    );
  }
}
