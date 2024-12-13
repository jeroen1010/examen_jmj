import 'package:examen_jmj/widgets/custom_card_tipo_2.dart';
import 'package:flutter/material.dart';

class PistasScreen extends StatelessWidget {
   
  const PistasScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pistas'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo2(imageUrl: 'https://wallpapercat.com/w/full/a/2/9/76539-2560x1442-desktop-hd-anuel-aa-background-image.jpg',nombre: 'Reservar',),
          SizedBox(height: 10),
        ],
      )
    );
  }
}