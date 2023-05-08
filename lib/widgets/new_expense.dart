import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key}) : super(key: key);

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  var _enteredTitle = ''; // save title input value

  void _savedTitleInput(String inputValue) {
    // add title input value to _enteredTitle
    _enteredTitle = inputValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          TextField(
            onChanged: _savedTitleInput,
            maxLength: 50,
            decoration: const InputDecoration(
              labelText: 'Title',
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    print(_enteredTitle);
                  }, child: const Text('Save expense')),
            ],
          )
        ],
      ),
    );
  }
}
