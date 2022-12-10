import 'package:flutter/material.dart';
import 'buttonAnswer.dart';

class CovidNewsAPI extends StatefulWidget {
  const CovidNewsAPI({super.key});

  @override
  State<CovidNewsAPI> createState() => _CovidNewsAPIState();
}

class _CovidNewsAPIState extends State<CovidNewsAPI> {
  var covidNews = [
    {
      'questionsText': 'What\'s your favorite color',
      'answers': ['Black', 'Yellow', 'Green']
    },
    {
      'questionsText': 'What\'s your favorite place',
      'answers': ['Marupit', 'Camaligan', 'Naga City']
    },
    {
      'questionsText': 'gago ka ba?',
      'answers': ['uu', 'hinde']
    },
    {
      'questionsText': 'What\'s your favorite color',
      'answers': ['Black', 'Yellow', 'Green']
    },
    {
      'questionsText': 'What\'s your favorite place',
      'answers': ['Marupit', 'Camaligan', 'Naga City']
    },
    {
      'questionsText': 'gago ka ba?',
      'answers': ['uu', 'hinde']
    },
    {
      'questionsText': 'What\'s your favorite color',
      'answers': ['Black', 'Yellow', 'Green']
    },
    {
      'questionsText': 'What\'s your favorite place',
      'answers': ['Marupit', 'Camaligan', 'Naga City']
    },
    {
      'questionsText': 'gago ka ba?',
      'answers': ['uu', 'hinde']
    },
    {
      'questionsText': 'What\'s your favorite color',
      'answers': ['Black', 'Yellow', 'Green']
    },
    {
      'questionsText': 'What\'s your favorite place',
      'answers': ['Marupit', 'Camaligan', 'Naga City']
    },
    {
      'questionsText': 'gago ka ba?',
      'answers': ['uu', 'hinde']
    },
  ];
  var phNews = ['No news', 'Bad news', 'News'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Covid News API'),
      ),
      body: ListView.builder(
        itemCount: covidNews.length,
        itemBuilder: (context, i) {
          return Column(
            children: [
              Container(
                color: Colors.blue,
                margin: const EdgeInsets.all(8),
                child: ListTile(
                  title: Text('${covidNews[i]['answers']}'),
                ),
              ),
              Row(
                children: [
                  for (var i = 0; i <= 2; i++) ButtonAnswer(),
                ],
              ),
              // Text('${covidNews[2]['answers']}'),
            ],
          );
        },
      ),
    );
  }
}
