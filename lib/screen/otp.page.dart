import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k2_app/screen/home.page.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
              height: 324.h,
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
                      "Enter the OTP sent to your number +91-XXXXXX7898",
                      style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff010311),
                        letterSpacing: -1,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    OtpPinField(
                      maxLength: 6,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      fieldHeight: 51.h,
                      fieldWidth: 50.w,
                      keyboardType: TextInputType.number,
                      otpPinFieldStyle: OtpPinFieldStyle(
                        defaultFieldBorderColor: Color(0xffE6E8F2),
                        activeFieldBorderColor: Color.fromARGB(255, 30, 62, 98),
                      ),
                      otpPinFieldDecoration:
                          OtpPinFieldDecoration.defaultPinBoxDecoration,
                      onSubmit: (text) {},
                      onChange: (text) {},
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
                             Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text(
                        "Verify OTP",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Center(
                      child: Text(
                        "Resend OTP",
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4A3DFE),
                        ),
                      ),
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
