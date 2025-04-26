import 'package:customwidget/profilescreen.dart';
import 'package:flutter/material.dart';
import '../componen/cardproduk.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key,
  required this.username,
  });
  final String username;
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white,
          title: const Text("DASHBOARD", style: TextStyle(color: Colors.black)),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Profilescreen(username: widget.username,)),
                );
              },
              child: Text("PROFILE", style: TextStyle(color: Colors.black, fontSize: 20),),
            ),
          ],  //  Action
        ),
        body: ListView(
          children: const[
            CardProduk(
              namaProduk: "BROWNIS",
              harga: 5000,
              stok: 60,
            ),
            CardProduk(
              namaProduk: "LAPIS LEGIT",
              harga: 2500,
              stok: 25,
            ),
            CardProduk(
              namaProduk: "SANDWICH",
              harga: 7000,
              stok: 8,
            ),
            CardProduk(
              namaProduk: "KRUMPUL",
              harga: 2000,
              stok: 10,
            ),
            CardProduk(
              namaProduk: "TAWAR",
              harga: 11000,
              stok: 16,
            ),
          ],
        )
    );
  }
}

