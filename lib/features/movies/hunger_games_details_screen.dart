import 'package:flutter/material.dart';

class HungerGamesDetailsScreen extends StatelessWidget {
  const HungerGamesDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hunger Games"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                'https://cdn.prod.www.spiegel.de/images/79703aee-0001-0004-0000-000000776367_w960_r1.778_fpx42_fpy45.jpg',
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
                            'Hunger Games',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            '17:45 - 21:55',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    "Hunger Games ist ein dystopischer Roman von Suzanne Collins. Es ist der erste Roman der Hungerspiele-Trilogie und wurde 2008 veröffentlicht. Der Roman wurde von Collins und Billy Ray für den Film adaptiert.",
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
                              content: Text('Ticket zu Hunger Games'),
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
