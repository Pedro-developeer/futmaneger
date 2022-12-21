import 'package:mega_commons_dependencies/mega_commons_dependencies.dart';

import '../../../data/providers/player_profile_provider.dart';

class PlayerProfileController extends GetxController {
  final PlayerProfileProvider _playerProfileProvider;

  PlayerProfileController(
      {required PlayerProfileProvider playerProfileProvider})
      : _playerProfileProvider = playerProfileProvider;
  @override
  void onInit() {
    //implement onInit
    super.onInit();
  }
}
