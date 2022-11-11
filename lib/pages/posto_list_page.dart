import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stellantis_app/api/posto_api.dart';
import 'package:stellantis_app/models/Eletroposto.dart';

const chargingIcon = 'assets/images/charging_car.svg';

class PostoListPage extends StatefulWidget {
  const PostoListPage({Key? key}) : super(key: key);

  @override
  State<PostoListPage> createState() => _PostoListPageState();
}

class _PostoListPageState extends State<PostoListPage> {
  final api = EletropostoApi();
  late Future<List<Eletroposto>> _futureEletropostos;

  @override
  void initState() {
    _futureEletropostos = api.getEletropostos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: const Text(
          "Eletropostos",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.red[400],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Selecione um Eletroposto:',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                width: 150,
                child: SvgPicture.asset(
                  chargingIcon,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.grey[100],
              ),
              child: FutureBuilder<List<Eletroposto>>(
                future: _futureEletropostos,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else {
                    var eletropostos = snapshot.data ?? [];
                    return ListView.builder(
                      itemCount: eletropostos.length,
                      itemBuilder: ((context, index) {
                        var eletroposto = eletropostos[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          child: ListTile(
                            leading: Icon(
                              Icons.place,
                              color: Colors.red[400],
                              size: 50,
                            ),
                            onTap: (() => print(eletroposto.name)),
                            title: Text(eletroposto.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500)),
                            subtitle: Text(
                                '${eletroposto.address}\n\n${eletroposto.information}'),
                          ),
                        );
                      }),
                    );
                  }
                },
              ),
            ))
      ]),
    );
  }
}
