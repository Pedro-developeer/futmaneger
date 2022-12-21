import 'package:mega_commons/mega_commons.dart';

class EditProfileProvider {
  final RestClientDio _restClientDio;

  EditProfileProvider({required RestClientDio restClientDio})
      : _restClientDio = restClientDio;

  Future<MegaResponse> onSubmitRequest() async {
    final response = await _restClientDio.get('');
    return response;
  }
}
