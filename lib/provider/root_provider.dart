import 'package:flutter/material.dart';

class RootProvider extends ChangeNotifier{
  int _activeTab = 0;

  int get activeTab => _activeTab;

  void updateTab(int index) {
    _activeTab = index;
    notifyListeners();
  }

}