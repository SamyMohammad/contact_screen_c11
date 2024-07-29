import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final String nameText;
  final String phoneText;
  final bool isVisible;
  const ContactItem({
    super.key,
    this.nameText = '',
    this.phoneText = '',
    this.isVisible=false
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Container(
        margin: const EdgeInsets.only(top: 25),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Name: $nameText  ',
              style: const TextStyle(color: Colors.black, fontSize: 21),
            ),
            Text(
              'Phone: $phoneText',
              style: const TextStyle(color: Colors.black, fontSize: 21),
            ),
          ],
        ),
      ),
    );
  }
}
