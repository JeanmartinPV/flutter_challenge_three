import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.home_filled,
            color: Color(0xffA1A1A1),
            size: 30,
          ),
          const Icon(
            Icons.calendar_today_outlined,
            color: Color(0xffA1A1A1),
            size: 30,
          ),
          const Icon(
            Icons.search,
            color: Color(0xffA1A1A1),
            size: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(
                Icons.favorite_border,
                color: Color(0xff202020),
                size: 30,
              ),
              SizedBox(width: 4),
              Text(
                'Favorites',
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
