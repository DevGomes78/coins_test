import 'dart:convert';

import 'package:coins_test/models/cripto_models.dart';
import 'package:flutter/services.dart' as dataJson;

class Moedas {
List<Data> lista = [];
  Future<List<Data>?> readJson () async{
    try {
      final String response = await dataJson.rootBundle.loadString(
          'json/criptomoedas.json');
    final result = await json.decode(response);
    result['data'].forEach((item)=> lista.add(Data.fromJson(item)));
    return lista;

    }catch(e){
      print('erro ao acessar as informaçoes $e');
    }
  }
}