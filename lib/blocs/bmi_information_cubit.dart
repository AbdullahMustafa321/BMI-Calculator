import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'bmi_information_state.dart';

class BmiInformationCubit extends Cubit<BmiInformationState> {
  BmiInformationCubit() : super(BmiInformationInitial());
  static BmiInformationCubit get(context)=>BlocProvider.of(context);
  late double height=120;
  late double weight=40;
  late double result =weight/(height*height);


}
