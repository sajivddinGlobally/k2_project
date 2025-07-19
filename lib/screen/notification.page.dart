import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F7),
      body: Padding(
        padding: EdgeInsets.only(left: 12.w, right: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 424.w,
              height: 90.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r),
                ),
                color: Color(0xffFFFFFF),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20.w),
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
                    "Notification",
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
            SizedBox(height: 8.h),
            NotificationBody(
              title: "Order Updates",
              subtitle:
                  "Receive notifications for order status, shipping, and delivery.",
            ),
            SizedBox(height: 8.h),
            NotificationBody(
              title: 'Payment Alerts',
              subtitle:
                  'Get notified about successful payments, refunds, and billing issues.',
            ),
            SizedBox(height: 8.h),
            NotificationBody(
              title: 'Promotional Offers',
              subtitle:
                  'Stay informed on special discounts, sales, and exclusive promotions.',
            ),
            SizedBox(height: 8.h),
            NotificationBody(
              title: 'Account Security',
              subtitle:
                  'Receive alerts for suspicious activity, login attempts, and password changes.',
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationBody extends StatefulWidget {
  final String title;
  final String subtitle;
  const NotificationBody({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  State<NotificationBody> createState() => _NotificationBodyState();
}

class _NotificationBodyState extends State<NotificationBody> {
  bool isSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 424.w,
      //height: 63.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Color(0xffFFFFFF),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, top: 10.h, bottom: 10.h),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff010311),
                    letterSpacing: -0.5,
                  ),
                ),
                SizedBox(
                  width: 320.w,
                  child: Text(
                    widget.subtitle,
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff606480),
                      letterSpacing: -0.5,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
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
          ],
        ),
      ),
    );
  }
}
