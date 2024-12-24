import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_calendy/components/arrow_button.dart';
import 'package:your_calendy/components/custom_text_field.dart';
import 'package:your_calendy/controllers/profile_controller.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHight = screenSize.height;

    TextEditingController business_controller = TextEditingController();
    TextEditingController name_controller = TextEditingController();
    TextEditingController sur_name_controller = TextEditingController();
    TextEditingController number_controller = TextEditingController();
    TextEditingController discription_controller = TextEditingController();


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
                Image.asset("assets/profile_screen_boy_img.png",height: 1000.h,),
                SizedBox(width: 50.w,),
                Container(
                  padding: EdgeInsets.only(top: 30.h, right: 30.w, left: 70.w),
                  width: 550.w,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
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
                            "Company Profile",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 30.sp,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff003366),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Define Your Business with YouCalendy",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff003366),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 50.h,),
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                  CustomTextField(
                                    text: "Enter Buisness Name",
                                    controller: business_controller),
                                SizedBox(
                                  height: 35.h,
                                ),
                                
                                CustomTextField(
                                    text: "Personal Name Here",
                                    controller: name_controller),
                                SizedBox(
                                  height: 35.h,
                                ),
                                
                                CustomTextField(
                                    text: "Your Sur Name Here",
                                    controller: sur_name_controller),
                               SizedBox(
                                  height: 35.h,
                                ),
                                CustomTextField(
                                    text: "Enter Number Here",
                                    controller: number_controller),
                               SizedBox(
                                  height: 35.h,
                                ),
                                Container(
                                      height: 250.h,
                                      decoration: BoxDecoration(
                                      color: Colors.white, 
                                      borderRadius: BorderRadius.circular(10.r),
                                        ),
                                      child: Center(
                                        child: TextFormField(
                                          controller: discription_controller,
                                          maxLines: 10,
                                          decoration: InputDecoration(
                                            hintText: "Describe Your Business",
                                            hintStyle: GoogleFonts.dmSans(
                                              color: Colors.grey,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w400,
                                              ),
                                            border: InputBorder.none, 
                                            contentPadding: EdgeInsets.symmetric(horizontal: 20.h ,vertical: 20.h),
                                          ),
                                        ),
                                      ),
                                    ),                  
                              ],
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Obx((){
                                  return Container(
                                    padding: EdgeInsets.all(5),
                                            width: 130.w,
                                            height: 260.h,
                                            decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10.r),
                                           
                                            ),

                                            child: controller.selectedImage.value == null
                                                      ? Center(
                              child: Text(
                                "Drag and drop image for profile",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16.sp,
                                  color: Color(0xff003366)), 
                              ),
                            )
                                                      : Image.network(
                              controller.selectedImage.value!.path,
                              fit: BoxFit.cover,
                            ),
                                          );
                                }),
                                SizedBox(height: 20.h),

                                InkWell(
                                  onTap: (){
                                  controller.pickImage;  
                                  },
                                  child: Container(
                                    height: 70.h,
                                    width: 130.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xffD9D9D9),
                                      borderRadius: BorderRadius.circular(7.r),
                                       border: Border.all(
                                              color: Colors.black,
                                              width: 1.w
                                            )
                                    ),
                                    child: Center(child: Text("Upload File")),
                                  ),
                                ),
                                SizedBox(height: 23.h),
                                Obx((){
                                  return Container(
                                    padding: EdgeInsets.all(5),
                                            width: 130.w,
                                            height: 260.h,
                                            decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10.r)
                                            ),

                                            child: controller.selectedImage.value == null
                                                      ? Center(
                              child: Text(
                                "Drag and drop profile icon",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16.sp,
                                  color: Color(0xff003366)),
                              ),
                            )
                                                      : Image.network(
                              controller.selectedImage1.value!.path,
                              fit: BoxFit.cover,
                            ),
                                          );
                                }),
                                SizedBox(height: 20.h),

                                InkWell(
                                  onTap: (){
                                  controller.pickImage1;  
                                  },
                                  child: Container(
                                    height: 70.h,
                                    width: 130.w,
                                    decoration: BoxDecoration(
                                      color: Color(0xffD9D9D9),
                                      borderRadius: BorderRadius.circular(7.r),
                                       border: Border.all(
                                              color: Colors.black,
                                              width: 1.w
                                            )
                                    ),
                                    child: Center(child: Text("Upload File")),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 40.h),
                      CustomArrowButton(ontap: (){
                        
                      }, text : "Save info"),
                      SizedBox(height: 80.h)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}