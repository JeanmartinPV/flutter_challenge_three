import 'package:flutter/material.dart';

class BaseCard extends StatelessWidget {
  const BaseCard({
    required this.child,
    Key? key,
    this.borderRadius,
    this.color,
  }) : super(key: key);

  final Widget child;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: color ?? Colors.white,
        shape: borderRadius == null ? BoxShape.circle : BoxShape.rectangle,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 5),
          )
        ],
      ),
      child: child,
    );
  }
}
