import 'package:go_router/go_router.dart';

navigation(context, String path) {
  GoRouter.of(context).push(path);
}

navigationWithReplacment(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}


