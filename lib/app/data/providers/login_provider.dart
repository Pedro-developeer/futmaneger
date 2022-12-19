import 'package:mega_commons/mega_commons.dart';

class LoginProvider {
  final RestClientDio _restClientDio;

  LoginProvider({required RestClientDio restClientDio})
      : _restClientDio = restClientDio;

  Future<MegaResponse> onSubmitRequest() async {
    final response = await _restClientDio.get('');
    return response;
  }
}
