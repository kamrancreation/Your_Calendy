import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_calendy/components/custom_button.dart';
import 'package:your_calendy/components/custom_footer.dart';
import 'package:your_calendy/components/custom_social_button.dart';
import 'package:your_calendy/components/custom_text_field.dart';
import 'package:your_calendy/components/deshboard_footer_column.dart';
import 'package:your_calendy/components/divider_row.dart';
import 'package:your_calendy/controllers/auth_controller.dart';
import 'package:your_calendy/controllers/sign_up_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

    SignupController controller =Get.put(SignupController());
    AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHight = screenSize.height;

    TextEditingController email_controller = TextEditingController();
    TextEditingController password_controller = TextEditingController();
    

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
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 10.h, right: 70, left: 70),
                //height: 700,
                width: 600.w,
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
                      "Sign In",
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
                      "Please Sign In with your Account",
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
                              text: "Enter your password",
                              controller: password_controller),
                          SizedBox(
                            height: 10.h,
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
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xffFBBC05),
                            ),
                          ),
                        ),
                      ],
                    ),
                     SizedBox(
                      height: 14.sp,
                    ),
                    Obx(() => controller.isLoadingSignIn.value
                ? Center(child: CircularProgressIndicator()) // Show loader
                :CustomButton(text: "SIGN IN", ontap: (){
                  final email = email_controller.text.trim();
                        final password = password_controller.text.trim();
                        controller.signInWithEmailAndPassword(email, password);
                    }), 
                  ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const DividerRow(text: "Or Sign In With"),
                    
                     SizedBox(height: 15.h,),
                    CustomSocialButton(text: "Sign In With Facebook", ontap: (){

                    }, imgIcon: "assets/facebook_icon.png"),
                     SizedBox(height: 15.h,),
                  CustomSocialButton(text: "Sign In With Google", ontap: (){
                      authController.login();
                    }, imgIcon: "assets/google_icon.png",
                    bgColor:const Color(0xffE8EBFF) ,
                    borderColor: const Color(0xffA9B5FE),),
                    
                    SizedBox(height: 15.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Didn’t have an account?",
                        style: GoogleFonts.plusJakartaSans(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffFFFFFF),
                            ),
                        ),
                        SizedBox(width: 10.w,),
                        Text(
                            "Sign up Here",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 14.sp,
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
            ),
            const SizedBox(height: 40,),
            CustomFooter()
          ],
        ),
      ),
    );
  }
}
