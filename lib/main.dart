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
                  validator: (value){
                    if(value!.isEmpty){
                      return "Harga harus terisi";
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
