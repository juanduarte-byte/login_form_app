// lib/src/features/auth/application/login_cubit.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  // El estado inicial ahora es LoginInitial
  LoginCubit() : super(const LoginInitial());

  // Nueva función para manejar el proceso de login
  Future<void> login(String email, String password) async {
    // 1. Emitimos el estado de carga
    emit(const LoginLoading());

    // 2. Simulamos una llamada a un servidor
    await Future.delayed(const Duration(seconds: 2));

    // 3. Lógica de negocio simple
    if (password == '123456') {
      emit(const LoginSuccess());
    } else {
      emit(const LoginFailure(error: 'Invalid credentials. Try "123456"'));
    }
  }
}