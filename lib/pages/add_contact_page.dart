import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({super.key});

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();

  final phoneController = TextEditingController();

  final emailController = TextEditingController();

  void addContact() async {
    if (_formKey.currentState!.validate()) {
      try {
        await FirebaseFirestore.instance.collection("contact").add({
          "name": nameController.text.trim(),
          "email": emailController.text.trim(),
          "phone": phoneController.text.trim()
        });
        if (mounted) {
          Navigator.pop(context);
        }
      } on FirebaseException {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Adding contact is falied")));
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Please fill all fields")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: nameController,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter a name";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: "Name",
                      // contentPadding: inputp,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: phoneController,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter a phone";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: "Phone",
                      // contentPadding: inputp,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: emailController,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter a email";
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      hintText: "Email",
                      // contentPadding: inputp,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton.icon(
                        onPressed: addContact,
                        icon: const Icon(IconlyBroken.add_user),
                        label: const Text("Save")),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
