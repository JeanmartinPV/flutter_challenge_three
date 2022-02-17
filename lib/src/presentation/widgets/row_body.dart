import 'package:flutter/material.dart';
import 'package:flutter_challenge_three/src/presentation/common/theme/theme.dart';
import 'package:flutter_challenge_three/src/presentation/widgets/widgets.dart';

class RowBody extends StatelessWidget {
  const RowBody({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DefaultTextStyle(
          style: styleTextHeader,
          child: title,
        ),
        BaseCard(child: icon)
      ],
    );
  }
}
