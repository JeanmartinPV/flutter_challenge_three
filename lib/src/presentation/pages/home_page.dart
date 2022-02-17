import 'package:flutter/material.dart';
import 'package:flutter_challenge_three/src/presentation/view/view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            HeaderBody(),
            ListCategory(),
            ListItemBody(),
          ],
        ),
        bottomNavigationBar: const CustomBottomBar(),
      ),
    );
  }
}
