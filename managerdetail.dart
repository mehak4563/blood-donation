import 'package:flutter/material.dart';

import 'addmanager.dart';

class manager_detail extends StatelessWidget {
  // Sample data source for the list
  final List<Map<String, String>> managerList = [
    {"name": "John", "city": "New York", "phone": "123-456-7890"},
    {"name": "Alice", "city": "karachi", "phone": "987-654-3210"},
    {"name": "mehak", "city": "karachi", "phone": "987-654-3210"},
    {"name": "ali", "city": "karachi", "phone": "987-654-3210"},
    {"name": "Amna", "city": "karachi", "phone": "987-654-3210"},
    {"name": "tahir", "city": "karachi", "phone": "987-654-3210"},
    {"name": "alishba", "city": "karachi", "phone": "987-654-3210"},
    {"name": "muneer", "city": "karachi", "phone": "987-654-3210"},

    // Add more data entries as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 34,
              left: 104,
              child: Text(
                'Zindagi',
                style: TextStyle(
                  color: Color(0xffEB3738),
                  fontSize: 24,
                ),
              ),
            ),
            Positioned(
              top: 65,
              left: 603,
              child: Text(
                'Manager',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            Positioned(
              top: 63,
              left: 1187,
              child: Container(
                width: 150,
                height: 59,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color(0xffEB3738),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddManagerScreen()),
    );
                  
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: Text(
                    'Add Manager',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 150, 
              left: 0,
              right: 0,
              bottom: 0,
              child: ListView.builder(
                itemCount: managerList.length,
                itemBuilder: (context, index) {
                  final item = managerList[index];
                  return ListTile(
                    title: Text(item["name"]!),
                    subtitle: Text("${item["city"]} - ${item["phone"]}"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
