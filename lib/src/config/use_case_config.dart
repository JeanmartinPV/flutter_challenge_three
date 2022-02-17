import 'package:flutter_challenge_three/src/data/driver_adapter/gif_api/gif_api.dart';
import 'package:flutter_challenge_three/src/domain/use_cases/get_all_gif_use_case.dart';

class UseCaseConfig {
  UseCaseConfig() {
    _gifApi = GifApi();
    getAllGifUseCase = GetAllGifUseCase(_gifApi);
  }

  late GetAllGifUseCase getAllGifUseCase;
  late GifApi _gifApi;
}
