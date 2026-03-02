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
    print(  'Dice number');
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
          
          children: [
            Image.asset('assets/images/dice-2.png', width: 200, height: 200),
            TextButton(onPressed: rollDice, child: const Text('Click Me')),
          ],
        ),
        // StyledText('Styled Text'),
      ),
    );
  }
}
