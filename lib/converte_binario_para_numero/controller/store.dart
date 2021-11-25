
import 'package:flutter/material.dart' hide Action, State;
import 'package:project_combo/converte_binario_para_numero/pages/use_case/convert.dart';

class Store extends ChangeNotifier{

  int value = 0;

  void concatenate(String valueParam){
    if(valueParam != ""){
      value = Convert.convertDecimal(int.parse(valueParam));
    }else{
      value = 0;
    }
    notifyListeners();
  }
}