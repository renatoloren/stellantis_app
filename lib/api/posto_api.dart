import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stellantis_app/models/Eletroposto.dart';

class EletropostoApi {
  Future<List<Eletroposto>> getEletropostos() async {
    const url =
        'https://eletroposto20221027133550.azurewebsites.net/api/eletroposto';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonList = jsonDecode(response.body);
      var eletropostos = jsonList
          .map<Eletroposto>((json) => Eletroposto.fromJson(json))
          .toList();
      return eletropostos ?? [];
    } else {
      return [];
    }
  }
}
