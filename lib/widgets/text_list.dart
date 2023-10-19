import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/text_entry_provider.dart';

class TextList extends StatelessWidget {
  const TextList({super.key});

  @override
  Widget build(BuildContext context) {
    final textEntries = Provider.of<TextEntryProvider>(context).entries;

    return ListView.builder(
      itemCount: textEntries.length,
      itemBuilder: (ctx, index) => ListTile(
        title: Text(textEntries[index].text),
      ),
    );
  }
}
