import 'package:coins_test/controlers/cripto_controlers.dart';
import 'package:coins_test/models/cripto_models.dart';
import 'package:flutter/material.dart';

import 'details_page.dart';

class CoinsList extends StatefulWidget {
  const CoinsList({Key? key}) : super(key: key);

  @override
  _CoinsListState createState() => _CoinsListState();
}

class _CoinsListState extends State<CoinsList> {
  List<Data> lista = [];

  @override
  void initState() {
    super.initState();
    Moedas().readJson().then((map) {
      setState(() {
        lista = map!;
        print(lista.length);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: lista.length,
            itemBuilder: (context, index) {
              return buildCard(context, index);
            }),
      ),
    );
  }

  Card buildCard(BuildContext context, int index) {
    return Card(
              elevation: 5,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> DetailsPage(data: lista[index])));
                },
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(lista[index].imageUrl.toString()),
                  ),
                  title: Text(lista[index].currencyName.toString()),
                  subtitle: Text(lista[index].symbol.toString()),
                ),
              ),
            );
  }
}
