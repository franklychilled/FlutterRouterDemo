import 'package:flutter/material.dart';

import '../Data/Books.dart';
import '../Model/Book.dart';
import '../Screen/BooksListScreen.dart';

class BooksListPage extends Page {
  BooksListPage({this.handleBookTapped})
      : super(key: ValueKey('BooksListPage'));

  final void Function(Book) handleBookTapped;

  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return BooksListScreen(
          books: books,
          onTapped: handleBookTapped,
        );
      },
    );
  }
}
