

import '../../constants.dart';
import '../../models/employer_model.dart';

abstract class AuthenticationStates {}

class AuthenticationInitialState extends AuthenticationStates {}

class AuthinticationLoadingState extends AuthenticationStates {}
class LoadedState extends AuthenticationStates {}

class AuthenticationSuccessState extends AuthenticationStates {
  final EmployerModel employer;
  final AuthenticationPlatform? authenticationPlatform;
  AuthenticationSuccessState(
      {required this.employer,  this.authenticationPlatform});
}

class AuthenticationFailedState extends AuthenticationStates {
  final String errorMessage;
  AuthenticationFailedState({required this.errorMessage});
}

class ForgetPasswordEmailSentState extends AuthenticationStates {
  final String email;
  ForgetPasswordEmailSentState({required this.email});
}

class EmailVerficationSentState extends AuthenticationStates {
  final String email;
  EmailVerficationSentState({required this.email});
}

class AuthLogedOutState extends AuthenticationStates {}
