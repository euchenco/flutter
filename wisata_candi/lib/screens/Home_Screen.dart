import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wisata_candi/data/wisata_candi.dart';
import 'package:wisata_candi/models/candi.dart';
import 'package:wisata_candi/widgets/item_card.dart';

// Placeholder (halaman sementara). Nanti diganti dengan daftar candi
// dari data/wisata_candi.dart.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //todo 1
      appBar: AppBar(title: Text('Wisata Candi'),),
      //todo 2
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        padding: EdgeInsets.all(8),
        itemCount: candiList.length,
        itemBuilder: (context, index) {
          Candi candi = candiList[index];
          return ItemCard(candi : candi);
        },
       ),
      //todo 3
    );
  }
}
