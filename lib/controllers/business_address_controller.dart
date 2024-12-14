

import 'package:get/get.dart';

class BusinessAddressController extends GetxController{
  var cities = <String>['New York', 'Los Angeles', 'Chicago', 'Houston', 'Phoenix'].obs;
  var selectedCity = ''.obs;

  void setSelectedCity(String city) {
    selectedCity.value = city;
  }
}