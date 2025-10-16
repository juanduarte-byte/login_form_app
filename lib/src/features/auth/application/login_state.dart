// lib/src/features/auth/application/login_state.dart

// Clase base abstracta
abstract class LoginState {
  const LoginState();
}

// Estado cuando la pantalla se carga por primera vez
class LoginInitial extends LoginState {
  const LoginInitial();
}

// Estado mientras se procesa el login
class LoginLoading extends LoginState {
  const LoginLoading();
}

// Estado cuando el login es exitoso
class LoginSuccess extends LoginState {
  const LoginSuccess();
}

// Estado si el login falla, con un mensaje de error
class LoginFailure extends LoginState {
  final String error;
  const LoginFailure({required this.error});
}