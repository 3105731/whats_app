import 'package:flutter/material.dart';
import '../themes/color_app.dart';
import '../themes/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor,
    this.borderRadius,
    required this.text,
    this.fontSized,
    this.textColor,
    required this.func,
    this.width,
    this.height = 60,
    this.isLoading = false,
    this.svgPicture,
  });

  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  final double? fontSized;
  final String text;
  final VoidCallback func;
  final bool isLoading;
  final Widget? svgPicture;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width ?? double.infinity,
        height: height,
        child: ElevatedButton(
          onPressed: isLoading ? null : func, // Disable button when loading
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor ?? ColorApp.primaryColor,
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(24),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isLoading
                  ? const CircularProgressIndicator()
                  : Text(
                text,
                style: textColor != null ? Styles.textStyle24.copyWith(color: textColor) : Styles.textStyle24_2,
              ),
              const SizedBox(width: 15),
              if (svgPicture != null) ...[
                svgPicture!,
              ],
            ],
          ),
        ),
      ),
    );
  }
}