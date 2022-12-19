import 'package:mega_commons_dependencies/mega_commons_dependencies.dart';

import '../../../data/providers/login_provider.dart';

class LoginController extends GetxController {
  final LoginProvider _loginProvider;

  LoginController({required LoginProvider loginProvider})
      : _loginProvider = loginProvider;
  @override
  void onInit() {
    //implement onInit
    super.onInit();
  }
}
