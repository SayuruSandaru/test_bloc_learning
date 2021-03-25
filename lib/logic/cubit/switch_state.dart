part of 'switch_cubit.dart';

class SwitchState {
  final bool isDarkThemeOn;
  ThemeData theme;
  SwitchState({@required this.isDarkThemeOn}) {
    if (isDarkThemeOn) {
      theme = appThemeData[AppTheme.DarkAppTheme];
    } else {
      theme = appThemeData[AppTheme.LightAppTheme];
    }
  }

  SwitchState copyWith({bool changeState}) {
    return SwitchState(isDarkThemeOn: changeState ?? this.isDarkThemeOn);
  }
}
