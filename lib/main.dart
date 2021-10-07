import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sliver_app_bar_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SliverAppBarPage(),
    );
  }
}
