import 'package:get_it/get_it.dart';
import 'package:nuzul/Core/services/api-services.dart';
import 'package:nuzul/Feature/Auth/data/auth-repo-impl.dart';
import 'package:nuzul/Feature/Auth/domain/repos/auth-repo.dart';

final getIt = GetIt.instance;
void setupGetIt() {
  getIt.registerSingleton<ApiService>(ApiService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(apiService: getIt<ApiService>()),
  );
}
