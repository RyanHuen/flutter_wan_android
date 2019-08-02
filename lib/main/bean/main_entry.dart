import 'package:flutter/material.dart';

class MainEntry {
  String _name;
  IconData _selectedIcon;
  IconData _normalIcon;

  MainEntry(this._name, this._selectedIcon, this._normalIcon);

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  IconData get selectedIcon => _selectedIcon;

  set selectedIcon(IconData value) {
    _selectedIcon = value;
  }

  IconData get normalIcon => _normalIcon;

  set normalIcon(IconData value) {
    _normalIcon = value;
  }
}
