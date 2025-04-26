import 'package:flutter/material.dart';
import '../componen/cardroti.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key,
  required this.username,
  });
  final String username;
  @override
  State<Profilescreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<Profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,
          title: Text('PROFILE ${widget.username}', style: TextStyle(color: Colors.black)),
          actions: [
          ],  //  Action
        ),
        body: ListView(
          children: [
            const SizedBox(height: 0,),
            Container(color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              child: Center(
                child: Text("History Pembelian Roti",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
            ),
            Cardroti(
              namaroti: "KRUMPUL",
              jumlahpembelian: 3,
              tanggalpembelian: "23/2/2025",
            ),
            Cardroti(
              namaroti: "TAWAR",
              jumlahpembelian: 6,
              tanggalpembelian: "23/3/2024",
            ),
          ],
        )
    );
  }
}

