class Eletroposto {
  final String name;
  final String information;
  final String address;

  Eletroposto(this.name, this.information, this.address);

  Map<String, dynamic> toJson() =>
      {'nome': name, 'informacoes': information, 'endereco': address};

  Eletroposto.fromJson(Map json)
      : name = json['nome'],
        information = json['informacoes'],
        address = json['endereco'];
}
