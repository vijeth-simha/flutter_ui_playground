import 'package:flutter/material.dart';

class AddContactPage extends StatelessWidget {
  final nameController = TextEditingController();
  AddContactPage({super.key});

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
              child: Column(
            children: [
              TextFormField(
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
            ],
          ))
        ],
      ),
    );
  }
}
