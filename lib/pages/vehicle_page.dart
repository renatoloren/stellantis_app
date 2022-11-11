import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stellantis_app/components/VehicleDetail.dart';

const acessoriesIcon = 'assets/images/acessories_car.svg';

class VehiclePage extends StatelessWidget {
  const VehiclePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text(""),
          backgroundColor: Colors.red[400],
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Sobre o seu Veículo',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 200,
                      width: 300,
                      child: SvgPicture.asset(
                        acessoriesIcon,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.red[100],
                ),
                width: width,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(children: [
                        const VehicleDetail(label: 'Marca', text: 'Tesla'),
                        const VehicleDetail(label: 'Placa', text: 'DRG3307'),
                        Row(
                          children: const [
                            VehicleDetail(label: 'Modelo', text: 'Model 3'),
                            SizedBox(width: 50),
                            VehicleDetail(label: 'Ano', text: '2021'),
                          ],
                        ),
                        Row(
                          children: const [
                            VehicleDetail(label: 'Estado', text: 'SP'),
                            SizedBox(width: 50),
                            VehicleDetail(label: 'Cidade', text: 'São Paulo'),
                          ],
                        ),
                        const VehicleDetail(
                            label: 'Bateria',
                            icon: Icon(Icons.battery_full_sharp),
                            text: '100%')
                      ])),
                ),
              ),
            ),
          ],
        )));
  }
}
