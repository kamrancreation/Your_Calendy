import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_calendy/components/card_item.dart';
import 'package:your_calendy/components/deshboard_desktop_view.dart';
import 'package:your_calendy/components/deshboard_footer_column.dart';
import 'package:your_calendy/components/deshboard_max_tab_view.dart';
import 'package:your_calendy/components/deshboard_mobile_view.dart';
import 'package:your_calendy/components/menu_stack_widget.dart';
import 'package:your_calendy/components/shadow_item.dart';
import 'package:your_calendy/components/stack_widget.dart';
import 'package:your_calendy/controllers/DashboardController.dart';

class Deshboard_screen extends StatefulWidget {
  const Deshboard_screen({super.key});

  @override
  State<Deshboard_screen> createState() => _Deshboard_screenState();
}

class _Deshboard_screenState extends State<Deshboard_screen> {
  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff0a1626),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                  height: 110.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(width: 1, color: Colors.white)),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          "YouCalendy",
                          style: GoogleFonts.aladin(
                              fontSize: 32.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        Image.asset(
                          "assets/hero_img.png",
                          height: 60.h,
                        ),
                        const Spacer(),
                        Text(
                          "Home",
                          style: GoogleFonts.alike(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        Text(
                          "Advantages",
                          style: GoogleFonts.alike(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        Text(
                          "Features",
                          style: GoogleFonts.alike(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        Text(
                          "Login",
                          style: GoogleFonts.alike(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        Center(
                          child: MenuStackWidget(
                            text: "Sign-up for Free",
                            hight: 70.h,
                            width: 180.w,
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        )
                      ])),
              if (screenWidth > 1280)
                const DashboardDesktopView()
              else if (screenWidth == 1280)
                const DeshboardMaxTabView()
              else
                const DeshboardMinTabView(),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: const Color(0xff003366),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.r),
                    topRight: Radius.circular(50.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Advantages & Benefits",
                      style: GoogleFonts.inriaSans(
                        fontSize: 35.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Do you receive annoying calls outside of your working hours?",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    const Wrap(
                      spacing: 25,
                      runSpacing: 25,
                      alignment: WrapAlignment.center,
                      children: [
                        CardItem(
                          discription:
                              "Your clients can schedule appointments at any time of the day, even at midnight or during your days off. No more untimely calls disrupting your rest or personal time.",
                          imgUrl: "assets/advantages1.png",
                          title: "24/7 Availability",
                        ),
                        CardItem(
                          discription:
                              "YouCalendy automates the appointment scheduling process. Clients can see your availability in real-time and select a convenient time slot without needing to call or message you.",
                          imgUrl: "assets/advantages2.png",
                          title: "Automation and Efficiency",
                        ),
                        CardItem(
                          discription:
                              "Eliminate the stress of manually managing appointments and responding to calls outside of working hours. With YouCalendy, you can focus on your work during business hours and enjoy your free time without worries.",
                          imgUrl: "assets/advantages3.png",
                          title: "Stress Reduction",
                        ),
                        CardItem(
                          discription:
                              "Offer your clients the convenience of scheduling appointments when it suits them best. This flexibility enhances their experience and satisfaction, increasing the likelihood they will return and recommend your services.",
                          imgUrl: "assets/advantages4.png",
                          title: "Improved Client Experience",
                        ),
                        CardItem(
                          discription:
                              "YouCalendy sends automatic reminders to your clients about their appointments, reducing no-show rates and helping you maintain an organized schedule.",
                          imgUrl: "assets/advantages5.png",
                          title: "Automatic Reminders",
                        ),
                        CardItem(
                          discription:
                              "Set your availability according to your preferences. You can block specific times, add days off, and adjust your calendar to fit your personal and professional needs.",
                          imgUrl: "assets/advantages6.png",
                          title: "Customization",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 70.h,
                    ),
                    StackWidget(
                      text: "Sign-up For Free",
                      hight: 85.h,
                      width: 200.w,
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                  ],
                ),
              ),
              Container(
                // height: 1100.h,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF003366),
                      Color(0xFFE8EBFF),
                    ],
                    begin: Alignment.topCenter, // Start of the gradient
                    end: Alignment.bottomCenter, // End of the gradient
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Let’s Help Your Client’s",
                      style: GoogleFonts.inter(
                        fontSize: 35.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      "Don’t remember the haircut you gave your client last time?",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    const Wrap(
                      spacing: 25,
                      runSpacing: 25,
                      alignment: WrapAlignment.center,
                      children: [
                        CardItem(
                            discription:
                                "You can  record  not only the type of cut or service you provided but also any other preferences or  specific details, such as the exact length of the cut, the products used, and any additional comments.",
                            imgUrl: "assets/client_help1.png",
                            title: "Detailed History"),
                        CardItem(
                            discription:
                                "Having a detailed history of each client allows you to offer highly personalized service. Clients will  appreciate that you remember their preferences and will feel more valued and understood.",
                            imgUrl: "assets/client_help2.png",
                            title: "Personalized Service"),
                        CardItem(
                            discription:
                                "You can note all the key  points from the last conversation with your client. This allows you to continue the conversation from where you left off, showing your clients that you genuinely care and pay attention to details.",
                            imgUrl: "assets/client_help3.png",
                            title: "Continuity in Communication"),
                        CardItem(
                            discription:
                                "By remembering important details and offering personalized service, your clients will be more  inclined to return to your salon. This attention to detail creates a stronger and longer-lasting relationship with your clients.",
                            imgUrl: "assets/client_help4.png",
                            title: "Customer Loyalty",
                            colorAll: Color(0xff003366)),
                        CardItem(
                          discription:
                              "All notes you take in YouCalendy are completely private and only you can access them. This  ensures that your clients' information is secure and confidential.",
                          imgUrl: "assets/client_help5.png",
                          title: "Private and Secure Notes",
                          colorAll: Color(0xff003366),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    StackWidget(
                      text: "Sign-up For Free",
                      hight: 85.h,
                      width: 200.w,
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                  ],
                ),
              ),
              Container(
                //height: 1100.h,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFE8EBFF),
                      Color(0xFF003366),
                    ],
                    begin: Alignment.topCenter, // Start of the gradient
                    end: Alignment.bottomCenter, // End of the gradient
                  ),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      "Do your clients get nervous when explaining their \nhaircut  and sometimes don’t express themselves well?",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff003366),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    const Wrap(
                      spacing: 25,
                      runSpacing: 25,
                      alignment: WrapAlignment.center,
                      children: [
                        CardItem(
                          discription:
                              "Many clients feel nervous or  unsure when trying to explain what they want. Allowing them to write a detailed description and attach images from home makes them feel more  relaxed and confident that they will get exactly what they want.",
                          imgUrl: "assets/advantages7.png",
                          title: "Reduction of Client Anxiety",
                          colorAll: Color(0xff003366),
                        ),
                        CardItem(
                          discription:
                              "A written description and a reference image eliminate misunderstandings and ensure that you understand exactly what the client wants, improving the accuracy of the service.",
                          imgUrl: "assets/advantages8.png",
                          title: "Clarity in Communication",
                          colorAll: Color(0xff003366),
                        ),
                        CardItem(
                          discription:
                              "From your salon, you can  review scheduled appointments, read descriptions, and see reference photos  before the client arrives. This allows you to better prepare and plan your  time more efficiently.",
                          imgUrl: "assets/advantages9.png",
                          title: "Preparation and Efficiency",
                          colorAll: Color(0xff003366),
                        ),
                        CardItem(
                            discription:
                                "When the client arrives at  your salon, you can assure them that you know exactly what they need. This preparation and attention to detail increase client satisfaction and improve service quality.",
                            imgUrl: "assets/advantages10.png",
                            title: "Improved Service Quality"),
                        CardItem(
                            discription:
                                "Having all the necessary  information in advance allows you to work faster and more efficiently,  which is valuable for both your production times and the client’s  experience.",
                            imgUrl: "assets/advantages11.png",
                            title: "Time Optimization"),
                      ],
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    StackWidget(
                      text: "Sign-up For Free",
                      hight: 85.h,
                      width: 200.w,
                    ),
                    SizedBox(
                      height: 80.h,
                    )
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFE8EBFF),
                      Color(0xFF003366),
                    ],
                    begin: Alignment.topCenter, // Start of the gradient
                    end: Alignment.bottomCenter, // End of the gradient
                  ),
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      "Benefits of Mass SMS with YouCalendy:",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 35.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff003366),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Text(
                      "Do you close your salon and want to notify all your clients?",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff003366),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    const Wrap(
                      spacing: 25,
                      runSpacing: 25,
                      alignment: WrapAlignment.center,
                      children: [
                        CardItem(
                          discription:
                              "SMS messages are read almost  immediately after being received, ensuring your clients get the  information in real-time. This speed is crucial for communicating last-minute closures or schedule changes effectively.",
                          imgUrl: "assets/benefit1.png",
                          title: "Immediacy and Effectiveness",
                          colorAll: Color(0xff003366),
                        ),
                        CardItem(
                          discription:
                              "By sending SMS messages, you  reach all your clients without needing them to have internet access. This   is especially useful to ensure everyone, regardless of their communication   preferences, receives your messages.",
                          imgUrl: "assets/benefit2.png",
                          title: "Wide Coverage",
                          colorAll: Color(0xff003366),
                        ),
                        CardItem(
                          discription:
                              "You can schedule messages to   be sent at specific times, ensuring the information reaches at the most  appropriate moment. This allows you to plan in advance and ensure important messages are not forgotten.",
                          imgUrl: "assets/benefit3.png",
                          title: "Automation and Scheduling",
                          colorAll: Color(0xff003366),
                        ),
                        CardItem(
                            discription:
                                "YouCalendy offers access to a   collection of strategic marketing messages designed to increase your   revenue. These messages have been meticulously developed to help you achieve your business goals, whether promoting special offers, new  services, or events in your salon.",
                            imgUrl: "assets/benefit4.png",
                            title: "Strategic Marketing Messages"),
                        CardItem(
                            discription:
                                "You have complete freedom to create your personalized messages tailored to each of your needs. You can  address your clients by name, offer exclusive promotions based on their   service history, and much more.",
                            imgUrl: "assets/benefit5.png",
                            title: "Personalization"),
                      ],
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    StackWidget(
                      text: "Sign-up For Free",
                      hight: 85.h,
                      width: 200.w,
                    ),
                    SizedBox(
                      height: 80.h,
                    )
                  ],
                ),
              ),
              Container(
                height: 325.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/background2.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: 'FEATURES THAT',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff003366),
                              decoration: TextDecoration.underline,
                            )),
                        TextSpan(
                          text: ' YouCalendy ',
                          style: GoogleFonts.pottaOne(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff0421D0),
                          ),
                        ),
                        TextSpan(
                            text: 'OFFERS',
                            style: GoogleFonts.plusJakartaSans(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff003366),
                              decoration: TextDecoration.underline,
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                //height: 1400.h,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF6993BE),
                      Color(0xFF003366),
                    ],
                    begin: Alignment.topCenter, // Start of the gradient
                    end: Alignment.bottomCenter, // End of the gradient
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    const Wrap(
                      spacing: 25,
                      runSpacing: 25,
                      alignment: WrapAlignment.center,
                      children: [
                        const ShadowItem(
                            imgUrl: "assets/settings1.png",
                            title: "Control Panel:",
                            description:
                                ". Central hub for all  functionalities\n. Icons on the left side for easy  navigation\n. Icons expand to show details on the right side."),
                        ShadowItem(
                            imgUrl: "assets/settings2.png",
                            title: "Profile Configuration:",
                            description:
                                ". Edit business name, phone number, and description\n. Create customized booking  links\n. Set business hours and location on maps\n. Upload profile icon, header, and photos\n. Preview profile as clients will see it\n. Create and manage services with names, prices, and durations."),
                        ShadowItem(
                            imgUrl: "assets/settings3.png",
                            title: "Appointment Scheduling:",
                            description:
                                ". Calendar view to see clients appointments\n. Ability to schedule appointments manually\n. Service selection with time slot allocation\n. Private notes on client  appointments\n. Option to register new clients."),
                        ShadowItem(
                            imgUrl: "assets/settings4.png",
                            title: "Client Management:",
                            description:
                                ". Button to add new clients\n. Fields for client's name, last name, phone number, and email\n. Private notes for each client\n. Ability to view notes during  appointments."),
                        ShadowItem(
                            imgUrl: "assets/settings5.png",
                            title: "Team Management:",
                            description:
                                ". Add team members and their available services\n. Set working hours for each team  member\n. Clients can choose their preferred barber and see their availability."),
                        ShadowItem(
                            imgUrl: "assets/settings6.png",
                            title: "Marketing:",
                            description:
                                ". Send personalized mass messages via SMS\n. Schedule feature for mass  messaging\n. Set and manage promotions."),
                        ShadowItem(
                            imgUrl: "assets/settings7.png",
                            title: "Client Interaction:",
                            description:
                                ". Clients access barber profiles through provided links . View services, prices,location, and contact information\n. Book appointments online by selecting services and available slots\n. Option to provide reference photos for haircuts\n. Option to write detailed instructions for haircuts\n. Registration process with acceptance of terms of use and privacy policy."),
                        ShadowItem(
                            imgUrl: "assets/settings8.png",
                            title: "Subscription Management:",
                            description:
                                ". Setup subscription with a one-month free trial\n. Credit card input required for  subscription\n. Easy cancellation through the subscription management icon in the control panel\n. Manage subscription plans\n. Manage payment methods."),
                      ],
                    ),
                    SizedBox(
                      height: 80.h,
                    ),
                    StackWidget(
                      text: "Sign-up For Free",
                      hight: 85.h,
                      width: 200.w,
                    ),
                    SizedBox(
                      height: 90.h,
                    ),
                  ],
                ),
              ),
              Container(
                color: const Color(0xff003366),
                child: Column(
                  children: [
                    const Divider(),
                    Container(
                      padding: EdgeInsets.only(left: 50.w, right: 50.w),
                      color: const Color(0xff003366),
                      height: 250.h,
                      width: double.maxFinite,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/logo.png",
                            height: 60.h,
                            width: 120.w,
                          ),
                          SizedBox(
                            width: 100.w,
                          ),
                          Expanded(
                            child: Text(
                              "Organize your barbershop efficiently and professionally with YouCalendy. Forget about out-of-hours calls and confusion in appointment management.",
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffE8EBFF)),
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.only(
                          top: 110.h, left: 50.w, right: 50.w, bottom: 30.h),
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Expanded(
                                flex: 1,
                                child: DeshboardFooterColumn(
                                    title: "Product",
                                    text1: "Features",
                                    text2: "Sellers",
                                    text3: "Case studies",
                                    text4: "Reviews",
                                    text5: "Updates"),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              const Expanded(
                                flex: 1,
                                child: DeshboardFooterColumn(
                                    title: "Company",
                                    text1: "About",
                                    text2: "Contact us",
                                    text3: "Careers",
                                    text4: "Culture",
                                    text5: "Blog"),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              const Expanded(
                                flex: 1,
                                child: DeshboardFooterColumn(
                                    title: "Support",
                                    text1: "Getting started",
                                    text2: "Help center",
                                    text3: "Server status",
                                    text4: "Report a bug",
                                    text5: "Chat support"),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              const Expanded(
                                flex: 1,
                                child: DeshboardFooterColumn(
                                    title: "Downloads",
                                    text1: "IOS App",
                                    text2: "Android",
                                    text3: "Mac App",
                                    text4: "Windows App",
                                    text5: "Chrome OS App"),
                              ),
                              SizedBox(
                                width: 15.w,
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Subscribe to our newsletter",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 35.h,
                                    ),
                                    Text(
                                      "Lorem ipsum dolor sit amet consectetur adipiscing elit aliquam mauris sed ma",
                                      style: GoogleFonts.dmSans(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Enter your email',
                                        hintStyle: GoogleFonts.dmSans(
                                          color: const Color(0xff003366),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.r),
                                          borderSide: BorderSide.none,
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 20.w,
                                          vertical: 20.h,
                                        ),
                                      ),
                                      style: GoogleFonts.dmSans(
                                        color: Colors.black,
                                        fontSize: 14.sp,
                                      ),
                                      cursorColor: const Color(0xff003366),
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    Container(
                                      height: 74.h,
                                      width: 100.w,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffE8EBFF),
                                        borderRadius:
                                            BorderRadius.circular(50.r),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Subscribe",
                                          style: GoogleFonts.dmSans(
                                            color: const Color(0xFF003366),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 110.h,
                          ),
                          const Divider(),
                          SizedBox(
                            height: 30.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "Copyright © 2024 YouCalendy | All Rights Reserved ",
                                style: GoogleFonts.dmSans(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              const Spacer(),
                              Image.asset(
                                "assets/facebook.png",
                                height: 30.h,
                                width: 13.w,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Image.asset(
                                "assets/twitter.png",
                                height: 30.h,
                                width: 13.w,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Image.asset(
                                "assets/insta.png",
                                height: 30.h,
                                width: 13.w,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Image.asset(
                                "assets/linkedin.png",
                                height: 30.h,
                                width: 13.w,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Image.asset(
                                "assets/youtube.png",
                                height: 30.h,
                                width: 13.w,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
