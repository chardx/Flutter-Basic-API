import 'package:flutter/material.dart';
import 'package:flutter_basic_api/PAGES/covidnewsapi.dart';
import './phnewsapi.dart';
import 'yummlyapi.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('API Examples'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const DataFromAPI();
                      },
                    ),
                  );
                },
                child: const Text('Yummly API'),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const PhNewsFromAPI();
                      },
                    ),
                  );
                },
                child: const Text('Philipines News API'),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const CovidNewsAPI();
                      },
                    ),
                  );
                },
                child: const Text('COVD News API'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
