import 'package:electronics/features/electronics/cubit/electronics_cubit.dart';
import 'package:electronics/features/electronics/cubit/electronics_state.dart';
import 'package:electronics/features/electronics/view/widget/app_bar.dart';
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
        appBar: appBar(title: 'Shop'),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: BlocBuilder<ElectronicsCubit, ElectronicsState>(
            builder: (context, state) {
              if (state is ElectronicsSuccessState) {
                return GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.7,
                  children: List.generate(state.product.length, (index) {
                    return WidgetBody(model: state.product[index]);
                  }),
                );
              } else {
                const CircularProgressIndicator();
              }
              return const Text("error");
            },
          ),
        ),
      ),
    );
  }
}
