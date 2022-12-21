import 'package:mega_commons/mega_commons.dart';

class RegisterTeamProvider {
  final RestClientDio _restClientDio;

  RegisterTeamProvider({required RestClientDio restClientDio})
      : _restClientDio = restClientDio;

  Future<MegaResponse> onSubmitRequest() async {
    final response = await _restClientDio.get('');
    return response;
  }
}
