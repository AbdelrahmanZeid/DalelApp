import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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

void showSBar({required String message,required context}) {
 
  SnackBar sBar = SnackBar(
    content: Text(message),
  );
  ScaffoldMessenger.of(context).showSnackBar(
    sBar,
  );
}
