import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:k2_app/screen/otp.page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/splash1.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 524.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
                color: Color(0xffFFFFFF),
              ),
              child: Padding(
                padding: EdgeInsetsGeometry.only(
                  left: 28.w,
                  right: 28.w,
                  top: 30.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      "Your One-Stop Shop for Everything You Love",
                      style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff010311),
                        letterSpacing: -1,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(color: Colors.black12, thickness: 1.w),
                        ),
                        SizedBox(width: 6.w),
                        Text(
                          "Login or Sign up",
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff787B93),
                          ),
                        ),
                        SizedBox(width: 6.w),
                        Expanded(
                          child: Divider(color: Colors.black12, thickness: 1.w),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    IntlPhoneField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          top: 11.h,
                          bottom: 11.h,
                        ),
                        counterText: "",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7.r),
                          borderSide: BorderSide(
                            color: Color(0xffE6E8F2),
                            width: 1.w,
                          ),
                        ),
                        hintText: "Enter your number",
                        hintStyle: GoogleFonts.inter(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffC7CAD9),
                        ),
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                    SizedBox(height: 20.h),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(400.w, 52.h),
                        backgroundColor: Color(0xff4A3DFE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.r),
                        ),
                      ),
                      onPressed: () {
                        // showModalBottomSheet(
                        //   context: context,
                        //   isScrollControlled: true,
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.vertical(
                        //       top: Radius.circular(20),
                        //     ),
                        //   ),
                        //   builder: (context) {
                        //     return Container(
                        //       height: MediaQuery.of(context).size.height,
                        //       decoration: BoxDecoration(
                        //         color: Colors.white,
                        //         borderRadius: BorderRadius.only(
                        //           topLeft: Radius.circular(30),
                        //           topRight: Radius.circular(30),
                        //         ),
                        //       ),
                        //       child: OtpPage(), // ✅ Your OTP Page Here
                        //     );
                        //   },
                        // );
                        Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => OtpPage()),
                        );
                      },
                      child: Text(
                        "Continue",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(color: Colors.black12, thickness: 1.w),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "or",
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff787B93),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Divider(color: Colors.black12, thickness: 1.w),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 52.w,
                          height: 52.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xffE6E8F2),
                              width: 1.w,
                            ),
                          ),
                          child: Center(
                            child: Image.asset("assets/google.png"),
                          ),
                        ),
                        SizedBox(width: 20.w),
                        Container(
                          width: 52.w,
                          height: 52.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xffE6E8F2),
                              width: 1.w,
                            ),
                          ),
                          child: Center(child: Image.asset("assets/mail.png")),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "By continuing, you agree to our ",
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              color: Color(0xff787B93),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: "Terms or service  ",
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              color: Color(0xff4A3DFE),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: "and ",
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              color: Color(0xff787B93),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: "privacy policy",
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              color: Color(0xff4A3DFE),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
