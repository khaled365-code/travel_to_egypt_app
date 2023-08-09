import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'eye_state.dart';

class EyeCubit extends Cubit<EyeState> {
  EyeCubit() : super(EyeInitial());

  bool eye_on=true;
  bool obsecuretext=true;
  bool obsecurefun()
  {
    if(eye_on==true)
    {
      obsecuretext=true;
    }
    else
    {
      obsecuretext=false;
    }
    emit(Securetextstate());
    return obsecuretext;
  }

  void changeEye()
  {

    eye_on=!eye_on;

    emit(Changeeyestate());

  }




}


