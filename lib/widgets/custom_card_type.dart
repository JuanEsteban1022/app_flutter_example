import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardType extends StatelessWidget {
  const CustomCardType({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: const Text('Title: '),
            subtitle: const Text(
                'Tempor officia consectetur amet exercitation exercitation labore ut consequat esse. Commodo commodo officia sint ex consequat culpa sit id exercitation tempor amet.'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
