import 'dart:convert';

import 'package:flutter_challenge_three/src/data/constant/constant.dart';
import 'package:flutter_challenge_three/src/data/helpers/maps/gif/gif_mapper.dart';
import 'package:flutter_challenge_three/src/domain/models/gif/gateway/gif_gateway.dart';
import 'package:flutter_challenge_three/src/domain/models/gif/gif.dart';
import 'package:http/http.dart' as http;

class GifApi extends GifGateway {
  final _gifMapper = GifMapper();
  @override
  Future<List<Gif>> getAll() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      List<Gif> gifs = [];
      String body = utf8.decode(response.bodyBytes);

      final jsonData = jsonDecode(body);

      for (var item in jsonData['data']) {
        gifs.add(_gifMapper.fromMap(item));
      }
      return gifs;
    } else {
      throw Exception('Failed connection');
    }
  }
}
