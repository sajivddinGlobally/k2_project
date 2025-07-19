import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k2_app/screen/login.page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/startimage.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/dark.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "K2",
                    style: GoogleFonts.inter(
                      fontSize: 100.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFFFFF),
                      letterSpacing: -1,
                    ),
                  ),
                  Text(
                    "Welcome to K2 App",
                    style: GoogleFonts.inter(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFFFFF),
                      letterSpacing: -1,
                    ),
                  ),
                  //SizedBox(height: 8.h),
                  Text(
                    "Discover thousands of products from your favorite stores—all in one place.",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffFFFFFF),
                      letterSpacing: -1,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(400.w, 46.h),
                        backgroundColor: Color(0xff4A3DFE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.r),
                        ),
                      ),
                      onPressed: () {
                        // showModalBottomSheet(
                        //           context: context,
                        //           isScrollControlled: true,
                        //           shape: RoundedRectangleBorder(
                        //             borderRadius: BorderRadius.vertical(
                        //               top: Radius.circular(20),
                        //             ),
                        //           ),
                        //           builder: (context) {
                        //             return Container(
                        //               height:
                        //                   MediaQuery.of(context).size.height,
                        //               decoration: BoxDecoration(
                        //                 color: Colors.white,
                        //                 borderRadius: BorderRadius.only(
                        //                   topLeft: Radius.circular(30),
                        //                   topRight: Radius.circular(30),
                        //                 ),
                        //               ),
                        //               child: LoginPage(), // ✅ Your OTP Page Here
                        //             );
                        //           },
                        //         );
                        Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text(
                        "Get Started ",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFFFFFF),
                          //letterSpacing: -1,
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
    );
  }
}
