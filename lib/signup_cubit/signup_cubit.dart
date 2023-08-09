import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  bool obscecureText=true;

  bool seeText=false;


  bool obsecureFun()
  {
    if(seeText==true)
      {
        obscecureText=false;

      }
    else
      {
        obscecureText=true;

      }


    emit(Obsecureworksstate());

    return obscecureText;


  }

  void changeEye()
  {
    seeText=!seeText;
    emit(Changeeyestate());
  }

}
