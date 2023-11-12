import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/features/auth/presentation/views/forget_password_view.dart';
import 'package:dalel/features/auth/presentation/views/sign_in_view.dart';
import 'package:dalel/features/auth/presentation/views/sign_up_view.dart';
import 'package:dalel/features/auth/view_model/cubits/auth_cubit.dart';
import 'package:dalel/features/home/presentation/views/home_view.dart';
import 'package:dalel/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:dalel/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      path: '/home',
      builder: (context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: '/forgetPassword',
      builder: (context, GoRouterState state) {
        return const ForgetPasswordView();
      },
    ),
    GoRoute(
      path: '/sign_up',
      builder: (context, GoRouterState state) {
        return BlocProvider(
          create: (context) =>AuthCubit(),
          child: const SignUpView(),
        );
      },
    ),
    GoRoute(
      path: '/sign_in',
      builder: (context, GoRouterState state) {
        return BlocProvider(
          create: (context) => AuthCubit(),
          child: const SignInView(),
        );
      },
    ),
  ],
);
