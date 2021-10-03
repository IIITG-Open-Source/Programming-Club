import 'package:avanttest/models/tx.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String title = '';
  double amt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  onChanged: (x) {
                    title = x;
                  },
                  decoration: InputDecoration(
                    hintText: 'Title',
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (x) {
                    amt = double.parse(x);
                  },
                  decoration: InputDecoration(
                    hintText: 'Amount',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pop(Tx(amount: amt, title: title));
                      },
                      child: Text('Add'),
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
