import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;
  set phoneNumber(String _value) {
    _phoneNumber = _value;
  }

  bool _isMpinValidated = false;
  bool get isMpinValidated => _isMpinValidated;
  set isMpinValidated(bool _value) {
    _isMpinValidated = _value;
  }

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
  }

  bool _isNewUser = true;
  bool get isNewUser => _isNewUser;
  set isNewUser(bool _value) {
    _isNewUser = _value;
  }

  List<String> _realEstateType = ['Residential', 'Commercial'];
  List<String> get realEstateType => _realEstateType;
  set realEstateType(List<String> _value) {
    _realEstateType = _value;
  }

  void addToRealEstateType(String _value) {
    _realEstateType.add(_value);
  }

  void removeFromRealEstateType(String _value) {
    _realEstateType.remove(_value);
  }

  List<String> _insuranceType = [
    'Health Insurance',
    'Vehicle Insurance',
    'Home Insurance',
    'Fire Insurance',
    'Travel Insurance',
    'Term Life Insurance',
    'Whole Life Insurance',
    'Other Type Of Insurance'
  ];
  List<String> get insuranceType => _insuranceType;
  set insuranceType(List<String> _value) {
    _insuranceType = _value;
  }

  void addToInsuranceType(String _value) {
    _insuranceType.add(_value);
  }

  void removeFromInsuranceType(String _value) {
    _insuranceType.remove(_value);
  }

  List<String> _mutualFundType = [
    'Equity Mutual Fund',
    'Dividend Yield Mutual Fund',
    'ELSS Fund',
    'Overseas Fund',
    'Liquid Fund',
    'Overnight Fund',
    'Dynamic Bond Fund',
    'Corporate Bond Fund',
    'Banking & PSU Debt Fund',
    'Gilt Fund',
    'Floating Rate Fund',
    'Hybrid Mutual Fund',
    'Gold Mutual Fund',
    'Others'
  ];
  List<String> get mutualFundType => _mutualFundType;
  set mutualFundType(List<String> _value) {
    _mutualFundType = _value;
  }

  void addToMutualFundType(String _value) {
    _mutualFundType.add(_value);
  }

  void removeFromMutualFundType(String _value) {
    _mutualFundType.remove(_value);
  }

  List<String> _bankAccountType = ['Saving', 'Current'];
  List<String> get bankAccountType => _bankAccountType;
  set bankAccountType(List<String> _value) {
    _bankAccountType = _value;
  }

  void addToBankAccountType(String _value) {
    _bankAccountType.add(_value);
  }

  void removeFromBankAccountType(String _value) {
    _bankAccountType.remove(_value);
  }

  List<String> _bankInvestmentType = [
    'FD',
    'RD',
    'Saving Deposit',
    'Current Deposit',
    'PPF'
  ];
  List<String> get bankInvestmentType => _bankInvestmentType;
  set bankInvestmentType(List<String> _value) {
    _bankInvestmentType = _value;
  }

  void addToBankInvestmentType(String _value) {
    _bankInvestmentType.add(_value);
  }

  void removeFromBankInvestmentType(String _value) {
    _bankInvestmentType.remove(_value);
  }

  List<String> _jewelleryType = ['Gold', 'Platinum', 'Silver'];
  List<String> get jewelleryType => _jewelleryType;
  set jewelleryType(List<String> _value) {
    _jewelleryType = _value;
  }

  void addToJewelleryType(String _value) {
    _jewelleryType.add(_value);
  }

  void removeFromJewelleryType(String _value) {
    _jewelleryType.remove(_value);
  }

  List<String> _nomineemails = [];
  List<String> get nomineemails => _nomineemails;
  set nomineemails(List<String> _value) {
    _nomineemails = _value;
  }

  void addToNomineemails(String _value) {
    _nomineemails.add(_value);
  }

  void removeFromNomineemails(String _value) {
    _nomineemails.remove(_value);
  }

  List<String> _notificationoptions = [
    'Your nominees will install this app \nand get notified as soon as you \nadd  a new investment. This is the \nrecommended way.',
    'If your nominees cannot \ninstall the app or you do not wish\nto notify them as soon as \nyou add a new investment, we frequently \nsend you push notifications that\nrequire your confirmation. This lets \nus know that your health is good. \nIf we don\'t get any confirmation \nwe mail the details to the nominees.'
  ];
  List<String> get notificationoptions => _notificationoptions;
  set notificationoptions(List<String> _value) {
    _notificationoptions = _value;
  }

  void addToNotificationoptions(String _value) {
    _notificationoptions.add(_value);
  }

  void removeFromNotificationoptions(String _value) {
    _notificationoptions.remove(_value);
  }

  int _notificationCount = -1;
  int get notificationCount => _notificationCount;
  set notificationCount(int _value) {
    _notificationCount = _value;
  }

  bool _showWebview = false;
  bool get showWebview => _showWebview;
  set showWebview(bool _value) {
    _showWebview = _value;
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
