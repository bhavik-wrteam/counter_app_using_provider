
import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier{

  //CounterModel counterModel = CounterModel();
     int _count = 0;
  int get count => _count;

  void increment(){

    _count++;
    notifyListeners();
  }
  void decrement(){
   _count--;
    notifyListeners();
  }

}

