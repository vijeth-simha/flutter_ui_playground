import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_playground/pages/add_contact_page.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final contactCollection =
      FirebaseFirestore.instance.collection("contact").snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact"),
      ),
      body: StreamBuilder(
          stream: contactCollection,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const Text("Has Data");
            } else if (snapshot.hasError) {
              return const Text("Has error");
            }
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddContactPage(),
            ),
          );
        },
        label: const Text("Add Contact"),
        icon: const Icon(IconlyBroken.document),
      ),
    );
  }
}
