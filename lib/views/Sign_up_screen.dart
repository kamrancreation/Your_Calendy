

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_calendy/components/custom_button.dart';
import 'package:your_calendy/components/custom_footer.dart';
import 'package:your_calendy/components/custom_social_button.dart';
import 'package:your_calendy/components/custom_text_field.dart';
import 'package:your_calendy/components/divider_row.dart';
import 'package:your_calendy/controllers/auth_controller.dart';
import 'package:your_calendy/controllers/sign_up_controller.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final SignupController signupController = Get.put(SignupController());
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHight = screenSize.height;

    TextEditingController email_controller = TextEditingController();
    TextEditingController password_controller = TextEditingController();
    TextEditingController name_controller = TextEditingController();
    TextEditingController confirm_password_controller = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30.h,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/sign_up_girl_img.png",height: 600,),
                const SizedBox(width: 15,),
                Container(
                  padding: EdgeInsets.only(top: 10.h, right: 70, left: 70),
                  //height: 700,
                  width: screenWidth /2,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Colors.white,
                          Color(0xFF003366),
                        ],
                        begin: Alignment.topCenter, // Start of the gradient
                        end: Alignment.bottomCenter, // End of the gradient
                      ),
                      borderRadius: BorderRadius.circular(20.r)),
                  child: Column(
                    children: [
                      Text(
                        "Sign Up",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: screenWidth >= 600 ? 30 : 18,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff003366),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Create an account to begin your Journey With Us!",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: screenWidth >= 600.0 ? 25 : 15,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff003366),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Full Name",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: screenWidth >= 600.0 ? 15 : 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                                text: "Enter Full Name",
                                controller: name_controller),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Email",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: screenWidth >= 600.0 ? 15 : 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                                text: "Enter your email",
                                controller: email_controller),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Password",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: screenWidth >= 600.0 ? 15 : 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                                text: "***************",
                                controller: password_controller),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Confirm Password",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: screenWidth >= 600.0 ? 15 : 17,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomTextField(
                                text: "******************",
                                controller: confirm_password_controller),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "Forget Password?",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xffFBBC05),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Obx(() {
              return signupController.isLoading.value
                  ? CircularProgressIndicator()
                  : 
                  CustomButton(text: "SIGN UP", ontap: (){
                 String name = name_controller.text.trim();
                        String email = email_controller.text.trim();
                        String password = password_controller.text.trim();

                        if (name.isNotEmpty &&
                            email.isNotEmpty &&
                            password.isNotEmpty) {
                          signupController.signUp(name, email, password);
                        } else {
                          Get.snackbar('Error', 'All fields are required',
                              snackPosition: SnackPosition.BOTTOM);
                        }
                      });
                  
            }),
                      
                      const SizedBox(
                        height: 30,
                      ),
                      const DividerRow(text: "Or Sign Up With"),
                      
                      const SizedBox(height: 15,),
                      CustomSocialButton(text: "Sign Up With Facebook", ontap: (){
                
                      }, imgIcon: "assets/facebook_icon.png"),
                      const SizedBox(height: 15,),
                      CustomSocialButton(text: "Sign Up With Google", ontap: (){
                          authController.login();
                      }, imgIcon: "assets/google_icon.png",
                      bgColor:const Color(0xffE8EBFF) ,
                      borderColor: const Color(0xffA9B5FE),),
                      
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",
                          style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xffFFFFFF),
                              ),
                          ),
                          const SizedBox(width: 10,),
                          Text(
                              "Sign In Here",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xffFBBC05),
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 20,)
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40,),
            // ignore: prefer_const_constructors
            CustomFooter()

          ],
        ),
      ),
    );
  }
}