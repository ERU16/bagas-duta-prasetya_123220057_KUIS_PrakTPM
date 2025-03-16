import 'package:flutter/material.dart';
import 'model/newsmodel.dart';

class ViewsPage extends StatelessWidget {
  final NewsModel news;

  const ViewsPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(news.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(news.image,
                  width: double.infinity, fit: BoxFit.cover),
            ),
            const SizedBox(height: 20),
            Text(
              news.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(news.description, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
