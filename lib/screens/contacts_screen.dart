import 'package:flutter/material.dart';
import 'package:flutter_assignment_3_c11/widgets/contact_item.dart';
import 'package:flutter_assignment_3_c11/widgets/default_button.dart';

import '../widgets/default_text_field.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});
  static const String routeName = '/';

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  ContactItem contactItem1 = const ContactItem();
  ContactItem contactItem2 = const ContactItem();
  ContactItem contactItem3 = const ContactItem();

  int numberOfVisibleItems = 0;
  @override
  Widget build(BuildContext context) {
// DefaultTextField textField =DefaultTextField();
// textField =DefaultTextField()

    return Scaffold(
      backgroundColor: Colors.grey,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'Contacts Screen',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            DefaultTextField(
              hintText: 'Enter Your Name Here',
              suffixIcon: Icons.edit,
              controller: nameController,
            ),
            DefaultTextField(
              hintText: 'Enter Your Phone Here',
              suffixIcon: Icons.phone,
              controller: phoneController,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: DefaultButton(
                  color: Colors.blue,
                  label: 'Add',
                  onPressed: addItem,
                )),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                    child: DefaultButton(
                  color: Colors.red,
                  label: 'Delete',
                  onPressed: deleteItem,
                )),
              ],
            ),
            contactItem1,
            contactItem2,
            contactItem3
          ],
        ),
      ),
    );
  }

  addItem() {
    if (numberOfVisibleItems == 0) {
      contactItem1 = ContactItem(
        isVisible: true,
        nameText: nameController.text,
        phoneText: phoneController.text,
      );
    } else if (numberOfVisibleItems == 1) {
      contactItem2 = ContactItem(
        isVisible: true,
        nameText: nameController.text,
        phoneText: phoneController.text,
      );
    } else if (numberOfVisibleItems == 2) {
      contactItem3 = ContactItem(
        isVisible: true,
        nameText: nameController.text,
        phoneText: phoneController.text,
      );
    } else {
      return;
    }
    numberOfVisibleItems++;
    setState(() {});
  }

  deleteItem() {
    if (numberOfVisibleItems == 3) {
      contactItem3 = const ContactItem(
        isVisible: false,
      );
    } else if (numberOfVisibleItems == 2) {
      contactItem2 = const ContactItem(
        isVisible: false,
      );
    } else if (numberOfVisibleItems == 1) {
      contactItem1 = const ContactItem(
        isVisible: false,
      );
    } else {
      return;
    }
    numberOfVisibleItems--;
    setState(() {});
  }
}
