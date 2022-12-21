import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:futmaneger/app/core/constants/constants.dart';
import 'package:futmaneger/app/core/widgets/button_default.dart';
import 'package:futmaneger/app/core/widgets/textfield_default.dart';
import 'package:futmaneger/app/core/widgets/textfiled_menu_item.dart';
import 'package:mega_commons/mega_commons.dart';

import 'package:mega_commons_dependencies/mega_commons_dependencies.dart';

import '../controllers/edit_profile_controller.dart';

class EditProfileView extends GetView<EditProfileController> {
  const EditProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kGreen,
        title: const Text(
          'Editar Perfil',
          style: AppTextStyles.fontAppBarSec,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: SingleChildScrollView(
          child: Form(
            // key: controller.formKey,
            child: Column(
              children: [
                Obx(
                  () => InkWell(
                    customBorder: const CircleBorder(),
                    onTap: () {
                      MegaFilePicker.showModalChooseImage(
                        context,
                        onFileSelected: (file) {
                          // controller.image = file!;
                          // controller.isPickedImage = true;
                        },
                      );
                    },
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 48.0,
                          backgroundColor: AppColors.kWhite,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (!controller.isPickedImage)
                                const Icon(
                                  Icons.person_outlined,
                                  color: AppColors.kDark,
                                  size: 24,
                                )
                              else
                                Flexible(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(48),
                                    child: Image.file(
                                      controller.image,
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              if (!controller.isPickedImage)
                                const Text(
                                  'Foto',
                                  style: AppTextStyles.fontText,
                                )
                              else
                                const SizedBox(),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: AppColors.kDark,
                              shape: BoxShape.circle,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(7.0),
                              child: Icon(
                                Icons.upload_rounded,
                                color: AppColors.kWhite,
                                size: 15,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    TextFieldDefault(
                      validator: Validatorless.multiple([
                        Validatorless.required('Campo obrigatório'),
                        Validatorless.min(3, 'Mínimo 3 caracteres'),
                      ]),
                      labelText: 'Nome do jogador',
                      inputFormatters: [
                        FilteringTextInputFormatter.deny(RegExp(r'^\s*$')),
                      ],
                      suffixIcon: false,
                      obscureText: false,
                      height: 60,
                      width: double.infinity,
                      hintText: 'Nome do jogador',
                      //controller: controller.nameController,
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFieldDefault(
                      validator: (value) {
                        if (value != null && !isDate(value)) {
                          return 'Data inválida';
                        }
                        if (value!.isAfterToday()) {
                          return 'Data inválida';
                        }
                        return null;
                      },
                      inputFormatters: [
                        // DateTextFormatter(),
                      ],
                      labelText: 'Data de Nascimento',
                      suffixIcon: false,
                      obscureText: false,
                      height: 60,
                      width: double.infinity,
                      hintText: 'Data de Nascimento',
                      // controller: controller.dateController,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFieldDefault(
                      validator: Validatorless.multiple([
                        Validatorless.required('Campo obrigatório'),
                        Validatorless.min(3, 'Mínimo 3 caracteres'),
                      ]),
                      labelText: 'Altura',
                      inputFormatters: [
                        FilteringTextInputFormatter.deny(RegExp(r'^\s*$')),
                      ],
                      suffixIcon: false,
                      obscureText: false,
                      height: 60,
                      width: double.infinity,
                      hintText: 'Altura',
                      //controller: controller.nameController,
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFieldDefault(
                  validator: Validatorless.multiple([
                    Validatorless.required('Campo obrigatório'),
                    Validatorless.min(3, 'Mínimo 3 caracteres'),
                  ]),
                  labelText: 'Peso',
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(RegExp(r'^\s*$')),
                  ],
                  suffixIcon: false,
                  obscureText: false,
                  height: 60,
                  width: double.infinity,
                  hintText: 'Peso',
                  //controller: controller.nameController,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextFieldJogador(),
                const SizedBox(
                  height: 30,
                ),
                TextFieldDefault(
                  validator: Validatorless.multiple([
                    Validatorless.required('Campo obrigatório'),
                    Validatorless.min(3, 'Mínimo 3 caracteres'),
                  ]),
                  labelText: 'Nacionalidade',
                  inputFormatters: [
                    FilteringTextInputFormatter.deny(RegExp(r'^\s*$')),
                  ],
                  suffixIcon: false,
                  obscureText: false,
                  height: 60,
                  width: double.infinity,
                  hintText: 'Nacionalidade',
                  //controller: controller.nameController,
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFieldDefault(
                  validator: Validatorless.multiple([
                    Validatorless.required('Campo obrigatório'),
                    Validatorless.min(3, 'Mínimo 3 caracteres'),
                  ]),
                  labelText: 'Salário',
                  inputFormatters: [],
                  suffixIcon: false,
                  obscureText: false,
                  height: 60,
                  width: double.infinity,
                  hintText: 'Salário',
                  //controller: controller.nameController,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors.kGreen,
                      value: true,
                      onChanged: (value) {
                        // controller.isCheck.value = value!;
                      },
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(3.0),
                        ),
                      ),
                    ),
                    const Text(
                      'Este jogador se encontra lesionado?',
                      style: AppTextStyles.fontTextField,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ButtonDefault(
                  // isLoading: controller.isLoading,
                  text: 'Atualizar',
                  onPressed: () {
                    // Get.snackbar(
                    //   'Atenção',
                    //   'Você precisa aceitar os termos de uso',
                    //   backgroundColor: AppColors.kDark,
                    //   colorText: AppColors.kWhite,
                    //   snackPosition: SnackPosition.BOTTOM,
                    // );
                  },
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
