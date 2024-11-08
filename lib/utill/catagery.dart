import 'package:flutter/material.dart';

class Catagery extends StatelessWidget {
  final IconImagePath;
  final String catageryNmae;

  const Catagery(
      {super.key, required this.IconImagePath, required this.catageryNmae});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.deepPurple[100]),
        child: Row(
          children: [
            Image.asset(
              IconImagePath,
              height: 40,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(catageryNmae),
          ],
        ),
      ),
    );
  }
}
