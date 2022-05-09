import 'package:flutter/material.dart';

class Codelabs2 extends StatefulWidget {
  const Codelabs2({Key? key}) : super(key: key);

  @override
  State<Codelabs2> createState() => _Codelabs2State();
}

class _Codelabs2State extends State<Codelabs2> {
  String _text = 'Before Changing';
  bool _isChanged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isChanged ? Colors.black : Colors.white,
      appBar: AppBar(
        title: const Text('Stateful Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Codelabs 2',
              style: TextStyle(
                  color: _isChanged ? Colors.white : Colors.black,
                  fontSize: 16),
            ),
            Text(
              _text,
              style: TextStyle(
                  color: _isChanged ? Colors.white : Colors.black,
                  fontSize: 12),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _text = 'After Changing';
                });
              },
              child: const Text('Change'),
            ),
            const SizedBox(
              height: 24,
            ),
            Switch(
              value: _isChanged,
              onChanged: (bool value) {
                setState(() {
                  _isChanged = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
