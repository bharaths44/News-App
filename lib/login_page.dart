import 'package:flutter/material.dart';
import 'package:newsapp/desk_live.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1583339824000-5afecfd41835?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80"),
                fit: BoxFit.fill),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    "MELCOW",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
                  ),
                ),

                const Divider(
                  color: Colors.transparent,
                  height: 25,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),

                TextFormField(
                  decoration: InputDecoration(filled:true,fillColor: Colors.grey,
                      labelText: "Enter Username",
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 4, color: Colors.black26),
                          borderRadius: BorderRadius.circular(25)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 4, color: Colors.black38),
                          borderRadius: BorderRadius.circular(25))),
                ), //Username

                const Divider(
                  color: Colors.transparent,
                  height: 15,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),

                TextFormField(
                  decoration: InputDecoration(filled:true,fillColor: Colors.grey,
                      labelText: "Enter Password",
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 4, color: Colors.black26),
                          borderRadius: BorderRadius.circular(25)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 4, color: Colors.black38),
                          borderRadius: BorderRadius.circular(25))),
                ), //Password

                const Divider(
                  color: Colors.transparent,
                  height: 25,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => DeskLive()));},
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.grey,side: const BorderSide(width: 4.0,color: Colors.grey),
                          fixedSize: const Size(100, 50)),
                      child: const Text(
                        "Submit",
                        style: TextStyle(color: Colors.black),
                      ),
                    ), //Submit Elevated button
                    const SizedBox(width: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.grey,
                          fixedSize: const Size(100, 50),side: const BorderSide(width: 4.0,color: Colors.grey),
                          ),
                      onPressed: () {},
                      child: const Text(
                        "Clear",
                        style: TextStyle(color: Colors.black),
                      ),
                    ), //Clear elevated button
                  ],
                ), //Elevated button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
