import 'package:flutter/material.dart';
import 'package:medicalapp/homepage.dart';

class Wellcomepage extends StatelessWidget {
  const Wellcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 120.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 35.0),
                  child: Text('Medical App',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700])),
                ),
                Image.asset(
                  'assets/uss.png',
                  height: 300,
                ),
                const SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.start, // Align items to the start
                      children: [
                        Text(
                          'Book\n A professional docter',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () =>
                      Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return const Homepage();
                    },
                  )),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
