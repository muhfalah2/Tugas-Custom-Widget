import 'package:flutter/material.dart';

class Cardroti extends StatelessWidget {
  const Cardroti({
    super.key,
    required this.namaroti,
    required this.jumlahpembelian,
    required this.tanggalpembelian
  });
  final String namaroti;
  final int jumlahpembelian;
  final String tanggalpembelian;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(color: Colors.blueAccent,
          height: 320,
          width: 200,
          child: Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CircleAvatar(
                        radius: 60, backgroundColor: Colors.white,
                        child: Icon(Icons.fastfood,size: 70, color: Colors.black,//Nambah Ikon
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('$namaroti',
                        style: TextStyle(color: Colors.white, fontSize: 25
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                      Column(
                        children: [
                          Text("Jumlah Pembelian: $jumlahpembelian", style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text("Tanggal Beli: $tanggalpembelian", style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
          ),
        )
    );
  }
}