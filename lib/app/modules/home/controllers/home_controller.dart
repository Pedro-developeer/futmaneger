import 'package:mega_commons_dependencies/mega_commons_dependencies.dart';

import '../../../data/providers/home_provider.dart';

class HomeController extends GetxController {
  final HomeProvider _homeProvider;

  HomeController({required HomeProvider homeProvider})
      : _homeProvider = homeProvider;
  @override
  void onInit() {
    //implement onInit
    super.onInit();
  }
}
