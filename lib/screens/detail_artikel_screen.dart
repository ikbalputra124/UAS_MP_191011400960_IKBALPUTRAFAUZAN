import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:artikel_apps/providers/artikel_provider.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailArtikelScreen extends StatefulWidget {
  final String? title;
  final String? id;
  const DetailArtikelScreen({this.title, this.id, Key? key}) : super(key: key);

  @override
  State<DetailArtikelScreen> createState() => _DetailArtikelScreenState();
}

class _DetailArtikelScreenState extends State<DetailArtikelScreen> {
//  final ArtikelDetailProvider _detailprovider = ArtikelDetailProvider();
  @override
  void initState() {
    // _detailprovider.setId(widget.id);
    // _provider.id = widget.id;
    // print(_provider.id);
    // _provider.ShowDetailArtikel(widget.id);
    // print(widget.id);
    // Provider.of<ArtikelDetailProvider>(context,listen: false).showDetailArtikel();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // _provider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //  final res = Provider.of<ArtikelDetailProvider>(context,listen: false).showDetailArtikel(widget.id);
    //  print(res);

    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.title}"),
      ),
      body: Consumer<ArtikelProvider>(
        builder: (context, artikelProvider, child) {
          return SingleChildScrollView(
            child: Card(
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                        "${artikelProvider.detailArtikelModel.data![0].image}"),
                    Text(
                      "${artikelProvider.detailArtikelModel.data![0].title}",
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Porsi : ${artikelProvider.detailArtikelModel.data![0].createdAt}",
                      // style: GoogleFonts.montserrat(
                      // textStyle: TextStyle(
                      // fontSize: 20,
                    ),
                    // ),
                    // ),
                    SizedBox(height: 10.0),
                    Text(
                        "${artikelProvider.detailArtikelModel.data![0].description}"),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
