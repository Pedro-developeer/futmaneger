import 'package:flutter/material.dart';
import 'package:futmaneger/app/core/constants/constants.dart';
import 'package:futmaneger/app/core/widgets/button_default.dart';
import 'package:futmaneger/app/core/widgets/textfield_default.dart';
import 'package:futmaneger/app/routes/app_pages.dart';

import 'package:mega_commons_dependencies/mega_commons_dependencies.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo_tranparente.png"),
                TextFieldDefault(
                  labelText: "E-mail",
                  suffixIcon: false,
                  obscureText: false,
                  height: 50,
                  width: double.infinity,
                  hintText: "E-mail",
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFieldDefault(
                  labelText: "Senha",
                  suffixIcon: true,
                  obscureText: true,
                  height: 50,
                  width: double.infinity,
                  hintText: "Senha",
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                ButtonDefault(
                  text: "Entrar",
                  onPressed: () {
                    Get.toNamed(Routes.registerTeam);
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Ainda não tem uma conta?",
                  style: AppTextStyles.fontText,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.register);
                  },
                  child: const Text(
                    "Cadastre-se",
                    style: AppTextStyles.fontTextButton,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
