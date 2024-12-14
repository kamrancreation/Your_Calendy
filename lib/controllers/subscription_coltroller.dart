

import 'package:get/get.dart';

class SubscriptionColtroller extends GetxController{
  var cities = <String>['New York', 'Los Angeles', 'Chicago', 'Houston', 'Phoenix'].obs;
  var selectedCity = ''.obs;

  void setSelectedCity(String city) {
    selectedCity.value = city;
  }
}