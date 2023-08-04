import 'package:counter_app_using_provider/counterModel.dart';
import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier{

  CounterModel counterModel = CounterModel();

  int get count => counterModel.count;

  void increment(){
    counterModel.increment();
    notifyListeners();
  }
  void decrement(){
    counterModel.decrement();
    notifyListeners();
  }

}

