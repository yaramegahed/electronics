

import 'package:bloc/bloc.dart';
import 'package:electronics/features/electronics/data/elec_data/elec_data.dart';

import 'electronics_state.dart';

class ElectronicsCubit extends Cubit<ElectronicsState> {
  ElectronicsCubit() : super(ElectronicsInitial());
  final ProductDataTest productDataTest=ProductDataTest();
  getDataCubit()async{
    emit(ElectronicsLoadingState());
    var product=await productDataTest.getDataProductTest();
    emit(ElectronicsSuccessState(product));
  }
}
