import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/constants.dart';
import 'package:project/components/button-component.dart';
import 'package:project/screens/category/category-screen.dart';
import 'package:validators/validators.dart';

class WelcomeAuth extends StatelessWidget {
  const WelcomeAuth({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/w3c.svg',
              height: height / 6,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'به تک بلاگ خوش اومدی',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'برای ارسال مطالب حتما باید ثبت نام کنی',
              style: Theme.of(context).textTheme.headline2,
            ),
            SizedBox(
              height: 32,
            ),
            ButtonComponent(
              height: height,
              width: width,
              title: 'بزن بریم',
              handlSubmit: () {
                ShowEmailModal(context, height, width);
              },
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> ShowEmailModal(
      BuildContext context, double height, double width) {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: height / 2,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'لطفا ایمیلت را وارد کن',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(48),
                      child: Container(
                        width: width / 1.5,
                        height: height / 18,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(36)),
                        child: TextField(
                          onChanged: (value) {
                            print(isEmail(value));
                          },
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(width: 2)),
                            hintText: 'example@gmail.com',
                          ),
                        ),
                      )),
                  ButtonComponent(
                    height: height,
                    width: width,
                    title: 'ادامه',
                    handlSubmit: () {
                      Navigator.pop(context);
                      ActivateCodeModal(context, height, width);
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
    Future<dynamic> ActivateCodeModal(
      BuildContext context, double height, double width) {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            height: height / 2,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'کدفعالسازی را وارد کنید',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Padding(
                      padding: const EdgeInsets.all(48),
                      child: Container(
                        width: width / 1.5,
                        height: height / 18,
                        decoration: BoxDecoration(
                            // color: Colors.red,
                            borderRadius: BorderRadius.circular(36)),
                        child: TextField(
                          onChanged: (value) {
                            print(isEmail(value));
                          },
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16),
                                borderSide: BorderSide(width: 2)),
                            hintText: '******',
                          ),
                        ),
                      )),
                  ButtonComponent(
                    height: height,
                    width: width,
                    title: 'ادامه',
                    handlSubmit: () {
                      Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) => CategoryScreen()));
                    },
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
