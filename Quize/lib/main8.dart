import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:woocommerce/models/products.dart';
import 'package:woocommerce/woocommerce.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WooCommerce Test",
      home: MyHomePage(),
    );
  }
}

String baseUrl = '';
String consumerKey = 'ck_7cbb5dee5b2f1779ea347f4be40e811866ffbe23';
String consumerSecret = 'cs_d54eead3a8807b4f96b8978af0492ee8f6042a91';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<WooProduct> product = [];
  WooCommerce wooCommerce = WooCommerce(
      baseUrl: baseUrl,
      consumerKey: consumerKey,
      consumerSecret: consumerSecret,
      isDebug: true);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WooCommerce Test",
      home: MyHomePage(),
    );
  }
}
