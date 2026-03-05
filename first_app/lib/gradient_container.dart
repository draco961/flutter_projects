import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
final endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors})
    : color1 = Colors.black,
      color2 = Colors.purple;

  const GradientContainer.purple({super.key})
    : color1 = Colors.purple,
      color2 = Colors.deepPurple,
      colors = const [Colors.purple, Colors.deepPurple];

  final List<Color> colors;
  final Color color1;
  final Color color2;

  void rollDice() {
    //print('Dice number: $diceNumber');
    print('Dice number');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-2.png', width: 200, height: 200),
            //const SizedBox(height: 50),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text(
                'Click Me',
                style: TextStyle(backgroundColor: Colors.black),
              ),
            ),
          ],
        ),
        // StyledText('Styled Text'),
      ),
    );
  }
}
