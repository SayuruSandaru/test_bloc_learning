import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc_learning/logic/cubit/switch_cubit.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch themes'),
        actions: [
          BlocBuilder<SwitchCubit, SwitchState>(
            builder: (context, state) {
              return Switch(
                value: state.isDarkThemeOn,
                onChanged: (newValue) {
                  context.read<SwitchCubit>().toggleSwitch(newValue);
                },
              );
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Hello world',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        ],
      ),
    );
  }
}
