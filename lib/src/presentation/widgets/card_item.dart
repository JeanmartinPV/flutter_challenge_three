import 'package:flutter/material.dart';
import 'package:flutter_challenge_three/src/domain/models/gif/gif.dart';
import 'package:flutter_challenge_three/src/presentation/common/theme/theme.dart';
import 'package:flutter_challenge_three/src/presentation/utils/constant.dart';
import 'package:flutter_challenge_three/src/presentation/widgets/widgets.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.gif,
  }) : super(key: key);

  final Gif gif;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 30),
      decoration: BoxDecoration(
          color: const Color(0xffFBFBFB),
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              offset: Offset(0, 5),
            )
          ]),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerRight,
            child: Icon(Icons.more_horiz),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: FadeInImage.assetNetwork(
                          placeholder: loading,
                          image: gif.url ?? loading,
                          width: double.infinity,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: -18,
                      child: BaseCard(
                        child: Icon(
                          Icons.favorite,
                          color: AppColors.primaryOrange,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  gif.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  maxLines: 3,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
