import 'package:mega_commons/mega_commons.dart';

class ForgotPasswordProvider {
  final RestClientDio _restClientDio;

  ForgotPasswordProvider({required RestClientDio restClientDio})
      : _restClientDio = restClientDio;

  Future<MegaResponse> onSubmitRequest() async {
    final response = await _restClientDio.get('');
    return response;
  }
}
