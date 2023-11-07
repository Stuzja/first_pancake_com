import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:first_pancake_com/utils/app_colors.dart';
import 'package:first_pancake_com/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatefulWidget {
  final String hint;
  final String? value;
  final Function(String) onChanged;
  final int? maxLines;
  final int? maxTextLength;
  final bool onlyNumbers;
  final bool readOnly;
  final bool autocorrect;
  final String? error;
  final List<Widget>? actions;
  final List<Widget>? leading;
  final TextEditingController? controller;
  final TextStyle? errorTextStyle;
  final TextStyle? hintTextStyle;
  final TextStyle? filledTextStyle;
  final bool isFilled;
  final Color? backGroundColor;
  final List<TextInputFormatter>? inputFormatters;
  final bool showBorder;
  final bool autofocus;
  final bool hidePassword;
  final bool expand;

  final EdgeInsetsGeometry contentPadding;

  AppTextField({
    Key? key,
    required this.hint,
    required this.onChanged,
    this.actions,
    this.leading,
    this.value,
    this.error,
    this.maxLines,
    this.autocorrect = true,
    this.maxTextLength,
    this.onlyNumbers = false,
    this.readOnly = false,
    this.controller,
    this.errorTextStyle,
    this.isFilled = false,
    this.hintTextStyle,
    this.filledTextStyle,
    this.backGroundColor,
    this.inputFormatters,
    this.showBorder = true,
    this.autofocus = false,
    this.hidePassword = false,
    this.expand = false,
  })  : contentPadding = EdgeInsets.fromLTRB(
          leading == null ? 16.w : 0,
          16.h,
          actions == null ? 12.w : 0,
          16.h,
        ),
        super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  late final TextEditingController _defaultController;
  late final FocusNode _focusNode;
  bool _focused = false;
  bool _showText = true;

  TextStyle get _currentErrorStyle {
    return widget.errorTextStyle ?? AppTextStyles.semiBold18;
  }

  TextStyle get _currentHintStyle {
    return widget.hintTextStyle ??
        TextStyle(
          color: AppColors.grey2,
          fontSize: 16.sp,
          fontWeight: FontWeight.w300,
        );
  }

  TextStyle get _currentFilledStyle {
    return widget.filledTextStyle ??
        TextStyle(
          color: AppColors.grey2,
          fontSize: 16.sp,
          fontWeight: FontWeight.w300,
        );
  }

  TextEditingController get _currentTextController {
    return widget.controller ?? _defaultController;
  }

  List<TextInputFormatter> get _textFormatters {
    return [
      LengthLimitingTextInputFormatter(widget.maxTextLength),
      ...widget.inputFormatters ?? []
    ];
  }

  @override
  void initState() {
    _defaultController = TextEditingController();
    _currentTextController.addListener(() {
      widget.onChanged(_currentTextController.text);
    });

    _focusNode = FocusNode();
    _focusNode.addListener(_handleFocusChange);

    if (widget.value != _currentTextController.text) {
      final newValue = _currentTextController.value.copyWith(
        text: widget.value ?? '',
        selection: TextSelection.collapsed(offset: widget.value?.length ?? 0),
        composing: TextRange.empty,
      );
      _currentTextController.value = _textFormatters.fold<TextEditingValue>(
        newValue,
        (TextEditingValue newValue, TextInputFormatter formatter) =>
            formatter.formatEditUpdate(_currentTextController.value, newValue),
      );
    }

    super.initState();
  }

  @override
  void dispose() {
    _currentTextController.dispose();
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    if (_focusNode.hasFocus != _focused) {
      setState(() {
        _focused = _focusNode.hasFocus;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: AppColors.grey4,
              ),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Row(
              children: [
                if (widget.leading != null)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: widget.leading ?? [],
                  ),
                TextField(
                  obscureText: widget.hidePassword ? _showText : false,
                  autocorrect: widget.autocorrect,
                  focusNode: _focusNode,
                  readOnly: widget.readOnly,
                  keyboardType:
                      widget.onlyNumbers ? TextInputType.number : null,
                  autofocus: widget.autofocus,
                  inputFormatters: _textFormatters,
                  maxLines: widget.hidePassword
                      ? 1
                      : widget.expand
                          ? 10
                          : null,
                  controller: _currentTextController,
                  style: _currentFilledStyle,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: widget.contentPadding,
                    hintText: widget.hint,
                    hintStyle: _currentHintStyle,
                  ),
                  onEditingComplete: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                ).expanded(),
                if (widget.actions != null)
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: widget.actions ?? [],
                  ),
                if (widget.hidePassword)
                  AppTextFieldButton(
                    child: Icon(
                      _showText ? Icons.visibility : Icons.visibility_off,
                      color: AppColors.grey2,
                    ),
                    onPressed: () => setState(() {
                      _showText = !_showText;
                    }),
                  ),
              ],
            ),
          ),
        ),
        if (widget.error != null)
          Text(
            widget.error!,
            style: _currentErrorStyle,
          ).paddingOnly(left: 5.w),
      ],
    );
  }
}

class AppTextFieldButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;

  const AppTextFieldButton({
    Key? key,
    required this.child,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: SizedBox(
        width: 25.w,
        height: 35.h,
        child: Center(
          child: child,
        ),
      ).paddingOnly(left: 12.w, right: 10.w),
    );
  }
}
