import 'package:dalel/features/auth/view_model/cubits/auth_states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit()
      : super(
          AuthInit(),
        );

  static AuthCubit get(context) => BlocProvider.of(context);
  final signUpFormKey = GlobalKey<FormState>();
  final signInFormKey = GlobalKey<FormState>();
  final forgetPasswordFormKey = GlobalKey<FormState>();

  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  bool textVisable = true;
  bool isActive = false;
  signUpWithEmailAndPassword() async {
    try {
      emit(
        SignUpLoadigState(),
      );

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      emit(
        SignUpSuccessState(),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(
          SignUpFailuerState(errMessage: 'The password provided is too weak.'),
        );
      } else if (e.code == 'email-already-in-use') {
        emit(
          SignUpFailuerState(
              errMessage: 'The account already exists for that email.'),
        );
      }
    } catch (e) {
      emit(
        SignUpFailuerState(
          errMessage: e.toString(),
        ),
      );
    }
  }

  void switchTermAndCondition({required bool newValue}) {
    isActive = newValue;
    emit(
      TermAndConditionSuccessState(),
    );
  }

  void changeValue() {
    textVisable = !textVisable;
    emit(
      ChangeTextSuccessState(),
    );
  }

  signInWithEmailAndPasswod() async {
    try {
      emit(
        SignInLoadigState(),
      );
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress!,
        password: password!,
      );
      verifyEmail();
      emit(
        SignInSuccessState(),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(
          SignInFailuerState(errMessage: 'No user found for that email.'),
        );
      } else if (e.code == 'wrong-password') {
        emit(
          SignInFailuerState(
              errMessage: 'Wrong password provided for that user.'),
        );
      }
    } catch (error) {
      emit(
        SignInFailuerState(
          errMessage: error.toString(),
        ),
      );
    }
  }

  verifyEmail() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  resetPaswwordWithLink() async {
    try {
      emit(ForgetPasswordLoadigState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailAddress!);
      emit(ForgetPasswordSuccessState());
    } catch (e) {
      emit(ForgetPasswordFailuerState(errMessage: e.toString()));
    }
  }
}
