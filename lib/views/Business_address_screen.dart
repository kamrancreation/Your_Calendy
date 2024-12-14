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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/bussiness_screen_man.png",
                  height: 660.h,
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.h, right: 30.w, left: 30.w),
                  //height: 700,
                  width: screenWidth / 2,
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
                          fontSize: screenWidth >= 600 ? 30 : 18,
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
                          fontSize: screenWidth >= 600.0 ? 25 : 15,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff003366),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 15.h,
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
                                  width: 5.h,
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
                              height: 15.h,
                            ),
                            CustomTextField(
                                text: "Your Full Address Here",
                                controller: password_controller),
                            SizedBox(
                              height: 15.h,
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
                            SizedBox(
                              height: 15.h,
                            ),
                            CustomTextField(
                                text: "Postal Code",
                                controller: confirm_password_controller),
                            SizedBox(
                              height: 15.h,
                            ),
                            Container(
                              height: 250.h,
                              width: double.infinity,
                              child: Image.asset(
                                "assets/google_map.png",
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomArrowButton(text: "Save info", ontap: () {}),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomFooter(),
          ],
        ),
      ),
    );
  }
}
