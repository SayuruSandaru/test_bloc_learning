import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc_learning/logic/cubit/switch_cubit.dart';
import 'package:test_bloc_learning/presentation/screen/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SwitchCubit>(
      create: (context) => SwitchCubit(),
      child: BlocBuilder<SwitchCubit, SwitchState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: state.theme,
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}
