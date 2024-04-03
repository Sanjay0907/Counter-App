import 'package:couter_app_setstate/controller/provider/couterProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class CouterScreen extends StatefulWidget {
  const CouterScreen({super.key});

  @override
  State<CouterScreen> createState() => _CouterScreenState();
}

class _CouterScreenState extends State<CouterScreen> {
  // int count = 0;

  // addToCount() {
  //   setState(() {
  //     count = count + 1;
  //   });
  // }

  // substractToCount() {
  //   setState(() {
  //     count = count - 1;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Counter App',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5.w,
          vertical: 3.h,
        ),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Consumer<CounterProvider>(
                    builder: (context, couterProvider, child) {
                  return Text(
                    couterProvider.count.toString(),
                    style: const TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  );
                }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // substractToCount();
                    Provider.of<CounterProvider>(context, listen: false)
                        .subtractToCount();
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        40.w,
                        7.h,
                      ),
                      backgroundColor: Colors.teal),
                  child: const Icon(
                    Icons.remove,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // addToCount();
                    Provider.of<CounterProvider>(context, listen: false)
                        .addToCount();
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        40.w,
                        7.h,
                      ),
                      backgroundColor: Colors.teal),
                  child: const Icon(
                    Icons.add,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
