import 'package:futmaneger/app/core/urls.dart';
import 'package:mega_commons/mega_commons.dart';
import 'package:mega_commons_dependencies/mega_commons_dependencies.dart';


class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    late String baseUrl;
    final EnvironmentUrl? environmentUrl = EnvironmentUrl.fromCache();

    if (environmentUrl == null) {
      baseUrl = BaseUrls.baseUrlDev;
    } else {
      baseUrl = environmentUrl.url!;
    }

    Get.put<RestClientDio>(
      RestClientDio(
        baseUrl,
      ),
    );
  }
}
