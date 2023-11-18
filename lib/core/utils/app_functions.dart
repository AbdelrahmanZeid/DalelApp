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

void showSBar({required String message, required context}) {
  SnackBar sBar = SnackBar(
    content: Center(
      child: Text(message),
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(
    sBar,
  );
}

showAlertDiolog({
  required context,
 
  required String title,
}) {
  final alert = AlertDialog(
    title: Text(
      title,
    ),
    content: SizedBox(
      height: 100,
      child: Column(
        children: [
       const   Text("Are you sure ?"),
      const    SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                child:const Text(
                  "Yes",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                child:const Text(
                  "Cancel",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
  showDialog(
    context: context,
    builder: (context) {
      return alert;
    },
  );
}
