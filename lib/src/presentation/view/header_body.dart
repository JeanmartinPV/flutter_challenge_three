import 'package:flutter/material.dart';
import 'package:flutter_challenge_three/src/presentation/view/view.dart';
import 'package:flutter_challenge_three/src/presentation/widgets/widgets.dart';

class HeaderBody extends StatelessWidget {
  const HeaderBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: const [
              CustomAppBar(),
              SizedBox(height: 8),
              RowBody(
                title: Text('Favorites'),
                icon: Icon(Icons.add),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ],
    );
  }
}
