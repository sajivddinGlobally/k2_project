import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();

  File? image;
  final picker = ImagePicker();

  Future pickImageFromGallery() async {
    var status = await Permission.camera.request();
    if (status.isGranted) {
      final PickedFile = await picker.pickImage(source: ImageSource.gallery);
      if (PickedFile != null) {
        setState(() {
          image = File(PickedFile.path);
        });
      }
    } else {
      print("Gallery Permission isDenied");
    }
  }

  Future pickImageFromCamera() async {
    var status = await Permission.camera.request();
    if (status.isGranted) {
      final PickedFile = await picker.pickImage(source: ImageSource.camera);
      if (PickedFile != null) {
        setState(() {
          image = File(PickedFile.path);
        });
      }
    } else {
      print("Camera Permission isDenied");
    }
  }

  Future showImage() async {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              pickImageFromGallery();
            },
            child: Text("Gallery"),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              Navigator.pop(context);
              pickImageFromCamera();
            },
            child: Text("Camera"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
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
              "Edit Profile",
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Divider(color: Color(0xffE6E8F2), thickness: 2.w),
            SizedBox(height: 20.h),
            EditBody(
              hint: "Enter your name",
              name: "Full Name",
              inputType: TextInputType.name,
              controller: nameController,
            ),
            SizedBox(height: 25.h),
            EditBody(
              hint: "Enter your Number",
              name: "Mobile Number",
              inputType: TextInputType.phone,
              controller: phoneController,
            ),
            SizedBox(height: 25.h),
            EditBody(
              hint: "Enter your Address",
              name: "Email Address",
              inputType: TextInputType.emailAddress,
              controller: emailController,
            ),
            SizedBox(height: 25.h),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: InkWell(
                onTap: () {
                  showImage();
                },
                child: Container(
                  width: 400.w,
                  height: 122.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: Color(0xffE6E8F2), width: 1.w),
                  ),
                  child: image == null
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.file_upload_outlined, size: 24.sp),
                            Text(
                              "Upload Image",
                              style: GoogleFonts.inter(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff010311),
                              ),
                            ),
                          ],
                        )
                      : Image.file(image!, fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(height: 80.h),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.only(bottom: 10.h),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(400.w, 52.h),
            backgroundColor: Color(0xff4A3DFE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
              side: BorderSide.none,
            ),
          ),
          onPressed: () {},
          child: Text(
            "Save Update",
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class EditBody extends StatelessWidget {
  final String name;
  final String hint;
  final TextEditingController controller;
  final TextInputType inputType;
  const EditBody({
    super.key,
    required this.name,
    required this.hint,
    required this.controller,
    required this.inputType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            // "Full Name",
            name,
            style: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Color(0xff606480),
            ),
          ),
          SizedBox(height: 12.h),
          TextField(
            keyboardType: inputType,
            controller: controller,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
                top: 15.h,
                bottom: 15.h,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: Color(0xffE6E8F2), width: 1.w),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(color: Color(0xffE6E8F2), width: 1.w),
              ),
              hintText: hint,
              hintStyle: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xffC7CAD9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
