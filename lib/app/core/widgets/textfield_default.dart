import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:futmaneger/app/core/constants/constants.dart';

// ignore: must_be_immutable
class TextFieldDefault extends StatefulWidget {
  TextFieldDefault({
    Key? key,
    required this.height,
    required this.width,
    required this.hintText,
    this.onChanged,
    this.validator,
    required this.keyboardType,
    required this.suffixIcon,
    required this.labelText,
    this.inputFormatters,
    this.controller,
    this.obscureText,
    this.enabled = true,
  }) : super(key: key);

  final double? height;
  final double? width;
  final String? hintText;
  late bool enabled;
  final TextInputType? keyboardType;
  void Function(String)? onChanged;
  bool? obscureText = false;
  final String labelText;
  String? Function(String?)? validator;
  bool suffixIcon = false;
  List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  @override
  State<TextFieldDefault> createState() => _TextFieldDefaultState();
}

class _TextFieldDefaultState extends State<TextFieldDefault> {
  FocusNode myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextFormField(
        style: AppTextStyles.fontTextTile,
        validator: widget.validator,
        inputFormatters: widget.inputFormatters,
        controller: widget.controller,
        obscureText: widget.obscureText!,
        keyboardType: widget.obscureText!
            ? TextInputType.visiblePassword
            : widget.keyboardType,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          enabled: widget.enabled,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          fillColor: AppColors.kWhite,
          labelText: widget.labelText,
          labelStyle: AppTextStyles.fontText,
          border: InputBorder.none,
          hintText: myFocusNode.hasFocus ? widget.hintText : '',
          hintStyle: AppTextStyles.fontTextField,
          suffixIcon: widget.suffixIcon
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText!;
                    });
                  },
                  iconSize: 16,
                  icon: widget.obscureText!
                      ? const Icon(
                          Icons.remove_red_eye_outlined,
                          color: AppColors.kDark,
                          size: 23,
                        )
                      : const Icon(
                          Icons.remove_red_eye_rounded,
                          color: AppColors.kDark,
                          size: 23,
                        ),
                )
              : null,
        ),
        onChanged: widget.onChanged,
      ),
    );
  }
}
