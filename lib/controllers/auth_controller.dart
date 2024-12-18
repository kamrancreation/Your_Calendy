import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  final _googleSignIn = GoogleSignIn();

  var googleAccount = Rx<GoogleSignInAccount?>(null);

  login()async{
    try{
    googleAccount.value =await _googleSignIn.signIn();
    Get.snackbar("Success", "Logged in successfully");
    }catch(e){
      print(e.toString());
    }
  }

 
}