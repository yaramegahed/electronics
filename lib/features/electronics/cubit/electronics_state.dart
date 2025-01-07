
import 'package:electronics/features/electronics/data/elec_data/elec_data.dart';
import 'package:electronics/features/electronics/data/model/elec_model.dart';

abstract class ElectronicsState {}

class ElectronicsInitial extends ElectronicsState {}
class ElectronicsSuccessState extends ElectronicsState {
  List<ProductTestModel>product;

  ElectronicsSuccessState(this.product);
}
class ElectronicsLoadingState extends ElectronicsState {}
class ElectronicsFailureState extends ElectronicsState {}
