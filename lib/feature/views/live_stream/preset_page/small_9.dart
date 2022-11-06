import 'package:flutter/material.dart';
import 'package:flutter_constraintlayout/flutter_constraintlayout.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:srk_monitor/feature/providers/live_stream/live_notifier.dart';

class Small9 extends ConsumerWidget {
  final double x = 0;
  final double y = 0;

  final ConstraintId box0 = ConstraintId('box0');
  final ConstraintId box1 = ConstraintId('box1');
  final ConstraintId box2 = ConstraintId('box2');
  final ConstraintId box3 = ConstraintId('box3');
  final ConstraintId box4 = ConstraintId('box4');
  final ConstraintId box5 = ConstraintId('box5');
  final ConstraintId box6 = ConstraintId('box6');
  final ConstraintId box7 = ConstraintId('box7');
  final ConstraintId box8 = ConstraintId('box8');
  final ConstraintId box9 = ConstraintId('box9');

  Small9({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // only for API Testing, remove when finished
    final liveStreamEntity = ref.watch(liveNotifierProvider);
    // only for API Testing, remove when finished

    return Scaffold(
      backgroundColor: Colors.black,
      body: ConstraintLayout(
        // Constraints can be separated from widgets
        childConstraints: [
          Constraint(
            id: box0,
            size: 200,
            bottomLeftTo: parent,
            zIndex: 20,
          ),
        ],
        children: [
          Container(
            color: Colors.yellow,
            alignment: Alignment.center,
            child: const Text('x'),
          ).applyConstraint(
            id: box1,
            size: matchConstraint,
            widthPercent: 1 / 3,
            heightPercent: 1 / 3,
            horizontalBias: 0,
            verticalBias: 0,
            centerTo: parent,
          ),
          Container(
            alignment: Alignment.center,
            child: const Text('box2'),
          ).apply(
            constraint: Constraint(
              // Constraints set with widgets
              id: box2,
              size: matchConstraint,
              widthPercent: 1 / 3,
              heightPercent: 1 / 3,
              horizontalBias: 1 / 2,
              verticalBias: 0,
              centerTo: parent,
            ),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text('x'),
          ).applyConstraint(
            id: box3,
            size: matchConstraint,
            widthPercent: 1 / 3,
            heightPercent: 1 / 3,
            horizontalBias: 1,
            verticalBias: 0,
            centerTo: parent,
          ),
          Container(
            color: Colors.orange,
            alignment: Alignment.center,
            child: const Text('x'),
          ).applyConstraint(
            id: box4,
            size: matchConstraint,
            widthPercent: 1 / 3,
            heightPercent: 1 / 3,
            horizontalBias: 0,
            verticalBias: 1 / 2,
            centerTo: parent,
          ),
          Container(
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: liveStreamEntity.isEmpty
                      ? const CircularProgressIndicator()
                      : const CircularProgressIndicator()
                  // StreamPlayer(
                  //     isLive: liveStreamEntity[1].isLive,
                  //     liveUrl: liveStreamEntity[1].urls?[0] ?? '',
                  //   ),
                  )
              .applyConstraint(
            id: box5,
            size: matchConstraint,
            widthPercent: 1 / 3,
            heightPercent: 1 / 3,
            horizontalBias: 1 / 2,
            verticalBias: 1 / 2,
            centerTo: parent,
          ),
          Container(
            color: Colors.amber[400],
            alignment: Alignment.center,
            child: const Text('x'),
          ).applyConstraint(
            id: box6,
            size: matchConstraint,
            widthPercent: 1 / 3,
            heightPercent: 1 / 3,
            horizontalBias: 1,
            verticalBias: 1 / 2,
            centerTo: parent,
          ),
          Container(
            color: Colors.green[300],
            alignment: Alignment.center,
            child: const Text('x'),
          ).applyConstraint(
            id: box7,
            size: matchConstraint,
            widthPercent: 1 / 3,
            heightPercent: 1 / 3,
            horizontalBias: 0,
            verticalBias: 1,
            centerTo: parent,
          ),
          Container(
            color: Colors.teal,
            alignment: Alignment.center,
            child: const Text('x'),
          ).applyConstraint(
            id: box8,
            size: matchConstraint,
            widthPercent: 1 / 3,
            heightPercent: 1 / 3,
            horizontalBias: 1 / 2,
            verticalBias: 1,
            centerTo: parent,
          ),
          Container(
            color: Colors.teal[200],
            alignment: Alignment.center,
            child: const Text('x'),
          ).applyConstraint(
            id: box9,
            size: matchConstraint,
            widthPercent: 1 / 3,
            heightPercent: 1 / 3,
            horizontalBias: 1,
            verticalBias: 1,
            centerTo: parent,
          ),
        ],
      ),
    );
  }
}
