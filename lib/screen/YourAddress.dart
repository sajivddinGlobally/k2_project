
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AddNewAddress.dart';

class YourAddress extends StatefulWidget {
  const YourAddress({super.key});
  @override
  State<YourAddress> createState() => _YourAddressState();
}
class _YourAddressState extends State<YourAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: EdgeInsets.only(left: 10.w,right: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Card Section

            Card(

              color:  Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(16.sp),
                    bottomLeft: Radius.circular(16.sp)),
              ),
              child: Container(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 20.h,),
                    // Back button row
                    Row(
                      children: [

                        InkWell(onTap: (){
                          Navigator.pop(context);

                        },child:
                        Icon(
                          Icons.arrow_back_ios,
                          size: 25.sp,
                        ),),
                        SizedBox(width: 10.w),
                        Text(
                          "Your Address",
                          style: GoogleFonts.inter(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20.h), // Space between back row and textfield





                  ],
                ),
              ),
            ),





            Container(
              margin: EdgeInsets.all(6.sp),
              padding: EdgeInsets.all(12.sp),
              height: 180.h, // Increased height to accommodate both color and size
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff4A3DFE),
                borderRadius: BorderRadius.circular(16.sp),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Home",  style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),),


                  SizedBox(height: 10.h,),
                  Text("Hodan District, near Taleh Road, Mogadishu \n+252 61 2345678",  style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),),


                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Row(children: [


                      Container(

                        height: 40.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: Colors.white),
                        child:
                        Center(child:
                        Text("Edit",
                          style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff4A3DFE)
                          ),
                        )),
                      ),
                      SizedBox(width: 10.w,),
                      Container(

                        height: 40.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.sp),
                          border: Border.all(    color: Colors.white),
                        ),
                        child:
                        Center(child:
                        Text("Delete",
                          style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                          ),
                        )),
                      )
                    ],
                    ),
                    Container(

                      height: 40.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        border: Border.all(    color: Colors.white),
                      ),
                      child:
                      Center(child:
                      Text("Default",
                        style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white
                        ),
                      )),
                    )


                  ],)


            ]),



            ),


            Container(
              margin: EdgeInsets.all(6.sp),
              padding: EdgeInsets.all(12.sp),
              height: 180.h, // Increased height to accommodate both color and size
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.sp),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("work",  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff606480)

                    ),),


                    SizedBox(height: 10.h,),
                    Text("KM4 Street, opposite Salaam Bank, Wadajir, Mogadishu +252 65 9876543",  style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff010311)
                    ),),


                    SizedBox(height: 20,),


                        Row(children: [


                          Container(

                            height: 40.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.sp),
                                color:  Color(0xff4A3DFE)),
                            child:
                            Center(child:
                            Text("Edit",
                              style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white
                              ),
                            )),
                          ),
                          SizedBox(width: 10.w,),
                          Container(

                            height: 40.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              border: Border.all(    color:  Color(0xff4A3DFE)),
                            ),
                            child:
                            Center(child:
                            Text("Delete",
                              style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4A3DFE)
                              ),
                            )),
                          ),
                          SizedBox(width: 10.w,),
                          Container(

                            height: 40.h,
                            width: 120.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              border: Border.all(    color:  Color(0xff4A3DFE)),
                            ),
                            child:
                            Center(child:
                            Text("Make Default",
                              style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color:  Color(0xff4A3DFE)
                              ),
                            )),
                          )
                        ],



                      )


                  ]),



            ),


            Container(
              margin: EdgeInsets.all(6.sp),
              padding: EdgeInsets.all(12.sp),
              height: 180.h, // Increased height to accommodate both color and size
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.sp),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("work",  style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff606480)

                    ),),


                    SizedBox(height: 10.h,),
                    Text("KM4 Street, opposite Salaam Bank, Wadajir, Mogadishu +252 65 9876543",  style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff010311)
                    ),),


                    SizedBox(height: 20,),


                    Row(children: [


                      Container(

                        height: 40.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color:  Color(0xff4A3DFE)),
                        child:
                        Center(child:
                        Text("Edit",
                          style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                          ),
                        )),
                      ),
                      SizedBox(width: 10.w,),
                      Container(

                        height: 40.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.sp),
                          border: Border.all(    color:  Color(0xff4A3DFE)),
                        ),
                        child:
                        Center(child:
                        Text("Delete",
                          style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff4A3DFE)
                          ),
                        )),
                      ),
                      SizedBox(width: 10.w,),
                      Container(

                        height: 40.h,
                        width: 120.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.sp),
                          border: Border.all(    color:  Color(0xff4A3DFE)),
                        ),
                        child:
                        Center(child:
                        Text("Make Default",
                          style: GoogleFonts.inter(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color:  Color(0xff4A3DFE)
                          ),
                        )),
                      )
                    ],



                    )


                  ]),



            ),

            Expanded(child: SizedBox()),


            InkWell(onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewAddress()));

            },

              child:
            Container(
              height: 50.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  border: Border.all(color:  Color(0xff4A3DFE))),

              child:
              Center(child:
              Text("Add New Address",
                style: GoogleFonts.inter(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color:  Color(0xff4A3DFE)
                ),),),

            ),),

            SizedBox(height: 20.h,),

          ],
        ),
      ),
    );
  }
}
