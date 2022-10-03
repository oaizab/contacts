import 'package:contacts/builders.dart';
import 'package:contacts/my_app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ContactProfilePage());
}

enum AppTheme { light, dark }

class ContactProfilePage extends StatefulWidget {
  const ContactProfilePage({super.key});

  @override
  State<ContactProfilePage> createState() => _ContactProfilePageState();
}

class _ContactProfilePageState extends State<ContactProfilePage> {
  AppTheme currentTheme = AppTheme.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: currentTheme == AppTheme.dark
          ? MyAppThemes.appThemeDark()
          : MyAppThemes.appThemeLight(),
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.star_border),
            ),
          ],
        ),
        body: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: Image.network(
                    //'https://t4.ftcdn.net/jpg/03/32/39/61/360_F_332396199_HdB6eUWzLD5AoanXRZid8LmghYE4JieQ.jpg',
                    'https://aniyuki.com/wp-content/uploads/2021/12/aniyuki-sad-anime-avatar-image-32.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Omar Aizab',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildCallButton(),
                      buildTextButton(),
                      buildVideoCallButton(),
                      buildEmailButton(),
                      buildDirectionsButton(),
                      buildPayButton(),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                ),
                mobilePhoneListTile(),
                otherPhoneListTile(),
                const Divider(
                  color: Colors.grey,
                ),
                emailListTile(),
                const Divider(
                  color: Colors.grey,
                ),
                addressListTile(),
              ],
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.threesixty),
          onPressed: () {
            setState(
              () {
                currentTheme = currentTheme == AppTheme.dark
                    ? AppTheme.light
                    : AppTheme.dark;
              },
            );
          },
        ),
      ),
    );
  }
}
