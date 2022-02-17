import 'package:flutter/material.dart';
import 'package:flutter_challenge_three/src/config/use_case_config.dart';
import 'package:flutter_challenge_three/src/domain/models/gif/gif.dart';
import 'package:flutter_challenge_three/src/presentation/widgets/widgets.dart';

class ListItemBody extends StatelessWidget {
  const ListItemBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UseCaseConfig _gifCongif = UseCaseConfig();
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: RowBody(
                title: Text(
                  'Happy Hours',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                icon: Icon(Icons.delete_outline_rounded),
              ),
            ),
            FutureBuilder<List<Gif>>(
              future: _gifCongif.getAllGifUseCase.getAll(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final listGifs = snapshot.data;
                  return Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      itemCount: listGifs!.length,
                      itemBuilder: (context, index) {
                        final gif = listGifs[index];
                        return CardItem(gif: gif);
                      },
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('${snapshot.error}'),
                      ),
                    ),
                  );
                } else {
                  return const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Color(0xff202020),
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
