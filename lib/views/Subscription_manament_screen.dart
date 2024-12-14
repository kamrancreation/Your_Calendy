

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
                margin: EdgeInsets.only(top: 10.h, right: 10.w, left: 10.w),
                padding: EdgeInsets.only(top: 10.h, right: 10.w, left: 10.w),
                //height: 700,
                width:  double.infinity,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                            "Subscription Management",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: screenWidth >= 600 ? 30 : 18,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff003366),
                            ),
                          ),
                    ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Center(
                          child: Text(
                            "Take Control of Your memberships, All in One Place",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: screenWidth >= 600.0 ? 25 : 15,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff003366),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: 15.h,),
                    Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 60.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomSubscriptionCard(
                              title: "Professional Membership",
                              price: "20\$", 
                              text: ". Easy access to content \n. Access to newsletter \n. Support full stack \n. Get listed as supporter \n. Access to Virtual meetups \n. Influence future content",
                              button_text: "Select Plan"),
                               CustomSubscriptionCard(
                              title: "Professional Membership",
                              price: "30\$", 
                              text: ". Easy access to content \n. Access to newsletter \n. Support full stack \n. Get listed as supporter \n. Access to Virtual meetups \n. Influence future content \n . Cancle any time",
                              button_text: "Select Plan"),    
                            ],
                          ),
                        ),
                        Center(
                          child: CustomSubscriptionCard(
                            subtitle: "for one month only",
                              title: "Stater Plan",
                              price: "0\$", 
                              text: ". Easy access to content \n. Access to newsletter \n. Support full stack \n. Get listed as supporter \n. Access to Virtual meetups",
                              button_text: "Sign Up Free"),
                        )
                      ],
                    ),
                    SizedBox(height: 30.h,),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Payment detail ->",
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),),
                              SizedBox(height: 10.h,),
                              Text(
                                "Email",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: screenWidth >= 600.0 ? 15 : 17,
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
                                  fontSize: screenWidth >= 600.0 ? 15 : 17,
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
                                  fontSize: screenWidth >= 600.0 ? 15 : 17,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
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
                                  fontSize: screenWidth >= 600.0 ? 15 : 17,
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
                                  fontSize: screenWidth >= 600.0 ? 15 : 17,
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
                               Text(
                                "Country",
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: screenWidth >= 600.0 ? 15 : 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Obx(() {
                              return Container(
                                height: 40.h,
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
                                      fontSize: 15,
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
                                          fontSize: 15,
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
                    SizedBox(height: 25.h),
                    CustomButton(ontap: (){}, text : "Subscribe"),
                    SizedBox(height: 40.h,),
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