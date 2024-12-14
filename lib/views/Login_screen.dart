import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_calendy/components/custom_button.dart';
import 'package:your_calendy/components/custom_footer.dart';
import 'package:your_calendy/components/custom_social_button.dart';
import 'package:your_calendy/components/custom_text_field.dart';
import 'package:your_calendy/components/deshboard_footer_column.dart';
import 'package:your_calendy/components/divider_row.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                width: 702,
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
                        fontSize: screenWidth >= 600 ? 30 : 18,
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
                              text: "Enter your password",
                              controller: password_controller),
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
                    CustomButton(text: "SIGN IN", ontap: (){

                    }),
                    const SizedBox(
                      height: 30,
                    ),
                    const DividerRow(text: "Or Sign In With"),
                    
                    const SizedBox(height: 15,),
                    CustomSocialButton(text: "Sign In With Facebook", ontap: (){

                    }, imgIcon: "assets/facebook_icon.png"),
                    const SizedBox(height: 15,),
                    CustomSocialButton(text: "Sign In With Google", ontap: (){

                    }, imgIcon: "assets/google_icon.png",
                    bgColor:const Color(0xffE8EBFF) ,
                    borderColor: const Color(0xffA9B5FE),),
                    
                    const SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Didn’t have an account?",
                        style: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffFFFFFF),
                            ),
                        ),
                        const SizedBox(width: 10,),
                        Text(
                            "Sign up Here",
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
            ),
            const SizedBox(height: 40,),
            CustomFooter()
          ],
        ),
      ),
    );
  }
}
