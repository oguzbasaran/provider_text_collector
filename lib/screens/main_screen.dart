import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/text_entry_provider.dart';
import '../widgets/text_list.dart';

class MainScreen extends StatelessWidget {
  final textController = TextEditingController();

  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Provider Example')),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textController,
              decoration: const InputDecoration(labelText: 'Enter text'),
            ),
          ),
          ElevatedButton(
            child: const Text('Add'),
            onPressed: () {
              Provider.of<TextEntryProvider>(context, listen: false)
                  .addEntry(textController.text);
              textController.clear();
            },
          ),
          const Expanded(child: TextList())
        ],
      ),
    );
  }
}
