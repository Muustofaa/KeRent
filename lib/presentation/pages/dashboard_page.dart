import 'package:flutter/material.dart';
import '../widgets/summary_card.dart';
import '../widgets/income_chart.dart';
import '../widgets/booking_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black45,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Statistik',
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Salam Cuan!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        'Pengguna Baru',
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      const Icon(Icons.notifications, color: Colors.green),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 24),
              // Ringkasan
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 155, 67),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  '   Ringkasan hari ini',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SummaryCard(title: 'Booking', value: '2', unit: 'Unit'),
                  SummaryCard(title: 'Income', value: '2', unit: 'Jt Unit'),
                  SummaryCard(title: 'Pelanggan', value: '1', unit: 'Aktif'),
                ],
              ),

              const SizedBox(height: 24),
              // Statistik
              const Text(
                'Statistik Pendapatan',
                style: TextStyle(
                  backgroundColor: Colors.green,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const IncomeChart(),

              const SizedBox(height: 24),
              // Booking terbaru
              const Text(
                'Booking Terbaru',
                style: TextStyle(
                  backgroundColor: Colors.green,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const BookingCard(
                name: 'Adam',
                item: 'Sony A6400',
                date: '21 Jul 2025',
                status: 'Disewa',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
