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

class TermAndConditionSuccessState extends AuthStates{}
class ChangeTextSuccessState extends AuthStates{}
