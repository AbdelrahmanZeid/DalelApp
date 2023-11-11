import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/dalel.dart';
import 'package:flutter/material.dart';
 
main()async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
 await getIt<CascheHelper>().init();
  runApp(
      const Dalel(),
    );
}
