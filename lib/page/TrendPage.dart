import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:github_trending/network/TrendApi.dart';

class TrendPage extends StatefulWidget {
  @override
  _TrendPageState createState() => new _TrendPageState();
}

class _TrendPageState extends State<TrendPage> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  void initState() {
    super.initState();
    _getTrendingData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: _buildSuggestions());
  }

  _getTrendingData() async {
    var res = await TrendApi.getTrendingRepo();
    print(res);
  }

  _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}
