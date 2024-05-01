import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.blueAccent,
        ),
        title: const Text(
          'Contact Us',
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: Column(
          children: [
            const Text(
              textAlign: TextAlign.center,
              'If you have any queries, get in touch with us.We will be happy to help you!',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 70,
              width: 320,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.phone_android,
                    color: Colors.blueAccent,
                    size: 35,
                  ),
                  TextButton(
                    onPressed: () {
                      Uri url = Uri.parse('tel: +91 9327642743');
                      launcher.launchUrl(url);
                    },
                    child: const Text(
                      '+91 12345 67890',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 70,
              width: 320,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.email_outlined,
                    color: Colors.blueAccent,
                    size: 35,
                  ),
                  TextButton(
                    onPressed: () {
                      Uri url = Uri.parse('mailto: drashtipatel7080@gmail.com');
                      launcher.launchUrl(url);
                    },
                    child: const Text(
                      'info@xymail.com',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 70,
              width: 320,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.sms_outlined,
                    color: Colors.blueAccent,
                    size: 35,
                  ),
                  TextButton(
                    onPressed: () {
                      Uri url = Uri.parse('sms: +91 9327642743');
                      launcher.launchUrl(url);
                    },
                    child: const Text(
                      '+91 12345 67890',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 260,
              width: 320,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Text(
                      textAlign: TextAlign.center,
                      'Social Media',
                      style: TextStyle(
                          fontSize: 27,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/img/linkedin.jpg'),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Uri url =
                                Uri.parse('https://www.linkedin.com/feed/');
                            launcher.launchUrl(url);
                          },
                          child: const Text(
                            '         Linkedin',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/img/github.png'),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Uri url =
                                Uri.parse('https://github.com/Drashtipatel296');
                            launcher.launchUrl(url);
                          },
                          child: const Text(
                            '         GitHub',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}