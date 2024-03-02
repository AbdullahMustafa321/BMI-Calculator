import 'package:bmi_calcc/blocs/bmi_information_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  late String height='';
  late String width='';
  late String result='';
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
          height =(cubit.height/100).round().toString();
          width =cubit.weight.round().toString();
          result = (cubit.weight/((cubit.height/100)*(cubit.height/100))).toStringAsFixed(2).toString();
          return Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50.w),
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Your ',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.black
                          ),
                        ),
                        TextSpan(
                          text: 'BMI',
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
                 Text('Hight:${cubit.height.round()}', style:
                const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
                SizedBox(height: 20.h,),
                 Text('Weight:$width', style:
                const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
                SizedBox(height: 20.h,),
                 Text('BMI:$result', style:
                const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
              ],
            ),
          );
        },
      ),
    );
  }
}
