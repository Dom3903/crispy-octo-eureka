import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit 4 Assignment',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('THEODORE DOMINIC EBOJO'), // Replace with your name
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(255, 255, 195, 0), const Color.fromARGB(255, 100, 180, 255)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 219, 17, 155),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.only(bottom: 16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            'assets/gwapo.jpg'), 
                      ),
                      SizedBox(width: 16),
                      Text(
                        'THEODORE DOMINIC EBOJO', 
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

               
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 219, 17, 155),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.only(bottom: 16),
                  child: Column(
                    children: [
                      InfoRow(icon: Icons.email, title: 'Email', data: 'dominicebojo69@gmail.com'),
                      InfoRow(icon: Icons.phone, title: 'Phone', data: '09694206990'),
                      InfoRow(icon: Icons.school, title: 'Education', data: 'Bachelor in Information Technology'),
                      InfoRow(icon: Icons.location_city, title: 'Location', data: 'Guimbal,Iloilo'),
                      InfoRow(icon: Icons.gamepad, title: 'Hobbies', data: 'Sleep Walking,Overthinking,Gaming,'),
                    ],
                  ),
                ),

                // Biography Section in a different colored container
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 219, 17, 155),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Biography',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'I am a dedicated student with a passion for coding and technology. I enjoy learning new '
                        'things and always strive to improve my skills. My hobbies include sleeping, gambling, and walking '
                        'with my pet dog.',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class InfoRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String data;

  InfoRow({required this.icon, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 30, color: Colors.white),
          SizedBox(width: 16),
          Text(
            '$title: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: const Color.fromARGB(255, 30, 34, 79),
            ),
          ),
          Expanded(
            child: Text(
              data,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
