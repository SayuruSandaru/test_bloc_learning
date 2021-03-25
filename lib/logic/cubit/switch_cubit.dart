import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:test_bloc_learning/presentation/theme/themeData.dart';

part 'switch_state.dart';

class SwitchCubit extends Cubit<SwitchState> {
  SwitchCubit() : super(SwitchState(isDarkThemeOn: true));

  void toggleSwitch(bool value) => emit(state.copyWith(changeState: value));
}
