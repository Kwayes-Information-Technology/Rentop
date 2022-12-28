import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rentop/injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(asExtension: false)
void configureInjection(String env) {
  init(getIt, environment: env);
}
