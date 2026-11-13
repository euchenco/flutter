import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';

class ItemCard extends StatelessWidget {
  //todo 1
  final Candi candi;
  const ItemCard({
    super.key,
    required this.candi});

    @override
  Widget build(BuildContext context) {
    return Card(
      //todo 2
      shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
      margin: EdgeInsets.all(4),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        //todo 3
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(15),
          child: Image.asset(
            candi.imageAsset,
            width: double.infinity,
            fit: BoxFit.cover,
            ),
          ),
        ),
        //todo 4
        Text(
          candi.name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        //todo 5
        Text(
          candi.location,
          style: const TextStyle(
            fontSize: 12,
            color : Colors.grey,
          ),
        ),
        ],
      ),
    );
  }
}