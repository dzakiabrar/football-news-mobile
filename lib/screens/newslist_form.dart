import 'package:flutter/material.dart';
// TODO: Impor drawer yang sudah dibuat sebelumnya
import 'package:football_news/widgets/left_drawer.dart';
//import 'dart:convert';
// import 'package:provider/provider.dart';
// import 'package:pbp_django_auth/pbp_django_auth.dart';
//import 'package:football_news/screens/menu.dart';


class NewsFormPage extends StatefulWidget {
  const NewsFormPage({super.key});

  @override
  State<NewsFormPage> createState() => _NewsFormPageState();
}

class _NewsFormPageState extends State<NewsFormPage> {
  // ✅ 1. Buat variabel form key
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Add News Form')),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),

      // ✅ 2. Pasang _formKey ke dalam widget Form
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: const [Text("Form akan diisi di sini")]),
          ),
        ),
      ),
    );
  }
}
