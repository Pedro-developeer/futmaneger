import 'package:flutter/material.dart';
import 'package:futmaneger/app/core/constants/constants.dart';


class ButtonDefaultSocial extends StatelessWidget {
  const ButtonDefaultSocial({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    required this.image,
    required this.colorText,
    this.backgroundColor,
  }) : super(key: key);

  final String? text;
  final void Function()? onPressed;
  final bool isLoading;
  final Color? colorText;
  final String? image;
  final MaterialStateProperty<Color?>? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: backgroundColor,
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
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                        'assets/images/$image.png',
                        width: 25,
                      ),
                    ),
                  ),
                  Text(
                    text!,
                    style: AppTextStyles.fontTextButtonField.copyWith(
                      color: colorText,
                    ),
                  ),
                ],
              )
            : const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator(
                  color: AppColors.kWhite,
                ),
              ),
      ),
    );
  }
}
