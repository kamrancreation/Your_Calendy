

import 'package:get/get.dart';
import 'package:your_calendy/models/day_model.dart';

class BusinessHoursController extends GetxController{
  

   RxBool monday = false.obs;
   RxBool tuesday = false.obs;
   RxBool wednesday = false.obs;
   RxBool thursday = false.obs;
   RxBool friday = false.obs;
   RxBool saturday = false.obs;
   RxBool sunday = false.obs;


  // Method to toggle the state
  void toggleSwitchMonday(bool value) {
    monday.value = value;
  }
  void toggleSwitchTuesday(bool value) {
    tuesday.value = value;
  }void toggleSwitchWednesday(bool value) {
    wednesday.value = value;
  }void toggleSwitchThursday(bool value) {
    thursday.value = value;
  }void toggleSwitchFriday(bool value) {
    friday.value = value;
  }void toggleSwitchSaturday(bool value) {
    saturday.value = value;
  }void toggleSwitchSunday(bool value) {
    sunday.value = value;
  }
  
}