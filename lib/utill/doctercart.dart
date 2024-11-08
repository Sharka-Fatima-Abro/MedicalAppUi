import 'package:flutter/material.dart';

class Doctercart extends StatelessWidget {
  final String docterImagePath;
  final String rating;
  final String docterName;
  final String docterProfession;

  const Doctercart({
    super.key,
    required this.docterImagePath,
    required this.docterName,
    required this.docterProfession,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 20.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Column(
          children: [
            // Doctor image
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                docterImagePath,
                height: 100,
                width: 100,
                fit: BoxFit.cover, // Ensure the image is not stretched
                errorBuilder: (BuildContext context, Object error,
                    StackTrace? stackTrace) {
                  return const Icon(Icons.error,
                      color: Colors.red); // Error handling for image loading
                },
              ),
            ),
            const SizedBox(height: 10), // Add some space between image and text

            // Rating Row
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center the content horizontally
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  rating,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 10), // Add space after rating

            // Doctor's name
            Text(
              docterName,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            // Doctor's profession with years of experience
            Text(
              '$docterProfession - 7 years of experience',
              style: TextStyle(color: Colors.grey[700], fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
