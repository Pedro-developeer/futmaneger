import 'package:mega_commons/mega_commons.dart';

class WelcomeProvider {
  final RestClientDio _restClientDio;

  WelcomeProvider({required RestClientDio restClientDio})
      : _restClientDio = restClientDio;

  Future<MegaResponse> onSubmitRequest() async {
    final response = await _restClientDio.get('');
    return response;
  }
}
