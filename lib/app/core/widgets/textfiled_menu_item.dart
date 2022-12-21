import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:futmaneger/app/core/constants/constants.dart';


class TextFieldJogador extends StatefulWidget {
  const TextFieldJogador({
    Key? key,
  }) : super(key: key);

  @override
  State<TextFieldJogador> createState() => _TextFieldJogadorState();
}

FocusNode myFocusNode = FocusNode();

class _TextFieldJogadorState extends State<TextFieldJogador> {
  @override
  Widget build(BuildContext context) {
    return TextDropdownFormField(
      options: const [
        "Goleiro",
        "Zagueiro",
        "Lateral Direito",
        "Lateral Esquerdo",
        "Ala Direito",
        "Ala Esquerdo",
        "Volante",
        "Meio Campo",
        "Meia Armador",
        "Ponta Direita",
        "Ponta Esquerda",
        "Centro Avante",
      ],
      decoration: InputDecoration(
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
        labelText: "Posição",
        labelStyle: AppTextStyles.fontText,
        border: InputBorder.none,
        hintText: myFocusNode.hasFocus ? "Posições" : '',
        hintStyle: AppTextStyles.fontTextField,
      ),
      dropdownHeight: 100,
    );
  }
}
