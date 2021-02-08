import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class CreateQrCode extends StatefulWidget {
  @override
  _CreateQrCodeState createState() => _CreateQrCodeState();
}

class _CreateQrCodeState extends State<CreateQrCode> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create QR Code'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BarcodeWidget(
                barcode: Barcode.qrCode(),
                color: Colors.white,
                data: controller.text ??
                    'Please set a text to create a more meaningful QR code :)',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Enter the data',
                        hintStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.blue[800],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {});
                    },
                    backgroundColor: Colors.blue[800],
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
