import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_calendy/components/card_item.dart';
import 'package:your_calendy/components/deshboard_footer_column.dart';
import 'package:your_calendy/components/hero_section_item.dart';
import 'package:your_calendy/components/shadow_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff0a1626),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 850.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/background_image.png',
                    ), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 20.h,
                    left: 15.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Welcome to ',
                                style: GoogleFonts.saira(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                )),
                            TextSpan(
                              text: 'YouCalendy',
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xffB4C9DE),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "The Ultimate Convenience for Busy People",
                        style: GoogleFonts.acme(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffEFF0F6)),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text:
                                    'Organize your barbershop efficiently and professionally \nwith YouCalendy. Forget about out-of-hours calls and \nconfusion in appointment management.\n',
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 7.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                )),
                            TextSpan(
                              text: 'Sign up for free',
                              style: GoogleFonts.plusJakartaSans(
                                fontSize: 7.sp,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xffFAE635),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                                text:
                                    ' today and discover how YouCalendy can \ntransform your barbershop',
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 7.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const HeroSectionItem(
                          imgPath: "assets/hero_section2.png",
                          text: "Improved Time Management"),
                      SizedBox(
                        height: 5.h,
                      ),
                      const HeroSectionItem(
                          imgPath: "assets/hero_section3.png",
                          text: "Professionalism"),
                      SizedBox(
                        height: 5.h,
                      ),
                      const HeroSectionItem(
                          imgPath: "assets/hero_section4.png",
                          text: "Time Savings"),
                      SizedBox(
                        height: 5.h,
                      ),
                      const HeroSectionItem(
                          imgPath: "assets/hero_section5.png",
                          text: "Increased Trust"),
                      SizedBox(
                        height: 5.h,
                      ),
                      const HeroSectionItem(
                          imgPath: "assets/hero_section6.png",
                          text: "Increased Revenue"),
                      SizedBox(
                        height: 5.h,
                      ),
                      const HeroSectionItem(
                          imgPath: "assets/hero_section7.png",
                          text: "Improved Communication"),
                      SizedBox(
                        height: 5.h,
                      ),
                      const HeroSectionItem(
                          imgPath: "assets/hero_section8.png",
                          text: "Flexibility and Control"),
                    ],
                  ),
                ),
              ),
              Container(
                height: 1100.h,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: const Color(0xff003366),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "Advantages & Benefits",
                      style: GoogleFonts.inriaSans(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Do you receive annoying calls outside of your working hours?",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 13.sp,
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
                      children: [
                        CardItem(
                            discription:
                                "Your clients can schedule  appointments at any time of the day, even at midnight or during your days  off. No more untimely calls disrupting your rest or personal time.",
                            imgUrl: "assets/advantages1.png",
                            title: "24/7 Availability"),
                        CardItem(
                            discription:
                                "YouCalendy automates the appointment scheduling process. Clients can see your availability in real-time and select a convenient time slot without needing to call or message you.",
                            imgUrl: "assets/advantages2.png",
                            title: "Automation and Efficiency"),
                        CardItem(
                            discription:
                                "Eliminate the stress of  manually managing appointments and responding to calls outside of working  hours. With YouCalendy, you can focus on your work during business hours      and enjoy your free time without worries.",
                            imgUrl: "assets/advantages3.png",
                            title: "Stress Reduction"),
                        CardItem(
                            discription:
                                "Offer your clients the convenience of scheduling appointments when it suits them best. This flexibility enhances their experience and satisfaction, increasing the likelihood they will return and recommend your services.",
                            imgUrl: "assets/advantages4.png",
                            title: "Improved Client Experience"),
                        CardItem(
                            discription:
                                "YouCalendy sends automatic reminders to your clients about their appointments, reducing no-show rates      and helping you maintain an organized schedule.",
                            imgUrl: "assets/advantages5.png",
                            title: "Automatic Reminders"),
                        CardItem(
                            discription:
                                "Set your availability according to your preferences. You can block specific times, add days off,  and adjust your calendar to fit your personal and professional needs.",
                            imgUrl: "assets/advantages6.png",
                            title: "Customization"),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 1100.h,
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
                    Text("Let’s Help Your Client’s",
                    style: GoogleFonts.inter(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),),

                    SizedBox(height: 20.h,),
                    Text("Don’t remember the haircut you gave your client last time?",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),),
                    SizedBox(height: 20.h,),
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
                                colorAll:  Color(0xff003366)),
                            CardItem(
                                discription:
                                    "All notes you take in YouCalendy are completely private and only you can access them. This  ensures that your clients' information is secure and confidential.",
                                imgUrl: "assets/client_help5.png",
                                title: "Private and Secure Notes",
                                colorAll: Color(0xff003366),),
                          ],
                        ),
                  ],
                ),
              ),
              Container(
                 height: 1100.h,
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
                    SizedBox(height: 30.h,),
                    Text("Do your clients get nervous when explaining their \nhaircut  and sometimes don’t express themselves well?",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff003366),
                    ),
                    textAlign: TextAlign.center,),

                    SizedBox(height: 30.h,),
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
                                colorAll: Color(0xff003366),),
                            CardItem(
                                discription:
                                    "A written description and a reference image eliminate misunderstandings and ensure that you understand exactly what the client wants, improving the accuracy of the service.",
                                imgUrl: "assets/advantages8.png",
                                title: "Clarity in Communication",
                                colorAll: Color(0xff003366),),
                            CardItem(
                                discription:
                                    "From your salon, you can  review scheduled appointments, read descriptions, and see reference photos  before the client arrives. This allows you to better prepare and plan your  time more efficiently.",
                                imgUrl: "assets/advantages9.png",
                                title: "Preparation and Efficiency",
                                colorAll: Color(0xff003366),),
                            CardItem(
                                discription:
                                    "When the client arrives at  your salon, you can assure them that you know exactly what they need. This preparation and attention to detail increase client satisfaction and improve service quality.",
                                imgUrl: "assets/advantages10.png",
                                title: "Improved Service Quality"),
                            CardItem(
                                discription: "Having all the necessary  information in advance allows you to work faster and more efficiently,  which is valuable for both your production times and the client’s  experience.",
                                imgUrl: "assets/advantages11.png",
                                title: "Time Optimization"),
                            
                          ],
                        ),
                  ],
                ),
              ),

              Container(
                 height: 1100.h,
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
                    
                    SizedBox(height: 30.h,),
                    Text("Benefits of Mass SMS with YouCalendy:",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff003366),
                    ),
                    textAlign: TextAlign.center,),
                    SizedBox(height: 30.h,),
                    Text("Do you close your salon and want to notify all your clients?",
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff003366),
                    ),
                    textAlign: TextAlign.center,),

                    SizedBox(height: 30.h,),
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
                                colorAll: Color(0xff003366),),
                            CardItem(
                                discription:
                                    "By sending SMS messages, you  reach all your clients without needing them to have internet access. This   is especially useful to ensure everyone, regardless of their communication   preferences, receives your messages.",
                                imgUrl: "assets/benefit2.png",
                                title: "Wide Coverage",
                                colorAll: Color(0xff003366),),
                            CardItem(
                                discription:
                                    "You can schedule messages to   be sent at specific times, ensuring the information reaches at the most  appropriate moment. This allows you to plan in advance and ensure important messages are not forgotten.",
                                imgUrl: "assets/benefit3.png",
                                title: "Automation and Scheduling",
                                colorAll: Color(0xff003366),),
                            CardItem(
                                discription:
                                    "YouCalendy offers access to a   collection of strategic marketing messages designed to increase your   revenue. These messages have been meticulously developed to help you achieve your business goals, whether promoting special offers, new  services, or events in your salon.",
                                imgUrl: "assets/benefit4.png",
                                title: "Strategic Marketing Messages"),
                            CardItem(
                                discription: "You have complete freedom to create your personalized messages tailored to each of your needs. You can  address your clients by name, offer exclusive promotions based on their   service history, and much more.",
                                imgUrl: "assets/benefit5.png",
                                title: "Personalization"),
                            
                          ],
                        ),
                  ],
                ),
              ),

              Container(
                height: 300.h,
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
                                  color: Color(0xff003366),
                                  decoration: TextDecoration.underline,
                                )),
                            TextSpan(
                              text: 'YouCalendy',
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
                                  color: Color(0xff003366),
                                  decoration: TextDecoration.underline,
                                ))
                          ],
                        ),
                      ),
                ),
              ),

              Container(
                height: 1400.h,
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
                    Wrap(
                      spacing: 25,
                      runSpacing: 25,
                      alignment: WrapAlignment.center,
                      children: [
                        ShadowItem(imgUrl: "assets/settings1.png", title: "Control Panel:", description: "Central hub for all  functionalities. Icons on the left side for easy  navigation.Icons expand to show details on the right side."),
                        ShadowItem(imgUrl: "assets/settings2.png", title: "Profile Configuration:", description: "Edit business name, phone number, and description.Create customized booking  links.Set business hours and location on maps.Upload profile icon, header, and photos.Preview profile as clients will see it.Create and manage services with names, prices, and durations."),
                        ShadowItem(imgUrl: "assets/settings3.png", title: "Appointment Scheduling:", description: "Calendar view to see clients appointments.Ability to schedule appointments manually.Service selection with time slot allocation.Private notes on client  appointments.Option to register new clients."),

                        ShadowItem(imgUrl: "assets/settings4.png", title: "Client Management:", description: "Button to add new clients. Fields for client's name, last name, phone number, and email. Private notes for each client. Ability to view notes during  appointments."),

                        ShadowItem(imgUrl: "assets/settings5.png", title: "Team Management:", description: "Add team members and their available services. Set working hours for each team  member. Clients can choose their preferred barber and see their availability."),
                        ShadowItem(imgUrl: "assets/settings6.png", title: "Marketing:", description: "Send personalized mass messages via SMS. Schedule feature for mass  messaging. Set and manage promotions."),
                        ShadowItem(imgUrl: "assets/settings7.png", title: "Client Interaction:", description: "Clients access barber profiles through provided links.View services, prices,location, and contact information. Book appointments online by selecting services and available slots. Option to provide reference photos for haircuts. Option to write detailed instructions for haircuts. Registration process with acceptance of terms of use and privacy policy."),
                        ShadowItem(imgUrl: "assets/settings8.png", title: "Subscription Management:", description: "Setup subscription with a one-month free trial.Credit card input required for  subscription. Easy cancellation through the subscription management icon in the control panel. Manage subscription plans. Manage payment methods."),

                      ],
                    )
                  ],
                ),
              ),

              Container(
                height: 150.h,
                width: double.maxFinite,
                child: Row(
                  children: [
                    Image.asset("assets/logo.png",height: 40.h,width: 120.w,),
                    SizedBox(width: 20.w,),
                    Expanded(
                      child: Text("Organize your barbershop efficiently and professionally with YouCalendy. Forget about out-of-hours calls and confusion in appointment management.",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffE8EBFF)
                      ),),
                    )
                  ],
                ),
              ),
              const Divider(),
              Container(
                padding: EdgeInsets.only(top: 20.h, left: 40.w,right: 40.w),
                //height: 400.h,
                width: double.maxFinite,
                child: Column(
                  children: [
                    Row(
                      children: [
                        const DeshboardFooterColumn(
                          title: "Product",
                          text1: "Features",
                          text2: "Sellers",
                          text3: "Case studies",
                          text4: "Reviews", 
                          text5: "Updates"
                          ),
                        SizedBox(width: 35.w,),
                        const DeshboardFooterColumn(
                          title: "Company",
                          text1: "About",
                          text2: "Contact us",
                          text3: "Careers",
                          text4: "Culture", 
                          text5: "Blog"
                          ),
                          SizedBox(width: 35.w,),
                          const DeshboardFooterColumn(
                          title: "Support",
                          text1: "Getting started",
                          text2: "Help center",
                          text3: "Server status",
                          text4: "Report a bug", 
                          text5: "Chat support"
                          ),
                    
                          SizedBox(width: 35.w,),
                          const DeshboardFooterColumn(
                          title: "Downloads",
                          text1: "IOS App",
                          text2: "Android",
                          text3: "Mac App",
                          text4: "Windows App", 
                          text5: "Chrome OS App"
                          ),
                          SizedBox(width: 35.w,),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Subscribe to our newsletter",
                              style: GoogleFonts.dmSans(
                                fontSize: 7.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),),
                              SizedBox(height: 20.h,),
                              Text("Subscribe to our newsletter",
                              style: GoogleFonts.dmSans(
                                fontSize: 6.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),),
                              SizedBox(height: 20.h,),
                                Container(
                                  height: 50.h,
                                  width: 90.w,
                                  decoration: BoxDecoration(
                                  color: Colors.white, 
                                  borderRadius: BorderRadius.circular(50.r),
                                    ),
                                  child: Center(
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'Enter your email',
                                        hintStyle: GoogleFonts.dmSans(
                                          color: Colors.grey,
                                          fontSize: 7.sp,
                                          fontWeight: FontWeight.w400,
                                          ),
                                        border: InputBorder.none, 
                                        contentPadding: EdgeInsets.symmetric(horizontal: 20.h),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30.h,),
                                Container(
                                   height: 50.h,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                  color: Color(0xffE8EBFF), 
                                  borderRadius: BorderRadius.circular(50.r),
                                    ),
                                  child: Center(
                                    child: Text("Subscribe",
                                    style: GoogleFonts.dmSans(
                                      color: Color(0xFF003366),
                                      fontSize: 6.sp,
                                      fontWeight: FontWeight.w500,
                                    ),),
                                  ),
                                )
                              ],
                            ),
                          )
                      ],
                    ),
                    SizedBox(height: 30.h,),
                    Divider(),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        Text("Copyright © 2024 YouCalendy | All Rights Reserved ",
                        style: GoogleFonts.dmSans(
                          fontSize: 7.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),),
                        Spacer(),
                        Image.asset("assets/facebook.png",height: 19.h,width: 11.w,),
                        Image.asset("assets/twitter.png",height: 19.h,width: 11.w,),
                        Image.asset("assets/insta.png",height: 19.h,width: 11.w,),
                        Image.asset("assets/linkedin.png",height: 19.h,width: 11.w,),
                        Image.asset("assets/youtube.png",height: 19.h,width: 11.w,),
                      ],
                    ),
                    SizedBox(height: 20.h,)
                  ],
                ),
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
