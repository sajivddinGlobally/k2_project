import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class SecurityPage extends StatefulWidget {
  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  void _showDeleteBottomSheet() {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return SizedBox(
          height: 360.h,
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
                // margin: EdgeInsets.only(top: 40.h),
                height: 360.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),
                child: DeleteAccountSheet(),
              ),
            ],
          ),
        );
      },
    );
  }

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
                    "Security & Privacy ",
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
            Container(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
                bottom: 20.w,
                top: 20.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Color(0xffFFFFFF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Privacy Settings",
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff606480),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  BuildSecurity(name: "Show My Profile Picture to Sellers"),
                  SizedBox(height: 10.h),
                  BuildSecurity(name: "Show My Profile Picture to Sellers"),
                  SizedBox(height: 10.h),
                  BuildSecurity(name: "Allow Sellers to Contact Me via Chat"),
                  SizedBox(height: 10.h),
                  BuildSecurity(name: "Show My Order History to Sellers"),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
                bottom: 20.w,
                top: 20.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Color(0xffFFFFFF),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Privacy Settings",
                    style: GoogleFonts.inter(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff606480),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  InkWell(
                    onTap: () {
                      _showDeleteBottomSheet();
                    },
                    child: Container(
                      width: 385.w,
                      height: 61.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        color: Color(0xffF5F5F7),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.w, right: 12.w),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Delete Account",
                                  style: GoogleFonts.inter(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff010311),
                                    letterSpacing: -0.5,
                                  ),
                                ),
                                Text(
                                  "Permanently delete your account and all associated data.",
                                  style: GoogleFonts.inter(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff010311),
                                    letterSpacing: -0.5,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "DELETE",
                              style: GoogleFonts.inter(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffFF0000),
                              ),
                            ),
                          ],
                        ),
                      ),
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
}

class BuildSecurity extends StatefulWidget {
  final String name;

  const BuildSecurity({super.key, required this.name});

  @override
  State<BuildSecurity> createState() => _BuildSecurityState();
}

class _BuildSecurityState extends State<BuildSecurity> {
  bool isSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 384.w,
      height: 52.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: Color(0xffF5F5F7),
      ),
      child: Row(
        children: [
          SizedBox(width: 12.w),
          Text(
            widget.name,
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xff010311),
              letterSpacing: -0.5,
            ),
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
    );
  }
}

class DeleteAccountSheet extends StatefulWidget {
  const DeleteAccountSheet({super.key});

  @override
  State<DeleteAccountSheet> createState() => _DeleteAccountSheetState();
}

class _DeleteAccountSheetState extends State<DeleteAccountSheet> {
  void _DeleteAccountSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
            height: 543.h,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 1.0,
                    sigmaY: 1.0,
                  ), // adjust as needed
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1), // optional dim
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.r),
                        topRight: Radius.circular(30.r),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -60,
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
                  // margin: EdgeInsets.only(top: 40.h),
                  //height: 543.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(30.r),
                    ),
                  ),
                  child: DeleteAccount(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.w,
        right: 20.w,
        top: 30.h,
        bottom: 20.h,
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deleting your account will permanently remove:",
            style: GoogleFonts.inter(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xff010311),
              letterSpacing: -0.6,
            ),
          ),
          SizedBox(height: 10.h),
          _infoBullet("Your profile and personal data"),
          SizedBox(height: 6.h),
          _infoBullet("All saved addresses and payment methods"),
          SizedBox(height: 6.h),
          _infoBullet("Your order history"),
          SizedBox(height: 6.h),
          _infoBullet("Wallet balance (if any)"),
          SizedBox(height: 6.h),
          Text(
            "This action cannot be undone.",
            style: GoogleFonts.inter(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xff606480),
              letterSpacing: -0.5,
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              SizedBox(
                width: 20.w,
                height: 20.h,
                child: Transform.scale(
                  scale: 0.8,
                  child: Checkbox(
                    value: isCheck,
                    onChanged: (value) {
                      setState(() {
                        isCheck = value!;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Text(
                "I understand that all my data will be permanently deleted.",
                style: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff606480),
                  letterSpacing: -0.5,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(195.w, 52.h),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.r),
                    side: BorderSide(color: Color(0xffFF0000), width: 1.w),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Cancel",
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFF0000),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(195.w, 52.h),
                  backgroundColor: Color(0xff4A3DFE),
                  disabledBackgroundColor: Color(0xff4A3DFE).withOpacity(0.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.r),
                  ),
                ),
                onPressed: isCheck
                    ? () {
                        _DeleteAccountSheet();
                      }
                    : null,
                child: Text(
                  "Delete Account",
                  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _infoBullet(String txt) {
    return Row(
      children: [
        Container(
          width: 6.w,
          height: 6.h,
          decoration: BoxDecoration(
            color: Color(0xff606480),
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 10.w),
        Text(
          txt,
          style: GoogleFonts.inter(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff606480),
            letterSpacing: -0.5,
          ),
        ),
      ],
    );
  }
}

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  int tab = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        top: 20.h,
        left: 20.w,
        right: 20.w,
        //bottom: 20.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Why are you leaving?",
              style: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff010311),
              ),
            ),
          ),
          SizedBox(height: 15.h),
          InkWell(
            onTap: () {
              setState(() {
                tab = 1;
              });
            },
            child: _whyDelete(
              "I don’t find this app useful",
              tab == 1 ? Color(0xff4A3DFE) : Colors.transparent,
            ),
          ),
          SizedBox(height: 8.h),
          InkWell(
            onTap: () {
              setState(() {
                tab = 2;
              });
            },
            child: _whyDelete(
              "I have privacy concerns",
              tab == 2 ? Color(0xff4A3DFE) : Colors.transparent,
            ),
          ),
          SizedBox(height: 8.h),
          InkWell(
            onTap: () {
              setState(() {
                tab = 3;
              });
            },
            child: _whyDelete(
              "I’m getting too many notifications",
              tab == 3 ? Color(0xff4A3DFE) : Colors.transparent,
            ),
          ),
          SizedBox(height: 8.h),
          InkWell(
            onTap: () {
              setState(() {
                tab = 4;
              });
            },
            child: _whyDelete(
              "I’m not satisfied with the service",
              tab == 4 ? Color(0xff4A3DFE) : Colors.transparent,
            ),
          ),
          SizedBox(height: 8.h),
          InkWell(
            onTap: () {
              setState(() {
                tab = 5;
              });
            },
            child: _whyDelete(
              "Other",
              tab == 5 ? Color(0xff4A3DFE) : Colors.transparent,
            ),
          ),
          SizedBox(height: 10.h),
          if (tab == 5) ...[
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 6.h, left: 10.w),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.r),
                  borderSide: BorderSide(color: Color(0xff787B93), width: 1.w),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.r),
                  borderSide: BorderSide(color: Color(0xff787B93), width: 1.w),
                ),
                hintText: "Write your message.",
                hintStyle: GoogleFonts.inter(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffC7CAD9),
                ),
              ),
            ),
          ],
          SizedBox(height: 15.h),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(397.w, 52.h),
              backgroundColor: Color(0xff4A3DFE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.r),
              ),
            ),
            onPressed: () {},
            child: Text(
              "Delete Account Permanently",
              style: GoogleFonts.inter(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xffFFFFFF),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _whyDelete(String name, Color color) {
    return Container(
      width: 400.w,
      height: 52.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.r),
        border: Border.all(color: Color(0xffE6E8F2), width: 1.w),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15.r),
            width: 20.w,
            height: 20.h,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xff787B93)),
            ),
          ),
          SizedBox(width: 10.w),
          Text(
            name,
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xff010311),
              letterSpacing: -0.5,
            ),
          ),
        ],
      ),
    );
  }
}
