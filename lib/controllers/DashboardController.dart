import 'package:get/get.dart';

class DashboardController extends GetxController {
  // Current screen name, default is "Home"
  var currentScreen = 'Home'.obs;

  // Update the current screen
  void updateScreen(String screen) {
    currentScreen.value = screen;
  }
}
