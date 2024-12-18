import 'package:flutter/material.dart';

class LawsPage extends StatelessWidget {
  final List<String> laws = [
    '1. The Protection of Women from Domestic Violence Act, 2005: This law provides protection to women from domestic violence, including physical, emotional, and sexual abuse.',
    '2. The Sexual Harassment of Women at Workplace (Prevention, Prohibition and Redressal) Act, 2013: This law prohibits sexual harassment in the workplace and establishes a mechanism for complaints and redressal.',
    '3. The Criminal Law (Amendment) Act, 2013: This act amended the Indian Penal Code to provide stricter punishments for sexual offenses, including rape and sexual assault.',
    '4. The Immoral Traffic (Prevention) Act, 1956: This law prohibits the trafficking of women and girls for prostitution.',
    '5. The Dowry Prohibition Act, 1961: This law prohibits the giving or taking of dowry.',
    '6. The Indian Penal Code, 1860: This code contains provisions for various offenses, including those against women, such as rape, assault, and harassment.',
    '7. The Indian Evidence Act, 1872: This act governs the admissibility of evidence in court proceedings, including cases involving women.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 63, 17, 177),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 63, 17, 177),
        title: Text(
          "Specific Women's Safety Laws",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: laws.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              laws[index],
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            tileColor: Color.fromARGB(255, 43, 11, 115),
          );
        },
      ),
    );
  }
}