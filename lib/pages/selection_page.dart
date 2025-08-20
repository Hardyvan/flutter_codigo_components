import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  TextEditingController dateController = TextEditingController();
  selectedDate() async {
    DateTime? dateSelected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );
    dateController.text = dateSelected.toString().substring(0, 10);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Selection Page')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 30.0),
            TextField(
              controller: dateController,
              decoration: InputDecoration(
                hintText: 'Fecha de Nacimiento',
              ),
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
                selectedDate();
              },
            ),
          ],
        ),
      ),
    );
  }
}
