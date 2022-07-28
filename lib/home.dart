import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:my_app/login.dart';

import 'package:my_app/widgets/sidenavbar.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.travel_explore),
          SizedBox(
            width: 10,
          ),
          Text("Travelo"),
        ],
      )),
      drawer: const SideNAv(),
      body: ListView(
        children: [
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1600891964599-f61ba0e24092?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cmVzdGF1cmFudCUyMGZvb2R8ZW58MHx8MHx8&w=1000&q=80"),
                    fit: BoxFit.cover),
              ),
              height: 200,
              child: const Center(
                child: Text(
                  'Restaurant',
                  style: TextStyle(fontSize: 35,color: Colors.white ,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg"),
                    fit: BoxFit.cover),
              ),
              height: 200,
              child: const Center(
                child: Text(
                  'Hotels',
                  style: TextStyle(fontSize: 35,color: Colors.white ,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.indianexpress.com/2020/05/Book-Flights-Indigo-759.jpg"),
                    fit: BoxFit.cover),
              ),
              height: 200,
              child: const Center(
                child: Text(
                  'Tickets Booking',
                  style: TextStyle(fontSize: 35,color: Colors.white ,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://media.istockphoto.com/photos/car-refueling-at-gas-station-during-the-night-picture-id183891014?k=20&m=183891014&s=612x612&w=0&h=GvmS8AlMP2XR8G5lk3aPncLYtA_tuS1XbNoWyo5MKSQ="),
                    fit: BoxFit.cover),
              ),
              height: 200,
              child: const Center(
                child: Text(
                  'Gas Stations',
                  style: TextStyle(fontSize: 35,color: Colors.white ,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),

      // body:  Center(
      //   child: ElevatedButton(
      //     child:const Text("logout") ,
      //     onPressed: (){
      //       FirebaseAuth.instance.signOut().then((value){
      //         Navigator.push(context,
      //         MaterialPageRoute(builder: (context) => const Login()));

      //       });

      //     },
      //     ),
      // ),
    );
  }
}
