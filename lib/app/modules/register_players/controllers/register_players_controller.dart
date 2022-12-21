import 'dart:io';

import 'package:mega_commons_dependencies/mega_commons_dependencies.dart';

import '../../../data/providers/register_players_provider.dart';

class RegisterPlayersController extends GetxController {
  final RegisterPlayersProvider _registerPlayersProvider;

  RegisterPlayersController(
      {required RegisterPlayersProvider registerPlayersProvider})
      : _registerPlayersProvider = registerPlayersProvider;
  @override
  void onInit() {
    //implement onInit
    super.onInit();
  }

  final Rx<File> _image = File('').obs;
  File get image => _image.value;
  set image(File value) {
    _image.value = value;
  }

  final RxBool _isPickedImage = false.obs;
  bool get isPickedImage => _isPickedImage.value;
  set isPickedImage(bool value) => _isPickedImage.value = value;
}
