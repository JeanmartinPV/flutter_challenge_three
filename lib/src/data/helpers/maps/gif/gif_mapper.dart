import 'package:flutter_challenge_three/src/data/helpers/maps/common/base_mapper.dart';
import 'package:flutter_challenge_three/src/domain/models/gif/gif.dart';

class GifMapper implements BaseMapper<Gif> {
  @override
  fromMap(Map<String, dynamic> json) => Gif(
        name: json['title'],
        url: json["images"]["downsized"]["url"],
      );
}
