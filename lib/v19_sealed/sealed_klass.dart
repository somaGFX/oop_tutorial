
sealed class AuthenticationState {}

class Authenticated extends AuthenticationState {
  final String userId;
  Authenticated(this.userId);
}

class Unauthenticated extends AuthenticationState {}

class Loading extends AuthenticationState {}
