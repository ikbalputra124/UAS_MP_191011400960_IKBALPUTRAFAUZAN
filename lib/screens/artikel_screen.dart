import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:artikel_apps/providers/artikel_provider.dart';
import 'package:artikel_apps/screens/detail_artikel_screen.dart';

class ArtikelScreen extends StatefulWidget {
  const ArtikelScreen({Key? key}) : super(key: key);

  @override
  State<ArtikelScreen> createState() => _ArtikelScreenState();
}

class _ArtikelScreenState extends State<ArtikelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Artikel'),
      ),
      body: Consumer<ArtikelProvider>(
        builder: (context, ArtikelProvider, child) {
          return ListView.builder(
            itemCount: ArtikelProvider.artikelModel.data?.length ?? 0,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailArtikelScreen(
                        title: ArtikelProvider.artikelModel.data![index].title,
                      ),
                    ),
                  );
                  ArtikelProvider.showDetailArtikel(
                      ArtikelProvider.artikelModel.data![index].id);
                },
                child: Card(
                  elevation: 20,
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${ArtikelProvider.artikelModel.data![index].title}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            padding: const EdgeInsets.all(18),
          );
        },
      ),
    );
  }
}
