import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Aplikasi Barang',
      home: HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  final formKey = GlobalKey<FormState>();
  TextEditingController xHarga = TextEditingController();
  TextEditingController xJumlah = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contoh Formulir'),
        backgroundColor: Colors.redAccent,
      ),
      body: Form(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextFormField(
                  controller: xHarga,
                  decoration: InputDecoration(
                      labelText: 'Harga Barang',
                      hintText: 'Input Harga Barang',
                      prefixIcon: Icon(Icons.monetization_on),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(20))),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Harga harus terisi";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: xJumlah,
                  decoration: InputDecoration(
                      labelText: 'Jumlah Barang',
                      hintText: 'Input Jumlah Barang',
                      prefixIcon: Icon(Icons.discount_outlined),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(20))),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Harga harus terisi";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Hitung',style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        minimumSize: Size(140, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)
                        ),
                        shadowColor: Colors.blue,
                        elevation: 10
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Ulangi',style: TextStyle(color: Colors.white),),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          minimumSize: Size(140, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          shadowColor: Colors.blue,
                          elevation: 10
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
