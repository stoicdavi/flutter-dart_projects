import 'package:flutter/material.dart';
//The [ChangeNotifier] class is a class in the Flutter SDK that provides a change notification mechanism.
// It is used to notify the listeners when the state of an object changes.
// The [Favorites] class extends the [ChangeNotifier] class to notify the listeners when the state of the favorite items changes.
// The [Favorites] class has a private list of integers, _favoriteItems, that stores the favorite item numbers.
// The [items] getter method returns the list of favorite item numbers.
// The [Favorites] class has two methods, add and remove, to add and remove an item number from the list of favorite items, respectively.
class Favorites extends ChangeNotifier {
  final List<int> _favoriteItems = [];

  List<int> get items => _favoriteItems;

  void add(int itemNo){
    _favoriteItems.add(itemNo);
    notifyListeners();
  }
  void remove(int itemNo){
    _favoriteItems.remove(itemNo);
    notifyListeners();
  }
}