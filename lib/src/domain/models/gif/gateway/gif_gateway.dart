import 'package:flutter_challenge_three/src/domain/models/gif/gif.dart';

abstract class GifGateway {
  Future<List<Gif>> getAll();
}
