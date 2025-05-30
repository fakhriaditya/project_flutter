import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finance Accounting System',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 13, 13, 120),
        ),
      ),
      home: const MyHomePage(title: 'Finance Accounting System'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            alignment:
                WrapAlignment.center, // Pusatkan tombol secara horizontal
            spacing: 20, // Jarak horizontal antar elemen
            runSpacing: 20, // Jarak vertikal antar baris
            children: <Widget>[
              // General Ledger
              Column(
                children: [
                  Image.asset(
                    'assets/images/GL.JPG',
                    height: 150, // Ukuran gambar
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10), // Jarak antara gambar dan tombol
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GeneralLedgerPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(150, 40),
                    ),
                    child: const Text('General Ledger'),
                  ),
                ],
              ),

              // Cash and Bank
              Column(
                children: [
                  Image.asset(
                    'assets/images/Cash and Bank.jpg',
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CashAndBankPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(150, 40),
                    ),
                    child: const Text('Cash and Bank'),
                  ),
                ],
              ),

              // Accounts Receivable (AR)
              Column(
                children: [
                  Image.asset(
                    'assets/images/AR.JPG',
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ARPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(150, 40),
                    ),
                    child: const Text('Accounts Receivable (AR)'),
                  ),
                ],
              ),

              // Accounts Payable (AP)
              Column(
                children: [
                  Image.asset(
                    'assets/images/AP.JPG',
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const APPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(150, 40),
                    ),
                    child: const Text('Accounts Payable (AP)'),
                  ),
                ],
              ),

              // Financial Report
              Column(
                children: [
                  Image.asset(
                    'assets/images/FR.JPG',
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FinancialReportPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(150, 40),
                    ),
                    child: const Text('Financial Report (FR)'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// =================== HALAMAN CASH AND BANK ===================
class CashAndBankPage extends StatelessWidget {
  const CashAndBankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finance Accounting System'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text(
              'Cash and Bank',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () => Navigator.pop(context),
            //   child: const Text('Kembali Ke Halaman Utama'),
            // ),
          ],
        ),
      ),
    );
  }
}

// =================== HALAMAN GENERAL LEDGER ===================
class GeneralLedgerPage extends StatelessWidget {
  const GeneralLedgerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finance Accounting System'),
        backgroundColor: Color.fromARGB(255, 131, 120, 217),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text(
              'General Ledger',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () => Navigator.pop(context),
            //   child: const Text('Kembali Ke Halaman Utama'),
            // ),
          ],
        ),
      ),
    );
  }
}

// =================== HALAMAN AR ===================
class ARPage extends StatelessWidget {
  const ARPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finance Accounting System'),
        backgroundColor: Color.fromARGB(255, 92, 120, 94),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text(
              'Accounts Receivable (AR)',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () => Navigator.pop(context),
            //   child: const Text('Kembali Ke Halaman Utama'),
            // ),
          ],
        ),
      ),
    );
  }
}

// =================== HALAMAN AP ===================
class APPage extends StatelessWidget {
  const APPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accounts Payable (AP)'),
        backgroundColor: Color.fromARGB(255, 126, 141, 86),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text(
              'Accounts Payable (AP)',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () => Navigator.pop(context),
            //   child: const Text('Kembali Ke Halaman Utama'),
            // ),
          ],
        ),
      ),
    );
  }
}

// =================== HALAMAN FINANCIAL REPORT ===================
class FinancialReportPage extends StatelessWidget {
  const FinancialReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Financial Report'),
        backgroundColor: Color.fromARGB(255, 152, 154, 168),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text(
              'Financial Report',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () => Navigator.pop(context),
            //   child: const Text('Kembali Ke Halaman Utama'),
            // ),
          ],
        ),
      ),
    );
  }
}
