part of 'app_textfield.dart';

class _SearchTextField extends StatefulWidget {
  const _SearchTextField({
    super.key,
    required this.name,
    required this.hint,
    required this.controller,
    this.onChanged,
  });

  final String name;
  final String hint;
  final TextEditingController controller;
  final void Function(String? value)? onChanged;

  @override
  State<_SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<_SearchTextField> {
  final focusNode = FocusNode();
  String text = '';

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: context.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [AppEffectStyles.cardShadowEffect0],
      ),
      child: FormBuilderTextField(
        focusNode: focusNode,
        name: widget.name,
        controller: widget.controller,
        onChanged: (value) {
          setState(() {
            text = value!;
          });
          if (widget.onChanged != null) {
            widget.onChanged!(value);
          }
        },
        style: AppTextStyle.sfProDisplay.size14.medium,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 24),
          isDense: true,
          hintText: widget.hint,
          hintStyle: AppTextStyle.sfProDisplay.size14.regular.copyWith(
            color: AppColors.neutral500,
          ),
          suffixIcon: UnconstrainedBox(
            child: InkWell(
              onTap: () => widget.controller.clear(),
              child: SvgPicture.asset(
                Assets.icons.icSearch,
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(
                  text.isEmpty ? AppColors.neutral500 : AppColors.primary500,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          filled: true,
          fillColor: AppColors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.primary500,
            ),
          ),
          hoverColor: Colors.transparent,
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.veryHighIntensity,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColors.veryHighIntensity,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
