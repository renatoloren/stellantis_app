import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const teamIcon = 'assets/images/team.svg';

class TeamPage extends StatelessWidget {
  const TeamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.yellow[700],
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Nosso Time',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 350,
                      width: 400,
                      child: SvgPicture.asset(
                        teamIcon,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.grey[200],
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  child: Column(children: [
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.yellow[700],
                      ),
                      title: const Text('Isabela da Silva'),
                      subtitle: const Text('RM84785'),
                    ),
                    ListTile(
                      trailing: Icon(
                        Icons.person,
                        size: 50,
                        color: Colors.yellow[700],
                      ),
                      title: const Text(
                        'Renato Lourenço',
                        textAlign: TextAlign.end,
                      ),
                      subtitle: const Text(
                        'RM84428',
                        textAlign: TextAlign.end,
                      ),
                    )
                  ]),
                ),
              ),
            ),
          ],
        )));
  }
}
