import 'package:flutter/material.dart';

class CurrentPage with ChangeNotifier {
  PageController _pageController = PageController(initialPage: 0);
  PageController get pageController => _pageController;
  set pageController(PageController newpageController) {
    _pageController = newpageController;
    notifyListeners();
  }
}
