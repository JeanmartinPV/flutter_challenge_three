import 'package:flutter/material.dart';
import 'package:flutter_challenge_three/src/presentation/widgets/widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/nasa.png',
          height: 100,
          width: 100,
        ),
        Row(
          children: const [
            BaseCard(child: Icon(Icons.notifications_none_rounded)),
            SizedBox(width: 4),
            BaseCard(child: Icon(Icons.settings_outlined)),
          ],
        )
      ],
    );
  }
}
