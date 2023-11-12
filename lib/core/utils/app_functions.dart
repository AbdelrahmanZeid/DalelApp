 import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
 import 'package:go_router/go_router.dart';

navigation(context, String path) {
  GoRouter.of(context).push(path);
}

navigationWithReplacment(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}

void checkUserState() {
  FirebaseAuth.instance.authStateChanges().listen(
    (User? user) {
      if (user == null) {
        if (kDebugMode) {
          print('User is currently signed out!');
        }
      } else {
        if (kDebugMode) {
          print('User is signed in!');
        }
      }
    },
  );
}

// void showToast({required String message}) {
//   Fluttertoast.showToast(
//       msg: message,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.CENTER,
//       timeInSecForIosWeb: 1,
//       backgroundColor: AppColor.primaryColor,
//       textColor: AppColor.black,
//       fontSize: 14.0);
// }
