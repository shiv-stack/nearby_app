import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/login.dart';

class SideNAv extends StatelessWidget {
  const SideNAv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
          color: Colors.lightBlue,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Shivam Thapa",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              listItem(label: "Home", icon: Icons.home, onTap: () {}),
              listItem(label: "About", icon: Icons.quiz, onTap: () {}),
              listItem(
                label: "Logout",
                icon: Icons.logout,
                onTap: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  });
                },
              )
            ],
          )),
    );
  }

  Widget listItem(
      {required String label, required IconData icon, required Function()  onTap}) {
    const color = Colors.white;
    const hovercolor = Colors.white60;
    return ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      hoverColor: hovercolor,
      title: Text(
        label,
        style: const TextStyle(color: color),
      ),
      onTap: onTap,
    );
  }
}
