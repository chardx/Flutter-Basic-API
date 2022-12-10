import 'package:flutter/material.dart';
import '../API/newsapi.dart';

class PhNewsFromAPI extends StatefulWidget {
  const PhNewsFromAPI({super.key});

  @override
  _PhNewsFromAPIState createState() => _PhNewsFromAPIState();
}

class _PhNewsFromAPIState extends State<PhNewsFromAPI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Basic API Sample")),
      body: Container(
        child: Card(
          child: FutureBuilder(
            future: getNewsData(),
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: const Center(
                    child: Text('Loading'),
                  ),
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, i) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.6),
                            offset: const Offset(
                              0.0,
                              10.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: -16.0,
                          ),
                        ],
                      ),
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.blueAccent,
                          child: ListTile(
                            selectedColor: Colors.red,
                            onTap: () {
                              // ignore: avoid_print
                              print('You selected ${(i + 1)}');
                            },
                            isThreeLine: true,
                            title: Text(
                              snapshot.data[i].title,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(snapshot.data[i].description),
                            leading: Image.network(
                              snapshot.data[i].image,
                              fit: BoxFit.fill,
                            ),
                            trailing: const Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
