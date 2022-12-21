import 'package:flutter/material.dart';
import 'package:futmaneger/app/core/constants/constants.dart';

class ButtonDefault extends StatelessWidget {
  const ButtonDefault({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
  }) : super(key: key);

  final String? text;
  final void Function()? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            AppColors.kGreen,
          ),
          elevation: MaterialStateProperty.all(1),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        onPressed: () {
          if (!isLoading) {
            onPressed!();
          }
        },
        child: !isLoading
            ? Text(
                text!,
                style: AppTextStyles.fontButton,
              )
            : const CircularProgressIndicator(
                color: AppColors.kWhite,
              ),
      ),
    );
  }
}
