import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ltemanager2/injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() => $initGetIt(getIt);
