// EditUserScreen.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/manager.dart';

class EditUserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit User'),
        backgroundColor: Color(0xffEB3738),
      ),
      body: EditUserForm(), // Create a form for editing user details
    );
  }
}

class EditUserForm extends StatefulWidget {
  @override
  _EditUserFormState createState() => _EditUserFormState();
}

class _EditUserFormState extends State<EditUserForm> {
  String name = '';
  String area = '';
  String phone = '';
  String lastDonateDate = '';
  List<String> bloodGroups = ['O+', 'A+', 'B+', 'AB+', 'O-', 'A-', 'B-', 'AB-'];
  Map<String, bool> selectedBloodGroups = {};
  Color selectedColor = Colors.red;

  @override
  void initState() {
    super.initState();
    for (var group in bloodGroups) {
      selectedBloodGroups[group] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Name' ),
            onChanged: (value) {
              setState(() {
                name = value;
              });
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Area'),
            onChanged: (value) {
              setState(() {
                area = value;
              });
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Phone Number'),
            onChanged: (value) {
              setState(() {
                phone = value;
              });
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Last Donation Date'),
            onChanged: (value) {
              setState(() {
                lastDonateDate = value;
              });
            },
          ),
          SizedBox(height: 20),
          Text('Blood Groups:', style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 20,
          )),
          Wrap(
            spacing: 10,
            children: bloodGroups.map((group) {
              return FilterChip(
                label: Text(group),
                selected: selectedBloodGroups[group]!,
                onSelected: (selected) {
                  setState(() {
                    selectedBloodGroups[group] = selected;
                    
                  });
                  
                },
              );
            }).toList(),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ManagerProfile()), // Replace ManagerScreen with the actual screen you want to navigate to
          );
        
              
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }
}
