import 'package:mega_commons/mega_commons.dart';

class PlayerProfileProvider {
  final RestClientDio _restClientDio;

  PlayerProfileProvider({required RestClientDio restClientDio})
      : _restClientDio = restClientDio;

  Future<MegaResponse> onSubmitRequest() async {
    final response = await _restClientDio.get('');
    return response;
  }
}
