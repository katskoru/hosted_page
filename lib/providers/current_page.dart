import 'package:flutter/material.dart';

class CurrentPage with ChangeNotifier {
  PageController _pageController = PageController(initialPage: 0);
  PageController get pageController => _pageController;
  set pageController(PageController newpageController) {
    _pageController = newpageController;
    notifyListeners();
  }

  // int _currentPage = 0;
  // int get currentPage => _currentPage;

  // set currentPage(int newcurrentPage) {
  //   _currentPage = newcurrentPage;
  //   notifyListeners();
  // }

  // setCurrentPage(int val) {
  //   _currentPage = val;
  //   notifyListeners();
  // }
}
