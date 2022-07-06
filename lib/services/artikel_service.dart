import 'package:dio/dio.dart';
import 'package:artikel_apps/models/detail_artikel_model.dart';
import 'package:artikel_apps/models/artikel_model.dart';

class ArtikelService {
  //get list Artikel

  Future<ArtikelModel> getArtikel() async {
    var response = await Dio().get('https://api.indosiana.com/api/articles');
    return ArtikelModel.fromJson(response.data);
  }

  //get detail Artikel
  Future<DetailArtikelModel> getDetailArtikel({int? key}) async {
    var response = await Dio()
        .get('https://api.indosiana.com/api/articles/id_artikel/$key');
    print(key);
    print("response : $response");

    return DetailArtikelModel.fromJson(response.data);
  }
}
