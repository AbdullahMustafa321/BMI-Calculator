import 'package:bmi_calcc/screens/male_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'female_page.dart';

class BmiCalc extends StatelessWidget {
  const BmiCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 50.w),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Select Your ',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black
                      ),
                    ),
                    TextSpan(
                      text: 'Gender',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40.h,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>const MalePage()));
              },
              child: Container(
                height: 230.h,
                width: 270.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 20.w),
                      child: CircleAvatar(
                        backgroundColor: const Color(0xff90A9FF),
                        radius:80.w,
                        child: Image.asset('assets/images/Avatar1.png'),
                      ),
                    ),
                    SizedBox(height: 20.w,),
                    Text('Male',style:
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.sp
                      ),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>const FemalePage()));
              },
              child: Container(
                height: 230.h,
                width: 270.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5
                      )
                    ]
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: 20.w),
                      child: CircleAvatar(
                        backgroundColor: const Color(0xffFDB5FF),
                        radius:80.w,
                        child: Image.asset('assets/images/Avatar2.png'),
                      ),
                    ),
                    SizedBox(height: 20.w,),
                    Text('Female',style:
                    TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.sp
                    ),)
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
