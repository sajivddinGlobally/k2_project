import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:k2_app/screen/wallet.page.dart';

import 'OrderConfirmation.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int _selectedIndex = -1; // -1 means no container is selected
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16.sp),
                  bottomLeft: Radius.circular(16.sp),
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20.h),
                    // Back button row
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.arrow_back_ios, size: 25.sp),
                        ),
                        SizedBox(width: 10.w),
                        Text(
                          "Payment Method",
                          style: GoogleFonts.inter(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ), // Space between back row and textfield
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(builder: (context) => WalletPage()),
                );
              },
              child: Container(
                margin: EdgeInsets.all(6.sp),
                padding: EdgeInsets.all(12.sp),
                height: 150
                    .h, // Increased height to accommodate both color and size
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.sp),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "K2 Wallet",
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      padding: EdgeInsets.only(left: 10.w, right: 10.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: Color(0xff4A3DFE),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.wallet, color: Colors.white),
                          SizedBox(width: 10.w),
                          // Wallet Info
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Wallet balance",
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "₹150.05",
                                style: GoogleFonts.inter(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          // Checkbox
                          StatefulBuilder(
                            builder: (context, setState) {
                              return Checkbox(
                                checkColor: Colors.white,
                                value: isChecked,
                                side: const BorderSide(
                                  color: Colors
                                      .white, // White border for both checked and unchecked states
                                  width: 2, // Optional: Adjust border thickness
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(6.sp),
              padding: EdgeInsets.all(12.sp),
              height:
                  280.h, // Increased height to accommodate both color and size
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.sp),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Payment Method",
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF5F5F7),
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
                    padding: EdgeInsets.all(10.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg/payment2.svg',
                              fit: BoxFit.contain,
                            ),
                            SizedBox(width: 20.w),
                            Text(
                              "EVC Plus",
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF5F5F7),
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
                    padding: EdgeInsets.all(10.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg/payment1.svg',
                              fit: BoxFit.contain,
                            ),
                            SizedBox(width: 20.w),
                            Text(
                              "EVC Plus",
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF5F5F7),
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
                    padding: EdgeInsets.all(10.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg/payment3.svg',
                              fit: BoxFit.contain,
                            ),
                            SizedBox(width: 20.w),
                            Text(
                              "EVC Plus",
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderConfirmationPage(),
                  ),
                );
              },
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff4A3DFE),
                  borderRadius: BorderRadius.circular(10.sp),
                  border: Border.all(color: Color(0xff4A3DFE)),
                ),
                child: Center(
                  child: Text(
                    "Save",
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer(String text, int index) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index; // Update selected index
        });
      },
      child: Container(
        height: 50.h,
        width: 70.w,
        decoration: BoxDecoration(
          color: isSelected ? Color(0xff4A3DFE) : Colors.white,
          borderRadius: BorderRadius.circular(30.sp),
          border: Border.all(
            color: isSelected
                ? Color(0xff4A3DFE)
                : Colors.grey, // Optional: border for unselected
            width: 1,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: isSelected
                  ? Colors.white
                  : Colors.black, // Text color changes based on selection
            ),
          ),
        ),
      ),
    );
  }
}
