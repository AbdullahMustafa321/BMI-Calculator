import 'package:bmi_calcc/blocs/bmi_information_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/bmi_calc.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return MultiBlocProvider(providers: [
          
          BlocProvider(create: (context)=>BmiInformationCubit())
        ], child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        ));
      },
      child: const BmiCalc(),
    );
  }
}