import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePaymentPage extends StatefulWidget {
  const ProfilePaymentPage({super.key});

  @override
  State<ProfilePaymentPage> createState() => _ProfilePaymentPageState();
}

class _ProfilePaymentPageState extends State<ProfilePaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F7),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Color(0xff010311),
                size: 24.sp,
              ),
            ),
            SizedBox(width: 10.w),
            Text(
              "Payment Method ",
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xff010311),
                letterSpacing: -1,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8.h),
          Container(
            margin: EdgeInsets.only(left: 15.w, right: 15.w),
            padding: EdgeInsets.only(
              left: 12.w,
              right: 12.w,
              bottom: 10.h,
              top: 20.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: Color(0xffFFFFFF),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Saved Cards",
                  style: GoogleFonts.inter(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff606480),
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  padding: EdgeInsets.only(top: 15.h, bottom: 15.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: Color(0xffF5F5F7),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //SizedBox(height: 15.h),
                      Center(
                        child: Text(
                          "Add New Card",
                          style: GoogleFonts.inter(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff4A3DFE),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Center(
                        child: Dash(
                          direction: Axis.horizontal,
                          length: 380.w,
                          dashLength: 6,
                          dashGap: 6,
                          dashColor: Color(0xffD2D3D9),
                          dashThickness: 1.w,
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        children: [
                          SizedBox(width: 15.w),
                          Icon(
                            Icons.payment_outlined,
                            color: Color(0xff606480),
                            size: 24.sp,
                          ),
                          SizedBox(width: 8.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mastercard - XX90",
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff010311),
                                ),
                              ),
                              Text(
                                "Debit Card",
                                style: GoogleFonts.inter(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff606480),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "DELETE CARD",
                            style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFF0000),
                            ),
                          ),
                          SizedBox(width: 15.w),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Container(
            margin: EdgeInsets.only(left: 15.w, right: 15.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
                top: 20.h,
                bottom: 20.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.h),
                  Text(
                    "Wallet",
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff606480),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  paymentMethod(
                    "assets/amazon.png",
                    "Amazon Pay",
                    "Link Account",
                  ),
                  SizedBox(height: 15.h),
                  paymentMethod("assets/appl.png", "Apple Pay", "Link Account"),
                  SizedBox(height: 15.h),
                  paymentMethod("assets/viza.png", "Visa •••• 1234", "DELETE "),
                  SizedBox(height: 15.h),
                  paymentMethod("assets/viza.png", "EVC PLUS", "Link Account"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget paymentMethod(String image, String payment, String link) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(image),
            SizedBox(width: 10.w),
            Text(
              payment,
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xff010311),
              ),
            ),
            Spacer(),
            Text(
              link,
              style: GoogleFonts.inter(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: payment.contains("Visa •••• 1234")
                    ? Color(0xffFF0000)
                    : Color(0xff4A3DFE),
              ),
            ),
          ],
        ),
        SizedBox(height: 15.h),
        // Center(
        //   child: Dash(
        //     direction: Axis.horizontal,
        //     length: 360.w,
        //     dashLength: 6,
        //     dashGap: 6,
        //     dashColor: Color(0xffD2D3D9),
        //     dashThickness: 1.w,
        //   ),
        // ),
      ],
    );
  }
}