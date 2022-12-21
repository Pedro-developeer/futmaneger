import 'dart:io';

import 'package:flutter/material.dart';
import 'package:futmaneger/app/core/constants/constants.dart';
import 'package:futmaneger/app/routes/app_pages.dart';
import 'package:mega_commons/mega_commons.dart';

import 'package:mega_commons_dependencies/mega_commons_dependencies.dart';

import '../controllers/player_profile_controller.dart';

class PlayerProfileView extends GetView<PlayerProfileController> {
  const PlayerProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.kGreen,
          title: const Text(
            'Perfil do Jogador',
            style: AppTextStyles.fontAppBarSec,
          ),
          centerTitle: true,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                Get.toNamed(Routes.editProfile);
              },
              icon: const Icon(
                Icons.edit,
                color: AppColors.kWhite,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Center(
                  child: CircleAvatar(
                    radius: 48.0,
                    backgroundColor: AppColors.kWhite,
                    child: Visibility(
                      child: ClipOval(
                        child: Icon(
                          Icons.person_rounded,
                          size: 50,
                          color: AppColors.kGrey,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Nome do Jogador',
                  style: AppTextStyles.fontTextField,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 450,
                  decoration: BoxDecoration(
                    color: AppColors.kWhite,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Data de Nascimento",
                          style: AppTextStyles.fontTextField,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "27/10/1999",
                          style: AppTextStyles.fontTextSub,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Posição",
                          style: AppTextStyles.fontTextField,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Atacante",
                          style: AppTextStyles.fontTextSub,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Peso",
                          style: AppTextStyles.fontTextField,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "75 kg",
                          style: AppTextStyles.fontTextSub,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Altura",
                          style: AppTextStyles.fontTextField,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "1,80 m",
                          style: AppTextStyles.fontTextSub,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Nascionalidade",
                          style: AppTextStyles.fontTextField,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Brasileiro",
                          style: AppTextStyles.fontTextSub,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Salário",
                          style: AppTextStyles.fontTextField,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "R\$ 1.000.000,00",
                          style: AppTextStyles.fontTextSub,
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Excluir Jogador",
                    style: AppTextStyles.fontTextSubRed,
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
