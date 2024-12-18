import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Observable variables for loading state
  var isLoading = false.obs;
  var isLoadingSignIn = false.obs;


  Future<void> signUp(String name, String email, String password) async {
    try {
      isLoading.value = true; // Start loading

      // Create a new user with Firebase Auth
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Get the user ID from the created user
      String uid = userCredential.user!.uid;

      // Save user details in the Firestore "users" collection
      // await _firestore.collection('users').doc(uid).set({
      //   'name': name,
      //   'email': email,
      //   'uid': uid,
      //   'createdAt': FieldValue.serverTimestamp(),
      // });

      // Navigate to the next screen after successful signup
      // Get.offAllNamed('/home'); // Replace with your home screen route

      Get.snackbar('Success', 'Account created successfully!',
          snackPosition: SnackPosition.BOTTOM);
    } on FirebaseAuthException catch (e) {
      // Handle Firebase-specific errors
      Get.snackbar('Error', e.message ?? 'Something went wrong!',
          snackPosition: SnackPosition.BOTTOM);
    } catch (e) {
      // Handle generic errors
      Get.snackbar('Error', 'Failed to sign up. Please try again.',
          snackPosition: SnackPosition.BOTTOM);
    } finally {
      isLoading.value = false; 
    }
  }

   Future<void> signInWithEmailAndPassword(String email, String password) async {
  try {
    // Start loading
    isLoadingSignIn.value = true;

    // Firebase sign-in operation
    UserCredential result = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    // Successful sign-in
    Get.snackbar(
      'Success',
      'Signed in successfully!',
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );

  } catch (e) {
    // Handle error
    print("Sign-In Error: $e");
    Get.snackbar(
      'Error',
      'Failed to sign in. Please check your email and password.',
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );

  } finally {
    // Stop loading
    isLoadingSignIn.value = false;
  }
}
}
