import 'package:flutter/material.dart';
import 'package:mega_commons/shared/data/mega_data_cache.dart';
import 'package:mega_commons/shared/models/auth_token.dart';
import 'package:mega_commons/shared/utils/mega_one_signal_config.dart';
import 'package:mega_commons_dependencies/mega_commons_dependencies.dart';
import 'package:mega_features/app/firebase/firebase_config.dart';

import 'app/application_binding.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = 'pt_BR';
  initializeDateFormatting('pt_BR', null);
  await FirebaseConfig.initialize();
  await MegaDataCache.initialize();
  // await MegaOneSignalConfig.configure(
  //   appKey: 'c497aaff-05dc-4b40-9b26-c587a64b40d8',
  // );
  // final token = AuthToken.fromCache();
  // final initialRoute = token != null ? Routes.home : AppPages.initial;

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: true,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      initialBinding: ApplicationBinding(),
    ),
  );
}
