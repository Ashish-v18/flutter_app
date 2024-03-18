import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:working/PageTwo.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);
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
            SizedBox(height: 43.h),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 200.w,
                child: Image.asset(
                  'assets/images/404.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 43.h),
            Center(
                child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text:
                        'We Intend to Reach out Every\n one who is Passionate About\n Indian Classical Music\n',
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 8, 8),
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  TextSpan(
                    text: '\nगीतं वाद्यं तथा  नृत्यं त्रयं संगीतमुच्यते',
                    style: TextStyle(
                        color: Color.fromARGB(255, 4, 48, 168),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )),
            SizedBox(height: 43.h),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  // Your button click logic here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageTwo()),
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
                        BoxConstraints(maxWidth: 363.w, minHeight: 60.h),
                    alignment: Alignment.center,
                    child: const Text(
                      'Guest',
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
            SizedBox(height: 33.h),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  // Your button click logic here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageTwo()),
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
                        BoxConstraints(maxWidth: 363.w, minHeight: 60.h),
                    alignment: Alignment.center,
                    child: const Text(
                      'Student',
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
