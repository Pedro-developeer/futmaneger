import 'package:mega_commons/mega_commons.dart';

class HomeProvider {
  final RestClientDio _restClientDio;

  HomeProvider({required RestClientDio restClientDio})
      : _restClientDio = restClientDio;

  Future<MegaResponse> onSubmitRequest() async {
    final response = await _restClientDio.get('');
    return response;
  }
}
