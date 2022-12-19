import 'package:mega_commons/mega_commons.dart';

class RegisterProvider {
  final RestClientDio _restClientDio;

  RegisterProvider({required RestClientDio restClientDio})
      : _restClientDio = restClientDio;

  Future<MegaResponse> onSubmitRequest() async {
    final response = await _restClientDio.get('');
    return response;
  }
}
