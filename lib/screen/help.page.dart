import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  void showContactSupportSheet(
    BuildContext context, {
    bool showDropdown = true,
  }) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true, // important
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: 345.h,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 2.0,
                    sigmaY: 2.0,
                  ), // adjust as needed
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1), // optional dim
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -50,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 48.w,
                        height: 48.w,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(51, 0, 0, 0),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.close,
                          size: 24.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  //margin: EdgeInsets.only(top: 40.h),
                  //height: 345.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r),
                    ),
                  ),
                  child: ContactSupportSheet(showDropdown: showDropdown),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F7),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 15.w, right: 15.w),
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
                    "Help & Support ",
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
            SizedBox(height: 10.h),
            InkWell(
              onTap: () {
                showContactSupportSheet(context, showDropdown: true);
              },
              child: _helpSuport(
                "Contact",
                "Contact Support",
                "Need help? Reach out to us.",
              ),
            ),
            SizedBox(height: 10.h),
            InkWell(
              onTap: () {
                showContactSupportSheet(context, showDropdown: false);
              },
              child: _helpSuport(
                "Report",
                "Report a Problem",
                "Let us know if something isn’t working right.",
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              margin: EdgeInsets.only(left: 15.w, right: 15.w),
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
                bottom: 20.h,
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
                    "FAQs",
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff606480),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.h),
                    padding: EdgeInsets.only(
                      left: 16.w,
                      right: 16.w,
                      top: 20.h,
                      bottom: 20.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: Color(0xffF5F5F7),
                    ),
                    child: Column(
                      children: [
                        _FAQS("How do I track my order?"),
                        SizedBox(height: 16.h),
                        _FAQS("What payment methods are accepted?"),
                        SizedBox(height: 16.h),
                        _FAQS("How do I return or replace an item?"),
                        SizedBox(height: 16.h),
                        _FAQS("How do I contact the seller?"),
                        SizedBox(height: 16.h),
                        _FAQS("Is my payment information secure?"),
                        SizedBox(height: 16.h),
                        _FAQS("How do I add money to my wallet?"),
                        SizedBox(height: 16.h),
                        _FAQS("How do I update my delivery address?"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _FAQS(String name) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xff010311),
                letterSpacing: -0.5,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              size: 20.sp,
              color: Color(0xff606480),
            ),
          ],
        ),
        SizedBox(height: 15.h),
        Center(
          child: Dash(
            direction: Axis.horizontal,
            length: 330.w,
            dashLength: 6,
            dashGap: 6,
            dashColor: Color(0xffD2D3D9),
            dashThickness: 1.w,
          ),
        ),
      ],
    );
  }

  Widget _helpSuport(String name, String title, String subtitle) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w, right: 15.w),
      child: Container(
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
          top: 20.h,
          bottom: 20.h,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Color(0xffFFFFFF),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: GoogleFonts.inter(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff606480),
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: 16.h,
                top: 16.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Color(0xffF5F5F7),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.inter(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff010311),
                          letterSpacing: -0.5,
                        ),
                      ),
                      Text(
                        subtitle,
                        style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff606480),
                          letterSpacing: -0.5,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18.sp,
                    color: Color(0xff606480),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactSupportSheet extends StatefulWidget {
  final bool showDropdown;
  const ContactSupportSheet({super.key, required this.showDropdown});

  @override
  State<ContactSupportSheet> createState() => _ContactSupportSheetState();
}

class _ContactSupportSheetState extends State<ContactSupportSheet> {
  final TextEditingController messageController = TextEditingController();
  String? selectedIssue;

  final List<String> issueTypes = [
    'Payment Issue',
    'Login Problem',
    'App Crash',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 30.h,
        left: 20.w,
        right: 20.w,
        //bottom: 20.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              widget.showDropdown ? "Contact Support" : "Report a Problem",
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff010311),
                letterSpacing: -0.4,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          if (widget.showDropdown)
            DropdownButtonFormField<String>(
              value: selectedIssue,
              hint: Text(
                "Choose the issue type",
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff211D38),
                  letterSpacing: -0.5,
                ),
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.r),
                  borderSide: BorderSide(color: Color(0xffE6E8F2), width: 1.w),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.r),
                  borderSide: BorderSide(color: Color(0xffE6E8F2), width: 1.w),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 14.h,
                ),
              ),
              items: issueTypes.map((issue) {
                return DropdownMenuItem(
                  value: issue,
                  child: Text(
                    issue,
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff211D38),
                    ),
                  ),
                );
              }).toList(),
              onChanged: (val) {
                setState(() {
                  selectedIssue = val;
                });
              },
            ),
          SizedBox(height: 10.h),
          if (!widget.showDropdown || selectedIssue == 'Other')
            TextField(
              maxLines: widget.showDropdown ? 2 : 3,
              controller: messageController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 10.h, left: 10.w),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.r),
                  borderSide: BorderSide(color: Color(0xffE6E8F2), width: 1.w),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.r),
                  borderSide: BorderSide(color: Color(0xffE6E8F2), width: 1.w),
                ),
                hintText: widget.showDropdown
                    ? "Write your message."
                    : "Describe your problem",
                hintStyle: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffC7CAD9),
                ),
              ),
            ),
          SizedBox(height: 10.h),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(400.w, 52.h),
              backgroundColor: Color(0xff4A3DFE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.r),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Save",
              style: GoogleFonts.inter(
                color: Color(0xffFFFFFF),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
