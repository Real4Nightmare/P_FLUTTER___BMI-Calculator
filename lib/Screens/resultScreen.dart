import 'package:flutter/material.dart';
import '../Constants/Constants.dart';

class resultScreen extends StatelessWidget {
  const resultScreen({
    required this.BMIResult,
    required this.resultText,
    required this.InterPretation,

    Key? key,}) :super(key: key);
  final String BMIResult;
  final String resultText;
  final String InterPretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0.0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.notifications_none_outlined, color: kTextColor),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Text(
              "Result",
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.bold, color: kItemColor),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kCardColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText, style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: kResultColor),
                    ),
                    Text(
                      BMIResult,
                      style: const TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: kItemColor),
                    ),
                    Text(
                      InterPretation,
                      style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: kTextColor),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: kGreenColor,
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    "Recaculate BMI",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: kItemColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
