import 'package:flutter/foundation.dart';

class SliderProvider with ChangeNotifier{

  double _sliderValue = 0.5;

  double get sliderValue => _sliderValue;

  set sliderValue(double newValue){
    _sliderValue = newValue;
    notifyListeners();
  }
}