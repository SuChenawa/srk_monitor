import 'package:flutter/material.dart';

class small_9 extends StatelessWidget {
  const small_9({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      child: Row(
        children: [
          SizedBox.expand(
            child: FractionallySizedBox(
              widthFactor: 0.5,
              heightFactor: 0.5,
              alignment: FractionalOffset.center,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 4,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
