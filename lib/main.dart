import 'package:flutter/material.dart';
import './my_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';

int? isviewed;
void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getInt('onBoard');
  runApp(MyApp());
}
