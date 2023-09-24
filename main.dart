import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<String> name = [
      "Anya Forger",
      "Anya Forger",
      "Anya Forger",
      "Anya Forger",
      "Anya Forger",
      "Anya Forger",
      "Anya Forger",
      "Anya Forger",
      "Anya Forger",
      "Anya Forger",
      "Anya Forger",
      "Anya Forger",
      "Anya Forger",
      "Anya Forger",
      "Anya Forger",
    ];
    String sub = "Jabatan : Direktur";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: Test(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff24153d),
          leading: Icon(Icons.home),
          title: Text(
            'Uji Coba',
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding:
                  EdgeInsets.only(right: 16.0), // Adjust the value as needed
              child: Icon(
                Icons.menu,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xffc1adc5),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
              itemCount: name.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://th.bing.com/th/id/OIP.ZtgCVUGnP7qlIL3C2_Tg2gHaHa?w=219&h=219&c=7&r=0&o=5&pid=1.7"),
                  ),
                  title: Text(name[index]),
                  subtitle: Text(sub),
                );
              }),
        )),
      ),
    );
  }
}
