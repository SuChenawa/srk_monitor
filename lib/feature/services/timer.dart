import 'dart:async';

typedef TimerFunction = void Function();

class GlobalTimer {
  static GlobalTimer? _instance;
  factory GlobalTimer() => _instance ?? GlobalTimer._();
  GlobalTimer._();

  Timer? _timerPerMin;
  final List<TimerFunction> _timerFunctionList1min = [];

  void addFunctionToTimerPerMin(TimerFunction process) {
    _timerFunctionList1min.add(process);
    _timerPerMin ??= Timer.periodic(
      const Duration(minutes: 1),
      (timer) {
        for (var fun in _timerFunctionList1min) {
          fun();
        }
      },
    );
  }
}
