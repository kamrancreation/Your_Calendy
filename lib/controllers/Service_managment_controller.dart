

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ServiceManagmentController extends GetxController{

  var selectedImage1 = Rx<XFile?>(null);
  Future<void> pickImage1() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      selectedImage1.value = pickedFile;
    }
  }
}