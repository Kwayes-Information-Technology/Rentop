import 'package:injectable/injectable.dart';
import 'package:rentop/domain/repositories/i_splash_facade.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: ISplashFacade)
class SplashFacade implements ISplashFacade {
  final SharedPreferences sharedPreferences;
  SplashFacade(this.sharedPreferences);

  @override
  Future<bool> isReturnUser() async {
    final returnUser = sharedPreferences.getBool("returnUser");
    if (returnUser != null) {
      if (returnUser) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  @override
  Future<void> assignUserAsReturnUser() async {
    await sharedPreferences.setBool("returnUser", true);
    return;
  }
}
