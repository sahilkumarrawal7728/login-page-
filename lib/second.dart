import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Display.dart';

class FormPage extends StatefulWidget {
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController fname = TextEditingController();
  final TextEditingController lname = TextEditingController();

  final TextEditingController dob = TextEditingController();

  //radio button
  String gender = "male";

  //checkbox
  bool day = true;

  bool night = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Page"),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextField(
              controller: fname,
              decoration: InputDecoration(labelText: "Enter First Name :")),
          TextField(
              controller: lname,
              decoration: InputDecoration(labelText: "Enter Last Name :")),
          Radio(
              value: "male",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              }),
          Text("Male"),
          Radio(
              value: "female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              }),
          Text("Female"),
          Radio(
              value: "others",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              }),
          Text("Others"),
          Checkbox(value: day, onChanged: (value) {
            setState(() {
              day = value!;
            });
          }), Text("Day"),
          Checkbox(value: night, onChanged: (value) {
            setState(() {
              night = value!;
            });
          }), Text("Night"),
          TextField(
            controller: dob,
            decoration: InputDecoration(
                labelText: "Enter Date of Birth"
            ), onTap: () async {
            DateTime? db = await showDatePicker(context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2001),
                lastDate: DateTime(2050));
            if(db !=null){
              String fd = db.toString().substring(0,10);
              setState(() {
                dob.text = fd;
              });
            }
          },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DisplayPage(
                      firstName: fname.text,
                      lastName: lname.text,
                      dateOfBirth: dob.text,
                      gender: gender,
                      isDay: day,
                      isNight: night,
                    ),
                  ),
                );
              },
              child: Text("Submit"),
            ),
          ),
        ],
      ),
    );
  }
}
