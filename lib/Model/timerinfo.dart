import 'package:flutter/cupertino.dart';

class timerinfo extends ChangeNotifier{
int _remainingtime=60;
int getRemainitime () => _remainingtime;
UpdatereamingTime(){
  _remainingtime--;
  notifyListeners();
}

}