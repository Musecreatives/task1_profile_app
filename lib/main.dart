import 'package:flutter/material.dart';
import 'package:profile_app/widgets/color.palette.dart';
import 'package:modern_form_line_awesome_icons/modern_form_line_awesome_icons.dart';

import 'widgets/web_view_container.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => ProfileScreen(),
          '/webViewContainer': (context) => WebViewContainer()
        },
      ),
    );

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: const Icon(LineAwesomeIcons.angle_left)),
          title: Text(
            'Profile',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                    isDark ? LineAwesomeIcons.sun_o : LineAwesomeIcons.moon_o)),
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(36),
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const Image(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Text('Paul Sola-Eniolawun',
                  style: Theme.of(context).textTheme.headlineSmall),
              Text('Track: Flutter Mobile Development',
                  style: Theme.of(context).textTheme.labelLarge),
              const SizedBox(height: 50),
              SizedBox(
                width: 200,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/webViewContainer');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  child: const Text('Open GitHub Profile',
                      style: TextStyle(color: textColor)),
                ),
              )
            ],
          ),
        )));
  }
}
