import 'package:flutter/material.dart';

class HerrDerRingeDetailsScreen extends StatelessWidget {
  const HerrDerRingeDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Herr der Ringe"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                'https://de.web.img3.acsta.net/r_654_368/img/95/3b/953bf396a9308be856e10b7075d2c570.jpg',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.movie, size: 40.0),
                      const SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Herr der Ringe',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            '18:00 - 21:13',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    "Herr der Ringe ist ein Film, der auf dem gleichnamigen Buch von J.R.R. Tolkien basiert. Der Film wurde von Peter Jackson inszeniert. Der Film wurde in Neuseeland gedreht.",
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FilledButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              behavior: SnackBarBehavior.floating,
                              content: Text('Ticket zu Herr der Ringe'),
                            ),
                          );
                        },
                        child: const Text('Ticket kaufen'),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
