import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_calendy/components/arrow_button.dart';
import 'package:your_calendy/components/custom_footer.dart';
import 'package:your_calendy/components/custom_text_field.dart';
import 'package:your_calendy/controllers/business_hours_controller.dart';

class BusinessHoursScreen extends StatefulWidget {
  const BusinessHoursScreen({super.key});

  @override
  State<BusinessHoursScreen> createState() => _BusinessHoursScreenState();
}

class _BusinessHoursScreenState extends State<BusinessHoursScreen> {
  BusinessHoursController controller = Get.put(BusinessHoursController());
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

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
                  "assets/business_hours.png",
                  height: 600,
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.only(top: 10.h, right: 70, left: 70),
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
                        "Business Hours",
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
                        "Configure the standard hours of operation",
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
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    SizedBox(height: 25.h,),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Day name
                                        const Text(
                                          "Monday",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(width: 15.w,),
                                        Obx((){
                                          return Switch(
                                          value: controller.monday.value,
                                          onChanged: (value) {
                                            controller.toggleSwitchMonday(value);
                                          },
                                          activeColor: Colors.green,
                                          
                                          //inactiveThumbColor: Colors.grey,
                                          inactiveTrackColor:
                                              Colors.grey.shade300,
                                        );
                                        }),
                                        SizedBox(width: 5.w,),
                                        // Open or Closed text
                                        Obx((){
                                          return Text(
                                          controller.monday.value
                                              ? "Open"
                                              : "Closed",
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        );
                                        })
                                      ],
                                    ),
                                    SizedBox(
                                    height: 14.h,
                                  ),
                                  Row(
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Day name
                                        const Text(
                                          "Tuesday",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        // Switch
                                        Obx((){
                                          return Switch(
                                          value: controller.tuesday.value,
                                          onChanged: (value) {
                                            controller.toggleSwitchTuesday(value);
                                          },
                                          activeColor: Colors.green,
                                          
                                          //inactiveThumbColor: Colors.grey,
                                          inactiveTrackColor:
                                              Colors.grey.shade300,
                                        );
                                        }),
                                        // Open or Closed text
                                        Obx((){
                                          return Text(
                                          controller.tuesday.value
                                              ? "Open"
                                              : "Closed",
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        );
                                        })
                                      ],
                                    ),
                                    SizedBox(
                                    height: 14.h,
                                  ),
                                  Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Day name
                                        const Text(
                                          "Wednesday",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        // Switch
                                        Obx((){
                                          return Switch(
                                          value: controller.wednesday.value,
                                          onChanged: (value) {
                                            controller.toggleSwitchWednesday(value);
                                          },
                                          activeColor: Colors.green,
                                          
                                          //inactiveThumbColor: Colors.grey,
                                          inactiveTrackColor:
                                              Colors.grey.shade300,
                                        );
                                        }),
                                        // Open or Closed text
                                        Obx((){
                                          return Text(
                                          controller.wednesday.value
                                              ? "Open"
                                              : "Closed",
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        );
                                        })
                                      ],
                                    ),
                                    SizedBox(
                                    height: 14.h,
                                  ),
                                  Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Day name
                                        const Text(
                                          "Thursday",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        // Switch
                                        Obx((){
                                          return Switch(
                                          value: controller.thursday.value,
                                          onChanged: (value) {
                                            controller.toggleSwitchThursday(value);
                                          },
                                          activeColor: Colors.green,
                                          
                                          //inactiveThumbColor: Colors.grey,
                                          inactiveTrackColor:
                                              Colors.grey.shade300,
                                        );
                                        }),
                                        // Open or Closed text
                                        Obx((){
                                          return Text(
                                          controller.thursday.value
                                              ? "Open"
                                              : "Closed",
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        );
                                        })
                                      ],
                                    ),
                                    SizedBox(
                                    height: 14.h,
                                  ),
                                  Row(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Day name
                                        const Text(
                                          "Friday",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        // Switch
                                        Obx((){
                                          return Switch(
                                          value: controller.friday.value,
                                          onChanged: (value) {
                                            controller.toggleSwitchFriday(value);
                                          },
                                          activeColor: Colors.green,
                                          
                                          //inactiveThumbColor: Colors.grey,
                                          inactiveTrackColor:
                                              Colors.grey.shade300,
                                        );
                                        }),
                                        // Open or Closed text
                                        Obx((){
                                          return Text(
                                          controller.friday.value
                                              ? "Open"
                                              : "Closed",
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        );
                                        })
                                      ],
                                    ),
                                    SizedBox(
                                    height: 14.h,
                                  ),
                                  Row(
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Day name
                                        const Text(
                                          "Tuesday",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        // Switch
                                        Obx((){
                                          return Switch(
                                          value: controller.saturday.value,
                                          onChanged: (value) {
                                            controller.toggleSwitchSaturday(value);
                                          },
                                          activeColor: Colors.green,
                                          
                                          //inactiveThumbColor: Colors.grey,
                                          inactiveTrackColor:
                                              Colors.grey.shade300,
                                        );
                                        }),
                                        // Open or Closed text
                                        Obx((){
                                          return Text(
                                          controller.saturday.value
                                              ? "Open"
                                              : "Closed",
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        );
                                        })
                                      ],
                                    ),
                                    SizedBox(
                                    height: 14.h,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Day name
                                        const Text(
                                          "Sunday",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        // Switch
                                        Obx((){
                                          return Switch(
                                          value: controller.sunday.value,
                                          onChanged: (value) {
                                            controller.toggleSwitchSunday(value);
                                          },
                                          activeColor: Colors.green,
                                          
                                          //inactiveThumbColor: Colors.grey,
                                          inactiveTrackColor:
                                              Colors.grey.shade300,
                                        );
                                        }),
                                        // Open or Closed text
                                        Obx((){
                                          return Text(
                                          controller.sunday.value
                                              ? "Open"
                                              : "Closed",
                                          style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        );
                                        })
                                      ],
                                    ),
                                    
                                  ],
                                )),
                            SizedBox(width: 20.w,),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Open From",
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff003366),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  CustomTextField(
                                      text: "-----------",
                                      suffixIcon: const Icon(CupertinoIcons.clock),
                                      controller: name_controller),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                      text: "-----------",
                                      suffixIcon: const Icon(CupertinoIcons.clock),
                                      controller: name_controller),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                      text: "-----------",
                                      suffixIcon: const Icon(CupertinoIcons.clock),
                                      controller: name_controller),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                      text: "-----------",
                                      suffixIcon: const Icon(CupertinoIcons.clock),
                                      controller: name_controller),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                      text: "-----------",
                                      suffixIcon: const Icon(CupertinoIcons.clock),
                                      controller: name_controller),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                      text: "-----------",
                                      suffixIcon: const Icon(CupertinoIcons.clock),
                                      controller: name_controller),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                      text: "-----------",
                                      suffixIcon: const Icon(CupertinoIcons.clock),
                                      controller: name_controller),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Close Till",
                                    style: GoogleFonts.plusJakartaSans(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff003366),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  CustomTextField(
                                      text: "-----------",
                                      suffixIcon: const Icon(CupertinoIcons.clock),
                                      controller: name_controller),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                      text: "-----------",
                                      suffixIcon: const Icon(CupertinoIcons.clock),
                                      controller: name_controller),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                      text: "-----------",
                                      suffixIcon: const Icon(CupertinoIcons.clock),
                                      controller: name_controller),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                      text: "-----------",
                                      suffixIcon: const Icon(CupertinoIcons.clock),
                                      controller: name_controller),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                      text: "-----------",
                                      suffixIcon: const Icon(CupertinoIcons.clock),
                                      controller: name_controller),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                      text: "-----------",
                                      suffixIcon: const Icon(CupertinoIcons.clock),
                                      controller: name_controller),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomTextField(
                                      text: "-----------",
                                      suffixIcon: const Icon(CupertinoIcons.clock),
                                      controller: name_controller),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
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
              height: 40,
            ),
            CustomFooter()
          ],
        ),
      ),
    );
  }
}
