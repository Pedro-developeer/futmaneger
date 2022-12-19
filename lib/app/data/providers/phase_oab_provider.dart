import 'package:mega_commons/mega_commons.dart';

class PhaseOabProvider {
  final RestClientDio _restClientDio;

  PhaseOabProvider({required RestClientDio restClientDio})
      : _restClientDio = restClientDio;

  Future<MegaResponse> onSubmitRequest() async {
    final response = await _restClientDio.get('');
    return response;
  }
}
