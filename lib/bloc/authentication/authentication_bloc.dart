import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_bloc.freezed.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(): super(const AuthenticationState.initial()){
   on<AppStarted>((event, emit) => null);
   on<UserLoggedIn>((event, emit) => null);
   on<UserLoggedOut>((event, emit) => null);
  }

}
