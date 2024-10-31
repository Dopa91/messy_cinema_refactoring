import 'package:flutter/material.dart';

class HarryPotterDetailsScreen extends StatelessWidget {
  const HarryPotterDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Harry Potter"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                'https://images.cgames.de/images/gsgp/290/harry-potter-filme_6229276.jpg',
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
                            'Harry Potter',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            '10:00 - 12:30',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    "Harry Potter ist eine Fantasy-Romanreihe der britischen Schriftstellerin Joanne K. Rowling. Erzählt wird die Geschichte des jungen Zauberers Harry Potter, der als Baby von der bösen Hexe Lord Voldemort ermordet werden sollte, aber überlebte und seither gegen ihn kämpft.",
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
                              content: Text('Ticket zu Harry Potter'),
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
