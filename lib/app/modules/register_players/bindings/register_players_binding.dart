import 'package:mega_commons_dependencies/mega_commons_dependencies.dart';

import '../../../data/providers/register_players_provider.dart';
import '../controllers/register_players_controller.dart';

class RegisterPlayersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterPlayersProvider>(
      () => RegisterPlayersProvider(
        restClientDio: Get.find(),
      ),
    );
    Get.lazyPut<RegisterPlayersController>(
      () => RegisterPlayersController(
        registerPlayersProvider: Get.find(),
      ),
    );
  }
}
