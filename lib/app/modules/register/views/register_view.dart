import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:futmaneger/app/core/constants/constants.dart';
import 'package:futmaneger/app/core/widgets/button_default.dart';
import 'package:futmaneger/app/core/widgets/textfield_default.dart';

import 'package:mega_commons_dependencies/mega_commons_dependencies.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: AppColors.kDark,
        ),
        title: const Text(
          'Cadastro',
          style: AppTextStyles.fontAppBar,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 120,
                ),
                TextFieldDefault(
                  validator: Validatorless.multiple([
                    Validatorless.required('Campo obrigatório'),
                    Validatorless.min(3, 'Mínimo 3 caracteres'),
                  ]),
                  labelText: "Nome",
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(RegExp(r'^\s*$')),
                  ],
                  suffixIcon: false,
                  obscureText: false,
                  height: 60,
                  width: double.infinity,
                  hintText: "Nome",
                  //controller: controller.nameController,
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFieldDefault(
                  validator: Validatorless.multiple([
                    Validatorless.required('Campo obrigatório'),
                    Validatorless.email('Email inválido'),
                  ]),
                  labelText: "E-mail",
                  suffixIcon: false,
                  obscureText: false,
                  height: 60,
                  width: double.infinity,
                  hintText: "E-mail",
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(RegExp(r"\s\b|\b\s")),
                  ],
                  // controller: controller.emailController,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFieldDefault(
                  labelText: "Senha",
                  suffixIcon: true,
                  height: 60,
                  obscureText: true,
                  width: double.infinity,
                  validator: Validatorless.multiple([
                    Validatorless.required('Campo obrigatório'),
                  ]),
                  hintText: "Senha",
                  keyboardType: TextInputType.visiblePassword,
                  //controller: controller.passwordController,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFieldDefault(
                  labelText: "Confirmar senha",
                  suffixIcon: true,
                  height: 60,
                  obscureText: true,
                  validator: Validatorless.multiple(
                    [
                      Validatorless.required('Campo obrigatório'),
                      // Validatorless.compare(
                      //   controller.passwordController,
                      //   'As senhas não coincidem',
                      // ),
                    ],
                  ),
                  width: double.infinity,
                  hintText: "Confirmar senha",
                  keyboardType: TextInputType.visiblePassword,
                  //controller: controller.confirmPasswordController,
                ),
                const SizedBox(
                  height: 120,
                ),
                ButtonDefault(
                  text: 'Cadastrar',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 45,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
