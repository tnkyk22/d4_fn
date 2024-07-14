import 'package:d3_login/service/page_service.dart';
import 'package:flutter/material.dart';

class PageDetailScreen extends StatefulWidget {
  final String id;
  const PageDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<PageDetailScreen> createState() => _PageDetailScreenState();
}

class _PageDetailScreenState extends State<PageDetailScreen> {
  dynamic _page = {};

  @override
  void initState() {
    super.initState();
    PageService.fetchPage().then((page) {
      setState(() {
        _page = page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Detail'),
      ),
      body: const Placeholder(),
    );
  }
}
