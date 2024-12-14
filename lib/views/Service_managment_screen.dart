import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_calendy/components/arrow_button.dart';
import 'package:your_calendy/components/custom_footer.dart';
import 'package:your_calendy/components/custom_text_field.dart';
import 'package:your_calendy/controllers/Service_managment_controller.dart';

class ServiceManagmentScreen extends StatefulWidget {
  const ServiceManagmentScreen({super.key});

  @override
  State<ServiceManagmentScreen> createState() => _ServiceManagmentScreenState();
}

class _ServiceManagmentScreenState extends State<ServiceManagmentScreen> {

  ServiceManagmentController controller = Get.put(ServiceManagmentController());

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    TextEditingController service_controller = TextEditingController();
    TextEditingController price_controller = TextEditingController();
    TextEditingController discription_controller = TextEditingController();


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
                padding: EdgeInsets.only(top: 10.h, right: 50.w, left: 50.w),
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
                  children: [
                    Text(
                          "Service Managment",
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
                          "Streamline Your Operations, Simplify Your Life",
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: screenWidth >= 600.0 ? 25 : 15,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff003366),
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
                                Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: CustomTextField(
                                        text: "Enter service Name",
                                        controller: service_controller),
                                  ),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: CustomTextField(
                                        text: "Enter Price",
                                        controller: price_controller),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h,),
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
                       
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Obx((){
                                return Container(
                                          width: 150,
                                          height: 150,
                                          decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10)
                                          ),
              
                                          child: controller.selectedImage1.value == null
                                                    ? const Center(
                            child: Text(
                              "Drag and drop image for service",
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
                              const SizedBox(height: 13),
              
                              InkWell(
                                onTap: (){
                                controller.pickImage1;  
                                },
                                child: Container(
                                  height: 30,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffD9D9D9),
                                    borderRadius: BorderRadius.circular(7)
                                  ),
                                  child: const Center(child: Text("Upload File")),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 25.h),
                    CustomArrowButton(ontap: (){}, text : "Save info"),
                    SizedBox(height: 25.h),
                    SizedBox(
                      height: 300.h,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Table(
                          border: TableBorder.all(color: Color(0xffB9B9B9)),
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          children: [
                            TableRow(
                              decoration: BoxDecoration(
                                color: Color(0xff003366),
                        
                              ),
                              children: [
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Service Name",
                                  style:  GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white
                                  ),
                                  textAlign: TextAlign.center,), 
                                )),
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Price",
                                  style:  GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white
                                  ),
                                  textAlign: TextAlign.center,), 
                                )),
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Description",
                                  style:  GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white
                                  ),
                                  textAlign: TextAlign.center,), 
                                )),
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Actions",
                                  style:  GoogleFonts.inter(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white
                                  ),
                                  textAlign: TextAlign.center,), 
                                ))
                              ]
                            ),
                            ...List.generate(20,
                            (index) => TableRow(
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              children: [
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Service ${index+1}",
                                  style:  GoogleFonts.inter(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff003366)
                                  ),
                                  textAlign: TextAlign.center,), 
                                )),
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("\$100",
                                  style:  GoogleFonts.inter(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff003366)
                                  ),
                                  textAlign: TextAlign.center,), 
                                )),
                                TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Service Description ${index+1}",
                                  style:  GoogleFonts.inter(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff003366)
                                  ),
                                  textAlign: TextAlign.center,), 
                                )),
                        
                              TableCell(
                                  verticalAlignment: TableCellVerticalAlignment.middle,
                                  child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Update",
                                      style:  GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff32AA45)
                                      ),
                                      textAlign: TextAlign.center,),
                                      Text("Remove",
                                      style:  GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffEA4335)
                                      ),
                                      textAlign: TextAlign.center,),
                                    ],
                                  ), 
                                ))
                        
                              ]
                            ))
                          ],
                        ),
                      ),
                    ),
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