import 'package:flutter/cupertino.dart';
import 'package:artikel_apps/services/artikel_service.dart';
import 'package:artikel_apps/models/detail_artikel_model.dart';
import 'package:artikel_apps/models/artikel_model.dart';

class ArtikelProvider extends ChangeNotifier {
  ArtikelProvider() {
    showListArtikel();
  }

  final ArtikelService _ArtikelService = ArtikelService();
  ArtikelModel artikelModel = ArtikelModel();
  DetailArtikelModel detailArtikelModel = DetailArtikelModel();

  //show list Artikel data
  showListArtikel() async {
    artikelModel = await _ArtikelService.getArtikel();
    notifyListeners();
  }

  //show detail Artikel data
  showDetailArtikel(int? id) async {
    print("id : $id");
    detailArtikelModel = await _ArtikelService.getDetailArtikel(key: id);
    notifyListeners();
  }
}

class ArtikelDetailProvider with ChangeNotifier {
  // String? id;
  // void setId(String? id2){
  //   id = id2;
  //   // print(id2);
  // }

  // String? get _getId {
  //   return id;
  // }
  // ArtikelDetailProvider({this.id});

  final ArtikelService _ArtikelService = ArtikelService();
  DetailArtikelModel detailArtikelModel = DetailArtikelModel();

  showDetailArtikel(String? id) async {
    // detailArtikelModel = await _ArtikelService.getDetailResep(key: id);
    print('id $id');
    notifyListeners();
  }
}
