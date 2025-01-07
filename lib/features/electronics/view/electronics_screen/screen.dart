import 'package:electronics/features/electronics/cubit/electronics_cubit.dart';
import 'package:electronics/features/electronics/cubit/electronics_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widget/widget_body.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ElectronicsCubit()..getDataCubit(),
      child: Scaffold(
        appBar: AppBar(title: Text("data"),centerTitle: true,),
        body: BlocBuilder<ElectronicsCubit, ElectronicsState>(
          builder: (context, state) {
            if(state is ElectronicsSuccessState){
            return ListView.builder(itemCount: state.product.length,
              itemBuilder: (context, index) {
              return WidgetBody(model: state.product[index],);

            },);
          }else {
              CircularProgressIndicator();
            }
            return Text("data");},
        ),
      ),
    );
  }
}
