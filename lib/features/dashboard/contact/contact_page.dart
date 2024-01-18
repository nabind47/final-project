import 'package:flutter/material.dart';

class Contact {
  final String name;
  final String number;
  final IconData icon;

  Contact({
    required this.name,
    required this.number,
    required this.icon,
  });
}

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  // Dummy data for each category
  final List<List<Contact>> dummyData = [
    [
      Contact(name: "Mom", number: "123-456-7890", icon: Icons.person),
      Contact(name: "Dad", number: "987-654-3210", icon: Icons.person),
      Contact(name: "Sibling", number: "555-555-5555", icon: Icons.person),
    ],
    [
      Contact(name: "Friend 1", number: "111-222-3333", icon: Icons.person),
      Contact(name: "Friend 2", number: "444-555-6666", icon: Icons.person),
      Contact(name: "Friend 3", number: "777-888-9999", icon: Icons.person),
    ],
    [
      Contact(name: "Hospital", number: "911", icon: Icons.local_hospital),
      Contact(name: "Police", number: "112", icon: Icons.local_police),
      Contact(
          name: "Fire Department",
          number: "119",
          icon: Icons.local_fire_department),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: "Family"),
              Tab(text: "Friends"),
              Tab(text: "Emergency"),
            ],
          ),
        ),
        body: TabBarView(
          children: List.generate(
            dummyData.length,
            (index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children: [
                    for (Contact contact in dummyData[index])
                      ListTile(
                        leading: Icon(contact.icon),
                        title: Text(contact.name),
                        subtitle: Text(contact.number),
                        // Add any other ListTile properties or onTap handlers here
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
