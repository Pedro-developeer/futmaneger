import 'package:flutter/material.dart';
import 'package:futmaneger/app/core/constants/constants.dart';
import 'package:futmaneger/app/core/widgets/button_default.dart';
import 'package:futmaneger/app/core/widgets/textfield_default.dart';
import 'package:futmaneger/app/routes/app_pages.dart';

import 'package:mega_commons_dependencies/mega_commons_dependencies.dart';

import '../controllers/register_team_controller.dart';

class RegisterTeamView extends GetView<RegisterTeamController> {
  const RegisterTeamView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: AppColors.kDark,
          ),
          title: const Text(
            'Brasão do time',
            style: AppTextStyles.fontAppBar,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.kWhite,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/add.png',
                        height: 45,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFieldDefault(
                  labelText: "Nome do time",
                  suffixIcon: false,
                  obscureText: false,
                  height: 45,
                  width: double.infinity,
                  hintText: "Nome do time",
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 120,
                ),
                ButtonDefault(
                  text: "Cadastrar",
                  onPressed: () {
                    Get.toNamed(Routes.home);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
