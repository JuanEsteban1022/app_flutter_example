import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType(),
          SizedBox(height: 20),
          CustomCard(
            nameCard: 'Beatuful Paradise',
            imageUrl:
                'https://cdn.betterwalls.com/pim/pr/WP/50624722/Foto-mural-de-pared-En-el-paraiso_big01.jpg',
          ),
          SizedBox(height: 20),
          CustomCard(
            nameCard: 'Wild Jungle',
            imageUrl:
                'https://cdn0.bioenciclopedia.com/es/posts/5/8/0/selva_85_orig.jpg',
          ),
          SizedBox(height: 20),
          CustomCard(
            // nameCard: 'Ocean Wonders',
            imageUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJAn9wjW4Gkh3mOFusNucyXj0Y3i4juXLybA&usqp=CAU',
          ),
        ],
      ),
    );
  }
}
