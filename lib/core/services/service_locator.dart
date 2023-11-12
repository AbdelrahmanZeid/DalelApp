import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/features/auth/view_model/cubits/auth_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<CascheHelper>(
    CascheHelper(),
  );
  getIt.registerSingleton<AuthCubit>(
    AuthCubit(),
  );
}
