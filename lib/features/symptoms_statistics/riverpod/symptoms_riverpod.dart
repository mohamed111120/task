import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final symptomsProvider = ChangeNotifierProvider<SymptomsProvider>((ref) {
  return SymptomsProvider();
});

class SymptomsProvider extends ChangeNotifier {
  String dropDownValue = 'week';

  void changeDropDownValue(String value) {
    dropDownValue = value;
    notifyListeners();
  }

  bool isSymptomsStatics = true;

  void changeIsSymptomsStatics(bool value) {
    isSymptomsStatics = value;
    notifyListeners();
  }

  bool isSymptomsReported = true;

  void changeIsSymptomsReported(bool isSelected) {
    isSymptomsReported = isSelected;
    notifyListeners();
  }

  List cartListItem = [
    {
      "title": "Hot Flashes",
      "percentage": "50%",
      "color": const Color(0xff57b899)
    },
    {"title": "Libido", "percentage": "5%", "color": const Color(0xff99b1e1)},
    {"title": "Sleep", "percentage": "5%", "color": const Color(0xffd5ad2a)},
    {"title": "Weight", "percentage": "15%", "color": const Color(0xffeb9b66)},
    {"title": "Dryness", "percentage": "50%", "color": const Color(0xff57b899)},
    {"title": "Gums", "percentage": "50%", "color": const Color(0xff90b0e9)},
  ];

  List improveListItem = [
    {
      "title": "Avoiding spicy food",
      "isSelected": true,
      "color": const Color(0xffdabb9c)
    },
    {
      "title": "Improving sleep",
      "isSelected": true,
      "color": const Color(0xffb7c4e6)
    },
    {
      "title": "Reducing alcohol",
      "isSelected": false,
      "color": const Color(0xff93799c)
    },
    {
      "title": "Doing resistance experiences",
      "isSelected": false,
      "color": const Color(0xffa182ab)
    },
  ];

  selectImproveListItem(int index, bool isSelected) {
    improveListItem[index]['isSelected'] = isSelected;
    notifyListeners();
  }
}
