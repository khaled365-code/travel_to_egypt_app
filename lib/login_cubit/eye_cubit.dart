import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'eye_state.dart';

class EyeCubit extends Cubit<EyeState> {
  EyeCubit() : super(EyeInitial());

  bool seeText=false;
  bool obsecuretext=true;
  bool obsecurefun()
  {
    if(seeText==true)
    {
      obsecuretext=false;
    }
    else
    {
      obsecuretext=true;
    }
    emit(Securetextstate());
    return obsecuretext;
  }

  void changeEye()
  {

    seeText=!seeText;

    emit(Changeeyestate());

  }




}


