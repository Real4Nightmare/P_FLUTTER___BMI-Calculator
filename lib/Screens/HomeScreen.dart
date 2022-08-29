import 'package:flutter/material.dart';
import '../Screens/resultScreen.dart';
import '../Constants/Constants.dart';
import '../Widgets/CalculatorBMI.dart';

enum Gender { male, female }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Gender? gender;
  int weight = 72;
  int height = 172;
  int age = 32;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: kTextColor),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.notifications_none_outlined, color: kTextColor),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          children: [
            const Text(
              "BMI Calculator",
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.bold, color: kItemColor),
            ),
            const SizedBox(height: 30),
            const Text(
              'Gender',
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: kTextColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          gender = Gender.male;
                        });
                      },
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: kCardColor,
                            borderRadius: BorderRadius.circular(10),
                            border: gender == Gender.male
                                ? Border.all(
                              width: 2,
                              color: kGreenColor,
                            )
                                : null),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Icon(
                                Icons.check_circle,
                                color: gender == Gender.male
                                    ? kGreenColor
                                    : kTextColor,
                              ),
                            ),
                            Column(
                              children: const [
                                Icon(
                                  Icons.male,
                                  color: kItemColor,
                                  size: 100,
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: kItemColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),//male
                  const SizedBox(width: 15),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          gender = Gender.female;
                        });
                      },
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: kCardColor,
                            borderRadius: BorderRadius.circular(10),
                            border: gender == Gender.female
                                ? Border.all(
                              width: 2,
                              color: kGreenColor,
                            )
                                : null),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              top: 10,
                              right: 10,
                              child: Icon(
                                Icons.check_circle,
                                color: gender == Gender.female
                                    ? kGreenColor
                                    : kTextColor,
                              ),
                            ),
                            Column(
                              children: const [
                                Icon(
                                  Icons.female,
                                  color: kItemColor,
                                  size: 100,
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: kItemColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),//female
                ],
              ),
            ),
            const SizedBox(width: 15),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child:Row(children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Weight",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: kTextColor,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: kItemColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: const Icon(Icons.remove_circle),
                            ),
                            Text(
                              weight.toString(),
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: const Icon(Icons.add_circle),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Height",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: kTextColor,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: kItemColor,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  height--;
                                });
                              },
                              icon: const Icon(Icons.remove_circle),
                            ),
                            Text(
                              height.toString(),
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  height++;
                                });
                              },
                              icon: const Icon(Icons.add_circle),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],),),
            const Text(
              "Age",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: kTextColor,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: kItemColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        age--;
                      });
                    },
                    icon: const Icon(Icons.remove_circle),
                  ),
                  Text(
                    age.toString(),
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        age++;
                      });
                    },
                    icon: const Icon(Icons.add_circle),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                CalculatorBMI calculator =
                CalculatorBMI(height: height, weight: weight);
                if (gender !=null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => resultScreen(
                        BMIResult: calculator.CalculateBMI(),
                        InterPretation: calculator.getResult(),
                        resultText: calculator.getInterPretation(),
                      ),
                    ),
                  );
                } else {
                  ("choose gender");
                }
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: kGreenColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "Calculate",
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
