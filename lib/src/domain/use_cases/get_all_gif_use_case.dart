import 'package:flutter_challenge_three/src/domain/models/gif/gateway/gif_gateway.dart';
import 'package:flutter_challenge_three/src/domain/models/gif/gif.dart';

class GetAllGifUseCase {
  final GifGateway _gifGateway;

  GetAllGifUseCase(this._gifGateway);
  Future<List<Gif>> getAll() async => _gifGateway.getAll();
}
