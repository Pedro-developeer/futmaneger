import 'package:mega_commons_dependencies/mega_commons_dependencies.dart';

import '../../../data/providers/login_provider.dart';
import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginProvider>(
      () => LoginProvider(
        restClientDio: Get.find(),
      ),
    );
    Get.lazyPut<LoginController>(
      () => LoginController(
        loginProvider: Get.find(),
      ),
    );
  }
}
