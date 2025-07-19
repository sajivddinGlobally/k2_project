import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k2_app/screen/YourAddress.dart';
import 'package:k2_app/screen/editProfile.page.dart';
import 'package:k2_app/screen/help.page.dart';
import 'package:k2_app/screen/language.page.dart';
import 'package:k2_app/screen/notification.page.dart';
import 'package:k2_app/screen/security.page.dart';

import 'ProfilePaymentPage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F7),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffFFFFFF),
        leading: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff010311),
              size: 24.sp,
            ),
          ),
        ),
        title: Text(
          "My Profile",
          style: GoogleFonts.inter(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff010311),
            letterSpacing: -1,
          ),
        ),
        actions: [
          Row(
            children: [
              Text(
                "Dark Mode",
                style: GoogleFonts.inter(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff211D38),
                ),
              ),
              Transform.scale(
                scale: 0.5,
                child: Switch(
                  value: isSwitch,
                  onChanged: (value) {
                    setState(() {
                      isSwitch = value;
                    });
                  },
                ),
              ),
              SizedBox(width: 10.w),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
                top: 20.h,
                bottom: 20.h,
              ),
              decoration: BoxDecoration(color: Color(0xffFFFFFF)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 400.w,
                    height: 80.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Color(0xff4A3DFE),
                    ),
                    child: Padding(
                      padding: EdgeInsetsGeometry.only(
                        left: 15.w,
                        right: 15.w,
                        // top: 15.h,
                        // bottom: 15.h,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 50.w,
                            height: 50.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffE7E6F3),
                            ),
                            child: Center(
                              child: Text(
                                "AK",
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff211D38),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Adam Kuthrapali",
                                style: GoogleFonts.inter(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffFFFFFF),
                                  letterSpacing: -1,
                                  height: 1.1,
                                ),
                              ),
                              Text(
                                "kutraadmi@gmail.com",
                                style: GoogleFonts.inter(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xffFFFFFF),
                                  letterSpacing: -1,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: 36.w,
                            height: 36.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(25, 255, 255, 255),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.settings,
                                size: 18.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 127.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Color(0xff00D0B8),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "24",
                              style: GoogleFonts.inter(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                height: 1,
                              ),
                            ),
                            Text(
                              "Orders",
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 127.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Color(0xff00D0B8),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "4.8",
                              style: GoogleFonts.inter(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                height: 1,
                              ),
                            ),
                            Text(
                              "Ratings",
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 127.w,
                        height: 60.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: Color(0xff00D0B8),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "2 Y",
                              style: GoogleFonts.inter(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                height: 1,
                              ),
                            ),
                            Text(
                              "Members",
                              style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    width: 400.w,
                    height: 72.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      //color: Color.fromARGB(255, 254, 242, 204),
                      color: Color.fromARGB(255, 245, 235, 213),
                    ),
                    child: Padding(
                      padding: EdgeInsetsGeometry.only(left: 15.w, right: 15.w),
                      child: Row(
                        children: [
                          Container(
                            width: 42.w,
                            height: 42.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffFFFFFF),
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/crown.png",
                                width: 25.w,
                                height: 25.h,
                                color: Color(0xffE59F12),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "K2 Gold Member ",
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff211D38),
                                ),
                              ),
                              Text(
                                "Enjoy exclusive benefits and rewards",
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff211D38),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: 77.w,
                            height: 28.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.r),
                              border: Border.all(
                                color: Color(0xff010311),
                                width: 0.93.w,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Upgrade",
                                style: GoogleFonts.inter(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff010311),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    width: 400.w,
                    height: 72.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      //color: Color.fromARGB(255, 254, 242, 204),
                      color: Color.fromARGB(255, 218, 213, 245),
                    ),
                    child: Padding(
                      padding: EdgeInsetsGeometry.only(left: 15.w, right: 15.w),
                      child: Row(
                        children: [
                          Container(
                            width: 42.w,
                            height: 42.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffFFFFFF),
                            ),
                            child: Center(
                              child: Image.asset(
                                "assets/crown.png",
                                width: 25.w,
                                height: 25.h,
                                color: Color(0xff462ECF),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "K2 Gold Member ",
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff211D38),
                                ),
                              ),
                              Text(
                                "Enjoy exclusive benefits and rewards",
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff211D38),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: 77.w,
                            height: 28.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.r),
                              border: Border.all(
                                color: Color(0xff010311),
                                width: 0.93.w,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Apply",
                                style: GoogleFonts.inter(
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff010311),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Column(
                children: [
                  ProBody(
                    icon: Icons.edit,
                    title: "Edit Profile",
                    subtitle: "Update your profile here",
                    color: Color(0xff211D38),
                    callback: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => EditProfilePage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 10.h),
                  ProBody(
                    icon: Icons.location_on,
                    title: "Delivery Address",
                    subtitle: "Update your Address here",
                    color: Color(0xff211D38),
                    callback: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => YourAddress()),
                      );
                    },
                  ),
                  SizedBox(height: 10.h),
                  ProBody(
                    icon: Icons.payments,
                    title: "Payment Methods",
                    subtitle: "Add payment methods here ",
                    color: Color(0xff211D38),
                    callback: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => ProfilePaymentPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 10.h),
                  ProBody(
                    icon: Icons.notifications,
                    title: "Notifications",
                    subtitle: "Manage your notifications here",
                    color: Color(0xff211D38),
                    callback: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => NotificationPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 10.h),
                  ProBody(
                    icon: Icons.security,
                    title: "Security & Privacy ",
                    subtitle: "Manage your security & privacy here",
                    color: Color(0xff211D38),
                    callback: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => SecurityPage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 10.h),
                  ProBody(
                    icon: Icons.language,
                    title: "Language",
                    subtitle: "Manage your language here",
                    color: Color(0xff211D38),
                    callback: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => LanguagePage(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 10.h),
                  ProBody(
                    icon: Icons.help,
                    title: "Help & Support",
                    subtitle: "Manage your help and support here",
                    color: Color(0xff211D38),
                    callback: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) => HelpPage()),
                      );
                    },
                  ),
                  SizedBox(height: 10.h),
                  ProBody(
                    icon: Icons.logout,
                    color: Color(0xffFF0000),
                    title: "Sign out ",
                    txtColor: Color(0xffFF0000),
                    subtitle: "Manage your sign out",
                    callback: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}

class ProBody extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final Color? txtColor;
  final VoidCallback callback;
  const ProBody({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    this.txtColor,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback(),
      child: Container(
        width: 400.w,
        height: 80.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Color(0xffFFFFFF),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 14.w),
          child: Row(
            children: [
              Container(
                width: 52.w,
                height: 52.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color.fromARGB(255, 233, 232, 235),
                ),
                child: Center(
                  child: Icon(icon, size: 24.sp, color: color),
                ),
              ),
              SizedBox(width: 12.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    // "Edit Profile",
                    title,
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      // color: Color(0xff010311),
                      color: txtColor,
                      letterSpacing: -0.60,
                    ),
                  ),
                  Text(
                    //  "Update your Address here",
                    subtitle,
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff606480),
                      letterSpacing: -0.60,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
