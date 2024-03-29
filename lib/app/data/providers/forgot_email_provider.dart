import 'package:mega_commons/mega_commons.dart';

class ForgotEmailProvider {
  final RestClientDio _restClientDio;

  ForgotEmailProvider({required RestClientDio restClientDio})
      : _restClientDio = restClientDio;

  Future<MegaResponse> onSubmitRequest() async {
    final response = await _restClientDio.get('');
    return response;
  }
}
