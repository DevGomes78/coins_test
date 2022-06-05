import 'package:flutter/material.dart';

import 'coins_list.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criptomoedas'),
        centerTitle: true,
      ),
      body: CoinsList(),
    );
  }
}
