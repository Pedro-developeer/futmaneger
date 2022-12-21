import 'package:flutter/material.dart';
import 'package:futmaneger/app/core/constants/constants.dart';
import 'package:futmaneger/app/routes/app_pages.dart';

import 'package:mega_commons_dependencies/mega_commons_dependencies.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.registerPlayers);
        },
        backgroundColor: AppColors.kGreen,
        child: const Icon(
          Icons.add,
          color: AppColors.kWhite,
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.kGreen,
        title: const Text(
          'Os Falcons',
          style: AppTextStyles.fontAppBarSec,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.toNamed(Routes.playerProfile);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                          color: AppColors.kWhite,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: AppColors.kGrey,
                              radius: 30,
                              child: Icon(Icons.person,
                                  size: 30, color: AppColors.kWhite),
                            ),
                            title: Text(
                              'Pedro Henrique',
                              style: AppTextStyles.fontTextTileTitle,
                            ),
                            subtitle: Text(
                              'Atacante \n20 anos',
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
