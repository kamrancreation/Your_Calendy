import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_calendy/components/arrow_button.dart';
import 'package:your_calendy/components/custom_footer.dart';
import 'package:your_calendy/components/custom_text_field.dart';
import 'package:your_calendy/controllers/business_address_controller.dart';

class BusinessAddressScreen extends StatefulWidget {
  const BusinessAddressScreen({super.key});

  @override
  State<BusinessAddressScreen> createState() => _BusinessAddressScreenState();
}

class _BusinessAddressScreenState extends State<BusinessAddressScreen> {
  BusinessAddressController controller = Get.put(BusinessAddressController());

  @override
  Widget build(BuildContext context) {
    

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/bussiness_screen_man.png",
                  height: 1150.h,width: 500.w,
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                   padding: EdgeInsets.only(top: 10.h, right: 110.w, left: 110.w),
                    
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
                        "Business Address",
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
                        "Enter Your Business Details Carefully",
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff003366),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 50.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: CustomTextField(
                                      text: "Street#",
                                      controller: email_controller),
                                ),
                                SizedBox(
                                  width: 20.w,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: CustomTextField(
                                      text: "House#",
                                      controller: email_controller),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 22.h,
                            ),
                            CustomTextField(
                                text: "Your Full Address Here",
                                controller: password_controller),
                            SizedBox(
                              height: 22.h,
                            ),
                            Obx(() {
                              return Container(
                                height: 100.h,
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
                                      fontSize: 15.sp,
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
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              );
                            }),
                            SizedBox(
                              height: 22.h,
                            ),
                            CustomTextField(
                                text: "Postal Code",
                                controller: confirm_password_controller),
                            SizedBox(
                              height: 22.h,
                            ),
                            Container(
                              height: 380.h,
                              width: double.infinity,
                              child: Image.asset(
                                "assets/google_map.png",
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      CustomArrowButton(text: "Save info", ontap: () {}),
                       SizedBox(
                        height: 50.h,
                      )
                    ],
                  ),
                ),
              ],
            ),
             SizedBox(
              height: 40.h,
            ),
            const CustomFooter(),
          ],
        ),
      ),
    );
  }
}
