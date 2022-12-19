import 'package:mega_commons/mega_commons.dart';

class ForgotSmsProvider {
  final RestClientDio _restClientDio;

  ForgotSmsProvider({required RestClientDio restClientDio})
      : _restClientDio = restClientDio;

  Future<MegaResponse> onSubmitRequest() async {
    final response = await _restClientDio.get('');
    return response;
  }
}
