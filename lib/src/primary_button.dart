import 'package:flutter/material.dart';

class ChowButton extends StatelessWidget {
  const ChowButton(
      {super.key,
      this.width = double.infinity,
      this.height = 55.0,
      this.title = 'Button',
      required this.onTap,
      this.icon = false,
      this.loading = false,
      this.fontSize = 15,
      this.color,
      this.textStyle,
      this.disabled,
      this.iconWidget,
      this.borderRadius = 8});
  final double? width;
  final double? height;
  final String? title;
  final bool? loading;
  final bool? icon;
  final Widget? iconWidget;
  final double? fontSize;
  final VoidCallback? onTap;
  final double borderRadius;
  final Color? color;
  final TextStyle? textStyle;
  final bool? disabled;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onTap,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              color ?? Theme.of(context).colorScheme.primary),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)
          )),
          textStyle: MaterialStateProperty.all<TextStyle>(textStyle ??
              TextStyle(fontSize: fontSize, fontWeight: FontWeight.w500)),
          maximumSize: MaterialStateProperty.all<Size>(Size.fromWidth(width!)),
          fixedSize: MaterialStateProperty.all<Size>(Size.fromHeight(height!))),
      child: Center(
        child: loading!
            ? const SizedBox(
                height: 22,
                width: 22,
                child: CircularProgressIndicator()
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(visible: icon! ? true : false, child: iconWidget!),
                  const SizedBox(
                    width: 10
                  ),
                  Text(
                    title!,
                    textAlign: TextAlign.center,
                    style: textStyle ??
                        TextStyle(
                            fontSize: fontSize, fontWeight: FontWeight.w500)
                  )
                ]
              )
      )
    );
  }
}
