import 'package:flutter/material.dart';
import 'package:qr_code_scanner/pages/create_qr_code.dart';
import 'package:qr_code_scanner/pages/scan_qr_code.dart';
import 'package:qr_code_scanner/widgets/button_widget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Code Scanner'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  ButtonWidget(
                    text: 'Create QR Code',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => CreateQrCode()));
                    },
                  ),
                ],
              ),
              SizedBox(height: 32),
              Row(
                children: [
                  ButtonWidget(
                    text: 'Scan QR Code',
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ScanQrCode()));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
