import 'package:flutter/material.dart';
import 'package:flutter_challenge_three/src/data/constant/constant.dart';
import 'package:flutter_challenge_three/src/presentation/common/theme/app_color.dart';
import 'package:flutter_challenge_three/src/presentation/widgets/widgets.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 16, bottom: 10),
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          listCategory.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 12.0, bottom: 8),
            child: BaseCard(
              color: index == 1 ? AppColors.primaryOrange : Colors.white,
              borderRadius: BorderRadius.circular(16),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  listCategory[index],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: index == 1 ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
