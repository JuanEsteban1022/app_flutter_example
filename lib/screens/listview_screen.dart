import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  final options = const ['Java', 'Angular', 'PHP', 'Go', 'Flutter'];
  const ListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview'),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_right_outlined),
            onTap: () {
              final lenguajes = options[index];
              print(lenguajes);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
