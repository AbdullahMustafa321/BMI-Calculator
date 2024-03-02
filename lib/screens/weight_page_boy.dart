import 'package:bmi_calcc/blocs/bmi_information_cubit.dart';
import 'package:bmi_calcc/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class WeightPageBoy extends StatefulWidget {
  const WeightPageBoy({super.key});

  @override
  State<WeightPageBoy> createState() => _WeightPageBoyState();
}

class _WeightPageBoyState extends State<WeightPageBoy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      body: BlocConsumer<BmiInformationCubit, BmiInformationState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    var cubit=BmiInformationCubit.get(context);
    return Center(
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
                      text: 'Weight',
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
            Container(
              height: 300.h,
              width: 300.w,
              child: SleekCircularSlider(
                  min: 40,
                  max: 200,
                  appearance: CircularSliderAppearance(
                    customColors: CustomSliderColors(
                        progressBarColor: const Color(0xff90A9FF),
                        trackColor: Colors.grey.withOpacity(0.2),
                        shadowColor: Colors.blue,
                        shadowMaxOpacity: 0.2
                    ),
                    customWidths: CustomSliderWidths(
                      progressBarWidth: 12,
                      trackWidth: 12,
                      shadowWidth: 15,
                    ),
                    infoProperties: InfoProperties(
                      mainLabelStyle: const TextStyle(fontSize: 70, color: Color(0xff90A9FF)),
                      modifier: (double value) {
                        return '${value.toStringAsFixed(0)}Kg';
                      },
                    ),
                    spinnerMode: false, // Disable spinner mode
                    animationEnabled: true,
                  ),

                  onChange: (dynamic value) {
                    setState(() {
                      cubit.weight=value;
                    });
                  }),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                width: 250.w,
                height: 50.h,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius:1,
                          blurStyle: BlurStyle.outer,
                          color: Colors.grey
                      )
                    ]
                ) ,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back,
                      color: Colors.grey,),
                    Text('Back',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h,),
            GestureDetector(
              onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context)=>const ResultPage()));
              },
              child: Container(
                width: 250.w,
                height: 50.h,
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff90A9FF)
                ) ,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text('Next',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                ),
              ),
            )
          ],
        ),
      );
  },
),
    );
  }
}
