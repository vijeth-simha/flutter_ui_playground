import 'package:flutter/material.dart';

class AddContactPage extends StatelessWidget {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
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
            ],
          ))
        ],
      ),
    );
  }
}
