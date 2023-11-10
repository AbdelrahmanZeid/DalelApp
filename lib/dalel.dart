import 'package:dalel/core/routes/app_routes.dart';
import 'package:dalel/core/utils/theme_manager.dart';
import 'package:flutter/material.dart';

class Dalel extends StatelessWidget {
  const Dalel({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeManager.getTheme(),
        routerConfig: router,
      );
}
