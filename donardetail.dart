import 'package:flutter/material.dart';
import 'package:project/editscreen.dart';

class DonorDetailScreen extends StatelessWidget {
  final String name;
  final String city;
  final String number;
  final String lastDonateDate;

  DonorDetailScreen({
    required this.name,
    required this.city,
    required this.number,
    required this.lastDonateDate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donor Details'),
        backgroundColor: Color(0xffEB3738),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text('Name: $name'),
              ),
              ListTile(
                title: Text('City: $city'),
              ),
              ListTile(
                title: Text('Phone Number: $number'),
              ),
              ListTile(
                title: Text('Last Donation: $lastDonateDate'),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 48,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Text(
                          'Call',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to the EditScreen when the "Edit" button is pressed
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => EditUserScreen(
                             
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.red),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'Edit',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

