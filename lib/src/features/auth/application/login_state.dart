class LoginState {
  final bool isRememberMeChecked;

  const LoginState({this.isRememberMeChecked = false});

  LoginState copyWith({bool? isRememberMeChecked}) {
    return LoginState(
      isRememberMeChecked: isRememberMeChecked ?? this.isRememberMeChecked,
    );
  }
}