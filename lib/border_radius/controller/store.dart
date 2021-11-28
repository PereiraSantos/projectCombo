
import 'package:flutter/material.dart';

class Store extends ChangeNotifier{

  double valueTopLeft = 0.0;
  double valueBottomLeft = 0.0;
  double valueTopRight = 0.0;
  double valueBottomRight = 0.0;

  bool indicationTopLeft  = false;
  bool indicationBottomLeft  = false;
  bool indicationTopRight  = false;
  bool indicationBottomRight   = false;

  void modifiesTopLeft(double valueParam){
    changeIndicator();
    valueTopLeft = valueParam;
    indicationTopLeft = true;
    notifyListeners();
  }

  void modifiesBottomLeft(double valueParam){
    changeIndicator();
    valueBottomLeft = valueParam;
    indicationBottomLeft = true;
    notifyListeners();
  }

  void modifiesTopRight(double valueParam){
    changeIndicator();
    valueTopRight = valueParam;
    indicationTopRight = true;
    notifyListeners();
  }

  void modifiesBottomRight(double valueParam){
    changeIndicator();
    valueBottomRight = valueParam;
    indicationBottomRight = true;
    notifyListeners();
  }

  void changeIndicator(){
    indicationTopLeft  = false;
    indicationBottomLeft  = false;
    indicationTopRight  = false;
    indicationBottomRight   = false;
  }

}