part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const home = _Paths.home;
  static const login = _Paths.login;
  static const register = _Paths.register;
  static const registerTeam = _Paths.registerTeam;
  static const playerProfile = _Paths.playerProfile;
  static const registerPlayers = _Paths.registerPlayers;
  static const editProfile = _Paths.editProfile;
}

abstract class _Paths {
  _Paths._();

  static const home = '/home';
  static const login = '/login';
  static const register = '/register';
  static const registerTeam = '/register-team';
  static const playerProfile = '/player-profile';
  static const registerPlayers = '/register-players';
  static const editProfile = '/edit-profile';
}
