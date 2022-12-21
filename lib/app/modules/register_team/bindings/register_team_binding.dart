import 'package:mega_commons_dependencies/mega_commons_dependencies.dart';

import '../../../data/providers/register_team_provider.dart';
import '../controllers/register_team_controller.dart';

class RegisterTeamBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterTeamProvider>(
      () => RegisterTeamProvider(
        restClientDio: Get.find(),
      ),
    );
    Get.lazyPut<RegisterTeamController>(
      () => RegisterTeamController(
        registerTeamProvider: Get.find(),
      ),
    );
  }
}
