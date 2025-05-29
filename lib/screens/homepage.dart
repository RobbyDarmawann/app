import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  void navigateToDetail(BuildContext context, int kolamNumber) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => KolamDetailPage(kolamNumber: kolamNumber),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3196A9),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Column(
                  children: [
                    Text(
                      'DASHBOARD',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'MONITORING',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: List.generate(11, (index) {
                    if (index < 10) {
                      final isWarning = index == 1; // Kolam 2 warning
                      return GestureDetector(
                        onTap: () => navigateToDetail(context, index + 1),
                        child: Container(
                          decoration: BoxDecoration(
                            color: isWarning ? Colors.amber[400] : Colors.cyan[100],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Kolam ${index + 1}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Icon(Icons.thermostat, size: 40),
                              Text(
                                isWarning ? '29,2 °C' : '28,5 °C',
                                style: const TextStyle(fontSize: 16),
                              ),
                              const Divider(),
                              const Text(
                                'Lihat Detail',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      );
                    } else {
                      return Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.cyan[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Pompa Air',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Expanded(
                              child: Center(
                                child: Image.asset(
                                  'assets/images/pompa.png',
                                  fit: BoxFit.contain,
                                  width: 80,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const CircleAvatar(radius: 6, backgroundColor: Colors.grey),
                                const SizedBox(width: 6),
                                const CircleAvatar(radius: 6, backgroundColor: Colors.green),
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KolamDetailPage extends StatelessWidget {
  final int kolamNumber;

  const KolamDetailPage({super.key, required this.kolamNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Kolam $kolamNumber'),
        backgroundColor: const Color(0xFF3196A9),
      ),
      body: Center(
        child: Text(
          'Informasi lengkap untuk Kolam $kolamNumber',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
