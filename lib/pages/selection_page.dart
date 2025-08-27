import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  TextEditingController dateController = TextEditingController();
  int selectedValue = 1;
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
            const SizedBox(height: 30.0),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 4.0,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.07),
                    blurRadius: 12,
                    offset: const Offset(4, 4),
                  ),
                ],
              ),
              child: DropdownButton(
                isExpanded: true,
                underline: Container(),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.blueGrey,
                ),
                value: selectedValue,

                items: const [
                  DropdownMenuItem(
                    child: Text("Elemento 1"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("Elemento 2"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text("Elemento 3"),
                    value: 3,
                  ),
                ],
                onChanged: (int? value) {
                  selectedValue = value!;
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
