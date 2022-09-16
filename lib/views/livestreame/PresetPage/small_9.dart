import 'package:flutter/material.dart';
import 'package:flutter_constraintlayout/flutter_constraintlayout.dart';

class small_9 extends StatelessWidget {
  double x = 0;
  double y = 0;

  ConstraintId box0 = ConstraintId('box0');
  ConstraintId box1 = ConstraintId('box1');
  ConstraintId box2 = ConstraintId('box2');
  ConstraintId box3 = ConstraintId('box3');
  ConstraintId box4 = ConstraintId('box4');
  ConstraintId box5 = ConstraintId('box5');
  ConstraintId box6 = ConstraintId('box6');
  ConstraintId box7 = ConstraintId('box7');
  ConstraintId box8 = ConstraintId('box8');
  ConstraintId box9 = ConstraintId('box9');

  @override
  Widget build(BuildContext context) {
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
            color: Colors.redAccent,
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
            child: const Text('x'),
          ).applyConstraint(
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
