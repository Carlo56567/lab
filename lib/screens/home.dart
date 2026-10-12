
import 'package:flutter/material.dart';
import '../data/studentData.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UEP Classroom App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: studentData.length,
              itemBuilder: (context, index) {
                return Card(
                  color: studentData[index].grade < 75
                      ? Colors.red
                      : Colors.white,
                  child: ListTile(
                    iconColor: studentData[index].grade < 75
                        ? Colors.white
                        : Colors.black,
                    textColor: studentData[index].grade < 75
                        ? Colors.white
                        : Colors.black,
                    leading: const Icon(Icons.person),
                    title: Text(
                      studentData[index].lastName,
                    ),
                    subtitle: Text(
                      studentData[index].firstName,
                    ),
                    trailing: Text(
                      '${studentData[index].grade}',
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
