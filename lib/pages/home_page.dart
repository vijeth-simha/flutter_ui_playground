import 'package:flutter/material.dart';
import 'package:flutter_ui_playground/pages/add_contact_page.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddContactPage(),
            ),
          );
        },
        label: const Text("Add Contact"),
        icon: const Icon(IconlyBroken.document),
      ),
    );
  }
}
