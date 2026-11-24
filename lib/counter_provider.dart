import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
 int countValue = 0;

 void increment() {
  countValue++;
   notifyListeners();
 }

 void decrement(){
  countValue--;
   notifyListeners();
 }
}
