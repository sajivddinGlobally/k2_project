import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k2_app/screen/home.page.dart';

class OrderConfirmationPage extends StatefulWidget {
  const OrderConfirmationPage({super.key});

  @override
  State<OrderConfirmationPage> createState() => _OrderConfirmationPageState();
}

class _OrderConfirmationPageState extends State<OrderConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/OrderConfirmation.png'),
          Text(
            "Your Order is Confirmed!",
            style: GoogleFonts.inter(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            margin: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Text(
              "Thank you for shopping with us. We’ve received your order and will start processing it right away.",
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff606480),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
                (Route<dynamic> route) => false, // Removes all previous routes
              );
            },
            child: Container(
              margin: EdgeInsets.only(left: 10.w, right: 10.w),
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xff606480)),
                borderRadius: BorderRadius.circular(10.sp),
              ),
              height: 50.h,
              width: double.infinity,
              child: Center(
                child: Text(
                  "Continue Shopping",
                  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff606480),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
