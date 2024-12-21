

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
        child: Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/sign_up_girl_img.png",height: 1300.h,width: 450.w,),
                  const SizedBox(width: 15,),
                  Container(
                    padding: EdgeInsets.only(top: 15.h, right: 110.w, left: 110.w),
                    //height: 1500.h,
                    width: 630.w,
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
                            fontSize: 35.sp,
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
                            fontSize: 15.sp,
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
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                               SizedBox(
                                height: 5.h,
                              ),
                              CustomTextField(
                                  text: "Enter Full Name",
                                  controller: name_controller),
                               SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Email",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                               SizedBox(
                                height: 5.h,
                              ),
                              CustomTextField(
                                  text: "Enter your email",
                                  controller: email_controller),
                               SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Password",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                             SizedBox(
                                height: 5.h,
                              ),
                              CustomTextField(
                                  text: "***************",
                                  controller: password_controller,
                                  suffixIcon: Icon(Icons.visibility_off),
                                  ),
                               SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Confirm Password",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                               SizedBox(
                                height: 5.h,
                              ),
                              CustomTextField(
                                  text: "******************",
                                  controller: confirm_password_controller,
                                  suffixIcon: Icon(Icons.visibility_off),
                                  ),
                               SizedBox(
                                height: 10.h,
                              ),
                            ],
                          ),
                        ),
                        
                         SizedBox(
                          height: 30.h,
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
                        
                         SizedBox(
                          height: 30.h,
                        ),
                        const DividerRow(text: "Or Sign Up With"),
                        
                       SizedBox(height: 20.h,),
                        CustomSocialButton(text: "Sign Up With Facebook", ontap: (){
                  
                        }, imgIcon: "assets/facebook_icon.png"),
                         SizedBox(height: 20.h,),
                        CustomSocialButton(text: "Sign Up With Google", ontap: (){
                            authController.login();
                        }, imgIcon: "assets/google_icon.png",
                        bgColor:const Color(0xffE8EBFF) ,
                        borderColor: const Color(0xffA9B5FE),),
                        
                         SizedBox(height: 25.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account?",
                            style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffFFFFFF),
                                ),
                            ),
                             SizedBox(width: 10.w,),
                            Text(
                                "Sign In Here",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xffFBBC05),
                                ),
                              ),
                          ],
                        ),
                        SizedBox(height: 20.h,)
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
      ),
    );
  }
}