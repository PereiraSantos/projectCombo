
import 'package:flutter/material.dart';

class Store extends ChangeNotifier{

  double valueTopLeft = 0.0;
  double valueBottomLeft = 0.0;
  double valueTopRight = 0.0;
  double valueBottomRight = 0.0;

  void modifiesTopLeft(double valueParam){
    valueTopLeft = valueParam;
    notifyListeners();
  }

  void modifiesBottomLeft(double valueParam){
    valueBottomLeft = valueParam;
    notifyListeners();
  }

  void modifiesTopRight(double valueParam){
    valueTopRight = valueParam;
    notifyListeners();
  }

  void modifiesBottomRight(double valueParam){
    valueBottomRight = valueParam;
    notifyListeners();
  }

}