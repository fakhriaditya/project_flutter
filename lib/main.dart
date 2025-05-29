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
      title: 'Flutter Tutorial',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Financial Accounting System'),
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
            spacing: 10,
            runSpacing: 10,
            children: <Widget>[
              // Tombol General Ledger
              ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: Size(150, 40)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GeneralLedgerPage(),
                    ),
                  );
                },
                child: const Text('General Ledger'),
              ),

              // Tombol Cash and Bank
              ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: Size(150, 40)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CashAndBankPage(),
                    ),
                  );
                },
                child: const Text('Cash and Bank'),
              ),

              // Tombol Accounts Receivable (AR)
              ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: Size(150, 40)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ARPage()),
                  );
                },
                child: const Text('Accounts Receivable (AR)'),
              ),

              // Tombol Accounts Payable (AP)
              ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: Size(150, 40)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const APPage()),
                  );
                },
                child: const Text('Accounts Payable (AP)'),
              ),

              // Tombol Financial Report
              ElevatedButton(
                style: ElevatedButton.styleFrom(fixedSize: Size(150, 40)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FinancialReportPage(),
                    ),
                  );
                },
                child: const Text('Financial Report'),
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
        title: const Text('Cash and Bank'),
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
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali Ke Halaman Utama'),
            ),
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
        title: const Text('General Ledger'),
        backgroundColor: Color.fromARGB(255, 31, 2, 251),
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
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali Ke Halaman Utama'),
            ),
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
        title: const Text('Accounts Receivable (AR)'),
        backgroundColor: Color.fromARGB(255, 31, 2, 251),
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
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali Ke Halaman Utama'),
            ),
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
        backgroundColor: Color.fromARGB(255, 31, 2, 251),
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
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali Ke Halaman Utama'),
            ),
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
        backgroundColor: Color.fromARGB(255, 31, 2, 251),
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
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali Ke Halaman Utama'),
            ),
          ],
        ),
      ),
    );
  }
}
