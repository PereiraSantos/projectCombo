
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class StoreCalculator extends ChangeNotifier{
  String value = "";
  List<String> valueInput = [];

  void getValue(String valueParam){
    if(valueParam == "C"){
      value = "";
      valueInput.clear();
    }else if(valueParam == "=" && valueInput.isNotEmpty && valueInput.last != "="){
      valueInput.add(valueParam);
      calculate();
    }else if(valueParam != "="){
      valueInput.add(valueParam);
      value += valueParam;
    }
    notifyListeners();
  }

  void calculate(){
    int addition = 0;
    int subtraction = 0;
    int division = 0;
    int multiplication = 0;
    int total = 0;
    String newValue = "";
    String operator =  "";

    for(var i = 0; i < valueInput.length; i++){
      if(valueInput[i] == "+"){
        if(addition == 0){
          if(operator != "" && operator != valueInput[i]){
            addition = subtraction - int.parse(newValue);
          }else{
            addition = int.parse(newValue);
          }

        }else{
          addition += int.parse(newValue);
        }

        newValue = "";
        operator = valueInput[i] ;
      }
      else if(valueInput[i] == "-" ){
        if(subtraction == 0){
          if(operator != "" && operator != valueInput[i]){
            subtraction = addition + int.parse(newValue);
          }else{
            subtraction = int.parse(newValue);
          }
        }else{
          subtraction -= int.parse(newValue);
        }

        newValue = "";
        operator = valueInput[i];
      }
      else if(valueInput[i] == "÷" ){
        if(division == 0){
          division = int.parse(newValue);
        }else{
          division ~/= int.parse(newValue);
        }

        newValue = "";
        operator = valueInput[i];

      }
      else if(valueInput[i] == "×" ){
        if(multiplication == 0){
          multiplication = int.parse(newValue);
        }else{
          multiplication *= int.parse(newValue);
        }

        newValue = "";
        operator = valueInput[i];
      }
      else{
        if(valueInput[i] == "="){
         if(operator == "+") total = addition + int.parse(newValue);
         if(operator == "-") total = subtraction - int.parse(newValue);
         if(operator == "÷" && int.parse(newValue) != 0) total = division ~/ int.parse(newValue);
         if(operator == "×") total = multiplication * int.parse(newValue);

         addition = 0;
         subtraction = 0;
         division = 0;
         multiplication = 0;
         newValue = total.toString();

        }else{
          newValue += valueInput[i];
        }

      }
    }

    value = total.toString();
    total = 0;
  }

}