import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _showMenu = false;
  bool get showMenu => _showMenu;
  set showMenu(bool _value) {
    _showMenu = _value;
  }

  bool _showFilter = false;
  bool get showFilter => _showFilter;
  set showFilter(bool _value) {
    _showFilter = _value;
  }

  String _FilterOption = 'All';
  String get FilterOption => _FilterOption;
  set FilterOption(String _value) {
    _FilterOption = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
