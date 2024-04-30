import 'package:advflutterch1/screens/change_theme_using_provider/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends StatelessWidget {
  const ThemeProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15),
            child: Icon(Icons.add_circle_outline_rounded, size: 30),
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 130),
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/img/bg.jpg'),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Testing User',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          ),
          ListTile(
              leading: Provider.of<ThemeChangeProvider>(context).isDark ? Icon(Icons.brightness_3,color: Colors.amber,) : Icon(Icons.light_mode,color: Colors.purple,),
              title: Text(
                Provider.of<ThemeChangeProvider>(context).isDark ? 'Dark Mode' : 'Light Mode',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Switch(
                activeColor: Provider.of<ThemeChangeProvider>(context).isDark
                    ? Colors.yellow
                    : Colors.purple,
                value: Provider.of<ThemeChangeProvider>(context, listen: true)
                    .isDark,
                onChanged: (value) {
                  Provider.of<ThemeChangeProvider>(context, listen: false)
                      .theme(value);
                },
              ),
          ),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Icon(Icons.apps_sharp,
                size: 30,
                color: Provider.of<ThemeChangeProvider>(context).isDark
                    ? Colors.blue
                    : Colors.green),
            title: const Text(
              "Story",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Icon(Icons.settings,
                size: 30,
                color: Provider.of<ThemeChangeProvider>(context).isDark
                    ? Colors.pink
                    : Colors.blue),
            title: const Text(
              "Setting and Privacy",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Icon(Icons.chat,
                size: 30,
                color: Provider.of<ThemeChangeProvider>(context).isDark
                    ? Colors.yellow
                    : Colors.deepOrange),
            title: const Text(
              "Help Center",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Icon(Icons.notifications_on_rounded,
                size: 30,
                color: Provider.of<ThemeChangeProvider>(context).isDark
                    ? Colors.yellowAccent
                    : Colors.purple),
            title: const Text(
              "Notification",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
