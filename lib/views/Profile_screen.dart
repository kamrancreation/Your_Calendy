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
                Image.asset("assets/profile_screen_boy_img.png",height: 500,),
                SizedBox(width: 15,),
                Container(
                  padding: EdgeInsets.only(top: 10.h, right: 30, left: 70),
                  //height: 700,
                  width: screenWidth /2,
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
                              fontSize: screenWidth >= 600 ? 30 : 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff003366),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            "Define Your Business with YouCalendy",
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: screenWidth >= 600.0 ? 25 : 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff003366),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10.h,),
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
                                  height: 20.h,
                                ),
                                
                                CustomTextField(
                                    text: "Personal Name Here",
                                    controller: name_controller),
                                SizedBox(
                                  height: 20.h,
                                ),
                                
                                CustomTextField(
                                    text: "Your Sur Name Here",
                                    controller: sur_name_controller),
                               SizedBox(
                                  height: 20.h,
                                ),
                                CustomTextField(
                                    text: "Enter Number Here",
                                    controller: number_controller),
                               SizedBox(
                                  height: 20.h,
                                ),
                                Container(
                                      height: 130,
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
                                              fontSize: 15,
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
                                            width: 150,
                                            height: 150,
                                            decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10)
                                            ),

                                            child: controller.selectedImage.value == null
                                                      ? Center(
                              child: Text(
                                "Drag and drop image for profile",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18, color: Colors.black54),
                              ),
                            )
                                                      : Image.network(
                              controller.selectedImage.value!.path,
                              fit: BoxFit.cover,
                            ),
                                          );
                                }),
                                SizedBox(height: 13),

                                InkWell(
                                  onTap: (){
                                  controller.pickImage;  
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Color(0xffD9D9D9),
                                      borderRadius: BorderRadius.circular(7)
                                    ),
                                    child: Center(child: Text("Upload File")),
                                  ),
                                ),
                                SizedBox(height: 15),
                                Obx((){
                                  return Container(
                                            width: 150,
                                            height: 150,
                                            decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10)
                                            ),

                                            child: controller.selectedImage.value == null
                                                      ? Center(
                              child: Text(
                                "Drag and drop profile icon",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 18, color: Colors.black54),
                              ),
                            )
                                                      : Image.network(
                              controller.selectedImage1.value!.path,
                              fit: BoxFit.cover,
                            ),
                                          );
                                }),
                                SizedBox(height: 13),

                                InkWell(
                                  onTap: (){
                                  controller.pickImage1;  
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Color(0xffD9D9D9),
                                      borderRadius: BorderRadius.circular(7)
                                    ),
                                    child: Center(child: Text("Upload File")),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20.h),
                      CustomArrowButton(ontap: (){}, text : "Save info"),
                      SizedBox(height: 20.h)
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