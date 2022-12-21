import 'package:mega_commons/mega_commons.dart';

class RegisterPlayersProvider {
  final RestClientDio _restClientDio;

  RegisterPlayersProvider({required RestClientDio restClientDio})
      : _restClientDio = restClientDio;

  Future<MegaResponse> onSubmitRequest() async {
    final response = await _restClientDio.get('');
    return response;
  }
}
