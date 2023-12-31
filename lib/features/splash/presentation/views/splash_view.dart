import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_functions.dart';
import 'package:dalel/features/splash/presentation/widgets/splash_view_body.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnBoardingVisited =
        getIt<CascheHelper>().getData(key: "isOnBoardingVisited") ?? false;
    if (isOnBoardingVisited == true) {
      FirebaseAuth.instance.currentUser==null?
      delayFunction(context, "/sign_in"):
      FirebaseAuth.instance.currentUser!.emailVerified==true?delayFunction(context, "/home"):
      delayFunction(context, "/sign_in");
    } else {
      delayFunction(context, '/onBoarding');
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SplashViewBody(),
      ),
    );
  }
}

void delayFunction(context, path) {
  Future.delayed(
    const Duration(
      seconds: 2,
    ),
    () {
      navigationWithReplacment(context, path);
    },
  );
}
