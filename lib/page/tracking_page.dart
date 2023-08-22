import 'package:d_input/d_input.dart';
import 'package:flutter/material.dart';
import 'package:tracking_app/config/controller/c_resi.dart';
import 'package:tracking_app/config/model/model_resi.dart';
import 'package:tracking_app/page/result_tracking_page.dart';

class ShipmentTrackingPage extends StatefulWidget {
  const ShipmentTrackingPage({super.key});

  @override
  State<ShipmentTrackingPage> createState() => _ShipmentTrackingPageState();
}

class _ShipmentTrackingPageState extends State<ShipmentTrackingPage> {
  final inputResiController = TextEditingController();
  final CResi cResi = CResi();
  ResiModel? resiData;
  List<String> _trackingHistory = [];

  void getTrackingData(String resiNo) async {
    final result = await cResi.getData(resiNo);

    if (result != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultTrackingPage(resiDetail: result),
        ),
      );

      setState(() {
        _trackingHistory.add(resiNo);
      });
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Data Tidak Ditemukan'),
            content: Text(
                'Nomor resi yang Anda masukkan tidak ditemukan. Harap masukkan nomor resi dengan benar!'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    }
  }

  void _clearText() {
    inputResiController.clear();
  }

  @override
  void dispose() {
    inputResiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tracking App'),
        centerTitle: true,
        backgroundColor: Color(0xFF154aa5),
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 21,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 25, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DInput(
              controller: inputResiController,
              title: 'Input Resi',
              hint: 'Masukkan nomor resi',
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  getTrackingData(inputResiController.text);
                  _clearText();
                },
                child: const Text('Cek Resi'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF154aa5),
                ),
              ),
            ),
            SizedBox(height: 32.0),
            Text('Riwayar Pencarian:'),
            SizedBox(height: 9.0),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.black,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _trackingHistory.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Nomor Resi: ${_trackingHistory[index]}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
