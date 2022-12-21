import 'package:mega_commons_dependencies/mega_commons_dependencies.dart';

import '../../../data/providers/player_profile_provider.dart';
import '../controllers/player_profile_controller.dart';

class PlayerProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlayerProfileProvider>(
      () => PlayerProfileProvider(
        restClientDio: Get.find(),
      ),
    );
    Get.lazyPut<PlayerProfileController>(
      () => PlayerProfileController(
        playerProfileProvider: Get.find(),
      ),
    );
  }
}
