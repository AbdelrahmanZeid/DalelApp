 abstract class AuthStates{}

class AuthInit extends AuthStates{}
class SignUpLoadigState extends AuthStates{}
class SignUpSuccessState extends AuthStates{}
class SignUpFailuerState extends AuthStates {

   final String errMessage;
  SignUpFailuerState({
    required this.errMessage,
  });
}
class SignInLoadigState extends AuthStates{}
class SignInSuccessState extends AuthStates{}
class SignInFailuerState extends AuthStates {

   final String errMessage;
  SignInFailuerState({
    required this.errMessage,
  });
}
class ForgetPasswordLoadigState extends AuthStates{}
class ForgetPasswordSuccessState extends AuthStates{}
class ForgetPasswordFailuerState extends AuthStates {

   final String errMessage;
  ForgetPasswordFailuerState({
    required this.errMessage,
  });
}

class TermAndConditionSuccessState extends AuthStates{}
class ChangeTextSuccessState extends AuthStates{}
