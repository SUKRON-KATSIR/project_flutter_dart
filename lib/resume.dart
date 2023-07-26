import 'package:edspert_flutter_16/widgets/social_button.dart';
import 'package:edspert_flutter_16/widgets/timeline_content.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Resume',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ava
          Center(
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 82, 81, 81),
                  radius: 90,
                  child: CircleAvatar(
                    radius: 85,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/sukron.png'),
                  ),
                ),
                const Text(
                  'SUKRON KATSIR',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  'Android Developer',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                      url: 'https://id.linkedin.com/in/sukron-katsir-14853b227',
                      icon: FontAwesomeIcons.linkedin,
                      bgColor: Colors.blue.shade900,
                    ),
                    const SizedBox(width: 4),
                    SocialButton(
                      url: 'https://wa.me/6287771162011',
                      icon: FontAwesomeIcons.whatsapp,
                      bgColor: Colors.green.shade500,
                    ),
                    const SizedBox(width: 4),
                    SocialButton(
                      url: 'https://www.instagram.com/sukron_katsir',
                      icon: FontAwesomeIcons.instagram,
                      bgColor: Color.fromARGB(255, 227, 23, 145),
                    ),
                    const SizedBox(width: 4),
                    SocialButton(
                      url: 'https://twitter.com/sukron_katsir',
                      icon: FontAwesomeIcons.twitter,
                      bgColor: Color(0xFF2BABDA),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 5),

          // Edu
          const Center(
            child: Text(
              "Education",
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 18,
              ),
            ),
          ),
          const Divider(color: Colors.indigo),
          const Column(
            children: [
              TimelineContent(
                title: 'UNIVERSITAS MADURA',
                description: 'TEKNIK INFORMATIKA',
                subdescription: '2020 - Present',
                isFirst: true,
                isLast: false,
              ),
              TimelineContent(
                title: 'SMA NEGERI 2 PAMEKASAN',
                description: 'Ilmu Pengetahuan Sosial',
                subdescription: '2014 - 2017',
                isFirst: false,
                isLast: true,
              ),
            ],
          ),

          const SizedBox(height: 5),

          // Edu
          const Center(
            child: Text(
              "Skills",
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 18,
              ),
            ),
          ),
          const Divider(color: Colors.indigo),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                  height: 50,
                  child: TimelineTile(
                    endChild: const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'C++, Php, Python, Dart',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Flask, CodeIgniter 4, Laravel',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    beforeLineStyle:
                        const LineStyle(color: Colors.indigo, thickness: 2),
                    isLast: false,
                    indicatorStyle: const IndicatorStyle(
                      color: Colors.indigo,
                      width: 15,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
