import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pestov_test/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<GetIt> configureDependencies() async => GetIt.asNewInstance().init();
