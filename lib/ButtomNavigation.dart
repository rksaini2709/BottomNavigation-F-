import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Buttomnavigation extends StatefulWidget {
  const Buttomnavigation({super.key});

  @override
  _ButtomnavigationState createState() => _ButtomnavigationState();
}

class _ButtomnavigationState extends State<Buttomnavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          // Lottie.asset("asset/Animation/Hlo.json"),
          // Lottie.asset("asset/Animation/Happy.json"),
          Lottie.network(
              "https://lottie.host/c9c1c462-8360-4ba6-80ef-93d6d8523074/rJubK4jZpM.json"),
          const Text(
            "Hello",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          const Text(
            "Great Work",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    builder: (BuildContext context) {
                      return SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Lottie.asset("asset/Animation/Successful.json",
                                height: 250, width: 250),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              "Successful",
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      );
                    });
              },
              child: const Text("Successful"))
        ],
      )),
    );
  }
}
