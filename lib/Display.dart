import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String dateOfBirth;
  final String gender;
  final bool isDay;
  final bool isNight;

  DisplayPage({
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.gender,
    required this.isDay,
    required this.isNight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Display Page"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("First Name : $firstName", style: TextStyle(fontSize: 18)),
            Text("Last Name : $lastName", style: TextStyle(fontSize: 18)),
            Text("Date of Birth : $dateOfBirth", style: TextStyle(fontSize: 18)),
            Text("Gender : $gender", style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text(
              "Day : ${isDay ? 'yes' : 'no'}",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Night : ${isNight ? 'yes' : 'no'}",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
