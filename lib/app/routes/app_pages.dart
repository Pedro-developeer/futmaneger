import 'package:get/get.dart';
import 'package:mega_features/mega_features.dart';
import '../modules/edit_profile/bindings/edit_profile_binding.dart';
import '../modules/edit_profile/views/edit_profile_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/views/login_view.dart';
import '../modules/player_profile/bindings/player_profile_binding.dart';
import '../modules/player_profile/views/player_profile_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/register_players/bindings/register_players_binding.dart';
import '../modules/register_players/views/register_players_view.dart';
import '../modules/register_team/bindings/register_team_binding.dart';
import '../modules/register_team/views/register_team_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const initial = Routes.login;
  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
      binding: LoginBinding(
        homeRoute: Routes.home,
      ),
    ),
    GetPage(
      name: _Paths.register,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.registerTeam,
      page: () => const RegisterTeamView(),
      binding: RegisterTeamBinding(),
    ),
    GetPage(
      name: _Paths.playerProfile,
      page: () => const PlayerProfileView(),
      binding: PlayerProfileBinding(),
    ),
    GetPage(
      name: _Paths.registerPlayers,
      page: () => const RegisterPlayersView(),
      binding: RegisterPlayersBinding(),
    ),
    GetPage(
      name: _Paths.editProfile,
      page: () => const EditProfileView(),
      binding: EditProfileBinding(),
    ),
  ];
}
