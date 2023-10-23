import 'package:flutter/material.dart';

import 'donardetail.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Donors'),
        backgroundColor: Color(0xffEB3738),
      ),
      body: DonorList(),
    );
  }
}

class DonorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(10, (index) {
        return DonorContainer(
            name: 'John Doe',
            city: 'City Name',
            number: '1234567890',
            lastDonateDate: 'Last Donate Date',
            bloodgroup: 'O+');
      }),
    );
  }
}

class DonorContainer extends StatelessWidget {
  final String name;
  final String city;
  final String number;
  final String lastDonateDate;
  final String bloodgroup;

  DonorContainer({
    required this.name,
    required this.city,
    required this.number,
    required this.lastDonateDate,
    required this.bloodgroup
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 20,
            color: Colors.red,
            child: Center(
              child: Text(
                'O+',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListTile(
              title: Text(name),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('City: $city'),
                  Text('Phone Number: $number'),
                  Text('Last Donation: $lastDonateDate'),
                ],
              ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DonorDetailScreen(
                    name: name,
                    city: city,
                    number: number,
                    lastDonateDate: lastDonateDate,
                  ),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
