import 'package:coins_test/models/cripto_models.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  Data data;

  DetailsPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Container(
            height: 200,
            width: double.infinity,
            child: CircleAvatar(
              backgroundImage: NetworkImage(data.imageUrl.toString()),
            ),
          ),
          SizedBox(height: 20),
          Text(
            data.currencyName.toString(),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}
