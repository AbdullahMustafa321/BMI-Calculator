import 'package:bmi_calcc/blocs/bmi_information_cubit.dart';
import 'package:bmi_calcc/screens/weight_page_boy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class MalePage extends StatefulWidget {
  const MalePage({super.key});

  @override
  State<MalePage> createState() => _MalePageState();
}

class _MalePageState extends State<MalePage> {

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
                  padding: EdgeInsets.only(top: 50.w),
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
                          text: 'Hight',
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
                Row(
                  children: [
                    Container(
                      height: 500.h,
                      child: SfSlider.vertical(
                        min: 120,
                        max: 220,
                        value: cubit.height,
                        showTicks: true,
                        showLabels: true,
                        enableTooltip: true,
                        minorTicksPerInterval: 1,
                        interval: 5,
                        activeColor: const Color(0xff90A9FF),
                        onChanged: (dynamic value) {
                          setState(() {
                            cubit.height = value;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: Image.asset('assets/images/boy.png',
                        height: cubit.height * 2 + 100,),
                    )
                  ],
                ),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 120.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  blurRadius: 1,
                                  blurStyle: BlurStyle.outer,
                                  color: Colors.grey
                              )
                            ]
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (
                                context) => const WeightPageBoy()));
                      },
                      child: Container(
                        width: 110.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff90A9FF)
                        ),
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
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
