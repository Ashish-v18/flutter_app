import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:working/PageThree.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 132, 239, 243),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 45.h),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 16, 15, 92),
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Swaranjali Kala Sadhak\n',
                        style: TextStyle(
                          color: Color.fromARGB(255, 223, 239, 45),
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                      TextSpan(
                        text: 'Gwalior-Gurugram',
                        style: TextStyle(
                          color: Color.fromARGB(255, 223, 239, 45),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 200.h),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  // Your button click logic here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageThree()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Color.fromARGB(255, 242, 243, 240),
                  elevation: 3,
                  side: const BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 206.w, minHeight: 55.h),
                    alignment: Alignment.center,
                    child: const Text(
                      'Quick Access',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color.fromARGB(255, 6, 6, 6),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 33.h),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  // Your button click logic here
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => HomePage()),
                  // );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Color.fromARGB(255, 242, 243, 240),
                  elevation: 3,
                  side: const BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 363.w, minHeight: 60.h),
                    alignment: Alignment.center,
                    child: const Text(
                      'Music Library',
                      style: TextStyle(
                        fontFamily: 'Lexend Deca',
                        color: Color.fromARGB(255, 6, 6, 6),
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
