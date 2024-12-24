

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_calendy/components/arrow_button.dart';
import 'package:your_calendy/components/custom_button.dart';
import 'package:your_calendy/components/custom_cradit_text_field.dart';
import 'package:your_calendy/components/custom_footer.dart';
import 'package:your_calendy/components/custom_subscription_card.dart';
import 'package:your_calendy/components/custom_text_field.dart';
import 'package:your_calendy/controllers/Service_managment_controller.dart';
import 'package:your_calendy/controllers/subscription_coltroller.dart';

class SubscriptionManamentScreen extends StatefulWidget {
  const SubscriptionManamentScreen({super.key});

  @override
  State<SubscriptionManamentScreen> createState() => _SubscriptionManamentScreenState();
}

class _SubscriptionManamentScreenState extends State<SubscriptionManamentScreen> {

  SubscriptionColtroller controller = Get.put(SubscriptionColtroller());

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    TextEditingController email_controller = TextEditingController();
    TextEditingController name_controller = TextEditingController();
    TextEditingController date_controller = TextEditingController();
    TextEditingController cvc_controller = TextEditingController();



    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Container(
                margin: EdgeInsets.only(top: 20.h, right: 20.w, left: 20.w),
                padding: EdgeInsets.only(top: 10.h, right: 100.w, left: 100.w),
                //height: 700,
                width:  double.infinity,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Colors.white,
                        Color(0xff003366),
                      ],
                      begin: Alignment.topCenter, // Start of the gradient
                      end: Alignment.bottomCenter, // End of the gradient
                    ),
                    borderRadius: BorderRadius.circular(30.r)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                            "Subscription Management",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 37.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff003366),
                            ),
                          ),
                    ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                          child: Text(
                            "Take Control of Your memberships, All in One Place",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff003366),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 50.h,),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 100.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomSubscriptionCard(
                              title: "Professional Membership",
                              price: "20\$", 
                              text1: ". Easy access to content ",
                              text2: ". Access to newsletter",
                              text3: ". Support full stack",
                              text4: ". Get listed as supporter",
                              text5: ". Access to Virtual meetups",
                              text6: ". Influence future content",
                              button_text: "Select Plan"),
                               CustomSubscriptionCard(
                              title: "Professional Membership",
                              price: "30\$", 
                              text1: ". Easy access to content ",
                              text2: ". Access to newsletter",
                              text3: ". Support full stack",
                              text4: ". Get listed as supporter",
                              text5: ". Access to Virtual meetups",
                              text6: ". Influence future content",
                              text7: ". Cancle any time",
                              button_text: "Select Plan"),    
                            ],
                          ),
                        ),
                        Center(
                          child: CustomSubscriptionCard(
                            subtitle: "for one month only",
                              title: "Stater Plan",
                              price: "0\$", 
                              text1: ". Easy access to content",
                              text2:". Access to newsletter" ,
                              text3: ". Support full stack",
                              text4: ". Get listed as supporter",
                              text5: ". Access to Virtual meetups",
                              button_text: "Sign Up Free"),
                        )
                      ],
                    ),
                    SizedBox(height: 40.h,),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Payment detail ->",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 28.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),),
                              SizedBox(height: 15.h,),
                              Text(
                                "Email",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              CustomTextField(
                                  text: "Enter Your email",
                                  controller: name_controller),
                              SizedBox(
                                height: 10,
                              ),
                               Text(
                                "Credit Card Number",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              CustomCraditTextField(),
                              SizedBox(
                                height: 10,
                              ),
                             Text(
                                "Card Holder Name",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              CustomTextField(
                                  text: "Card Holder Name",
                                  controller: email_controller),
                            ],
                          ),
                        ),
                        SizedBox(width: 15.w,),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 300.h,),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                "Expiry Date",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                                        CustomTextField(
                                            text: "Expiry Date",
                                            controller: date_controller),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                "CVV/CVC",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                                        CustomTextField(
                                            text: "**********",
                                            controller: cvc_controller),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5.h,),
                               Text(
                                "Country",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Obx(() {
                              return Container(
                                height: 90.h,
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.r),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 5,
                                      offset: const Offset(
                                          0, 2), // Changes position of shadow
                                    ),
                                  ],
                                ),
                                child: DropdownButton<String>(
                                  value: controller.selectedCity.isEmpty
                                      ? null
                                      : controller.selectedCity.value,
                                  isExpanded: true,
                                  dropdownColor: Colors.white,
                                  underline:
                                      const SizedBox(), 
                                  hint: Text(
                                    'Select City',
                                    style: GoogleFonts.dmSans(
                                      color: Colors.grey,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  onChanged: (String? newCity) {
                                    if (newCity != null) {
                                      controller.setSelectedCity(newCity);
                                    }
                                  },
                                  items: controller.cities.map((city) {
                                    return DropdownMenuItem<String>(
                                      value: city,
                                      child: Text(
                                        city,
                                        style: GoogleFonts.dmSans(
                                          color: Colors.black,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              );
                            }),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 70.h),
                    CustomButton(ontap: (){}, text : "Subscribe"),
                    SizedBox(height: 70.h,),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),
              CustomFooter()
            ],
          ),
        ),
      ),
    );
  }
}