import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:text_collector/models/text_entry.dart';

class TextEntryProvider with ChangeNotifier {
  final List<TextEntry> _entries = [];

  UnmodifiableListView<TextEntry> get entries => UnmodifiableListView(_entries);

  void addEntry(String text) {
    final entry = TextEntry(id: DateTime.now().toString(), text: text);
    _entries.add(entry);
    notifyListeners();
  }
}
