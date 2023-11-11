import 'package:dalel/features/auth/presentation/views/sign_in_view.dart';
import 'package:dalel/features/auth/presentation/views/sign_up_view.dart';
import 'package:dalel/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:dalel/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: '/onBoarding',
        builder: (context, GoRouterState state) {
          return const OnBoardingView();
        },
      ),
      GoRoute(
        path: '/sign_up',
        builder: (context, GoRouterState state) {
          return const SignUpView();
        },
      ),
      GoRoute(
        path: '/sign_in',
        builder: (context, GoRouterState state) {
          return const SignInView();
        },
      ),
    ],
  );
