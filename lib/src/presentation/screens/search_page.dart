import 'package:cubapod/src/presentation/application/podcasts_provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Index 1: Business',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        RaisedButton(
          child: Text('SelectTopics'),
          onPressed: () {
            context.read(categoryListStateNotifierProvider).getCategoryList();
            Navigator.of(context).pushNamed('/SelectTopics');
          },
        ),
        RaisedButton(
          child: Text('Podcast List'),
          onPressed: () {
            context.read(categoryListStateNotifierProvider).getCategoryList();
            Navigator.of(context).pushNamed('/SelectTopics');
          },
        ),
      ],
    );
  }
}
