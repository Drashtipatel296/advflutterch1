import 'package:flutter/material.dart';
import '../../../../utils/global_var.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: (isDark) ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: (isDark) ? Colors.black : Colors.white,
        appBar: AppBar(
          title: const Text(
            'Theme App',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 65,horizontal: 20),
              height: 650,
              width: double.infinity,
              decoration: BoxDecoration(
                color: (isDark) ? Colors.black87 : Colors.white,
                boxShadow: (isDark)
                    ? [
                        const BoxShadow(
                          color: Colors.grey,
                        ),
                      ]
                    : [
                        BoxShadow(
                          blurRadius: 2,
                          color: Colors.grey.shade300,
                          spreadRadius: 0.5,
                        )
                      ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 100, horizontal: 25),
                child: Column(
                  children: [
                    const Text(
                      'Yo Man!',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "It's a simple example of\n           dark theme",
                      style: TextStyle(fontSize: 25, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isDark = false;
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 280,
                        decoration: BoxDecoration(
                          color: (isDark) ? Colors.grey : const Color(0xffFFCC00),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Light Theme',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          isDark = true;
                        });
                      },
                      child: Container(
                        height: 80,
                        width: 280,
                        decoration: BoxDecoration(
                          color: (isDark) ? Colors.blueAccent.shade200 : Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        alignment: Alignment.center,
                        child: const Text(
                          'Dark Theme',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
