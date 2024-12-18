import 'package:flutter/material.dart';

class SelfAwarenessScreen extends StatelessWidget {
  final List<String> selfAwarenessTips = [
    '1. Practice mindfulness: Pay attention to your thoughts, feelings, and sensations without judgment.',
    '2. Keep a journal: Write down your thoughts, feelings, and experiences to better understand yourself.',
    '3. Reflect on your values: Identify what is important to you and align your actions with your values.',
    '4. Set realistic goals: Break down big goals into smaller, achievable steps to track your progress.',
    '5. Seek feedback: Ask trusted friends or family members for honest feedback on your strengths and weaknesses.',
    '6. Learn to say no: Prioritize your time and energy by saying no to commitments that don\'t align with your goals.',
    '7. Practice self-compassion: Treat yourself with kindness and understanding, even when you make mistakes.',
    '8. Explore your interests: Try new things and discover what you enjoy doing.',
    '9. Take time for yourself: Schedule regular time for relaxation and self-care activities.',
    '10. Celebrate your achievements: Acknowledge and reward yourself for your accomplishments.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 63, 17, 177),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 63, 17, 177),
        title: Text(
          "Self-Awareness Tips",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        itemCount: selfAwarenessTips.length,
        itemBuilder: (context, index) {
          return ListTile(
            minLeadingWidth: MediaQuery.of(context).size.width*2,
            title: Text(
              selfAwarenessTips[index],
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            tileColor: Color.fromARGB(255, 43, 11, 115),
          );
        },
      ),
    );
  }
}