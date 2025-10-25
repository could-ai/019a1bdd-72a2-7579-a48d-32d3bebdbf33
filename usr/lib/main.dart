import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Property Details',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const PropertyDetailsPage(),
    );
  }
}

class PropertyDetailsPage extends StatelessWidget {
  const PropertyDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Property for Sale in Ooty'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(context),
            const SizedBox(height: 16),
            _buildKeyFeatures(context),
            const SizedBox(height: 16),
            _buildAmenities(context),
            const SizedBox(height: 16),
            _buildPricing(context),
            const SizedBox(height: 24),
            _buildContactInfo(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Icon(
            Icons.landscape,
            size: 100,
            color: Colors.teal,
          ),
          const SizedBox(height: 8),
          Text(
            '58 Cents Flat Tea Garden',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            'Ooty, Nilgiris, Tamilnadu',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildKeyFeatures(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Key Features',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold)),
            const Divider(),
            _buildFeatureItem(Icons.location_on, '13 km away from Ooty'),
            _buildFeatureItem(Icons.edit_road, 'Motorable road'),
            _buildFeatureItem(Icons.water_drop, 'Water Source available'),
            _buildFeatureItem(Icons.landscape, 'High elevation & Scenic views'),
            _buildFeatureItem(Icons.business, 'Suitable for Commercial'),
            _buildFeatureItem(Icons.verified, 'Clear titles & Single sign'),
          ],
        ),
      ),
    );
  }

  Widget _buildAmenities(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nearby Amenities (within 1 km)',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold)),
            const Divider(),
            _buildFeatureItem(Icons.hotel, 'Hospitality & Hotels'),
            _buildFeatureItem(Icons.account_balance, 'Banking & ATM'),
            _buildFeatureItem(Icons.shopping_cart, 'Super market'),
            _buildFeatureItem(Icons.school, 'Schools'),
            _buildFeatureItem(Icons.medical_services, 'Medicals'),
            _buildFeatureItem(Icons.temple_hindu, 'Temple'),
          ],
        ),
      ),
    );
  }

  Widget _buildPricing(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Pricing Details',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold)),
            const Divider(),
            _buildFeatureItem(Icons.price_check, 'Offer: ₹90,000 per cent'),
            _buildFeatureItem(
                Icons.price_change, 'Market Price: ₹1.25 lacs per cent'),
            const SizedBox(height: 8),
            const Text(
              'No negotiation on the offer price.',
              style: TextStyle(fontStyle: FontStyle.italic, color: Colors.red),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('For Enquiries',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Mr. Suresh Kumar', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.call),
                  label: const Text('Call'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                  ),
                ),
                const SizedBox(width: 16),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.email),
                  label: const Text('Email'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text('Phone: 090479 55853 / 8870855853'),
            const Text('Email: vsureshkumar6681@gmail.com'),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.teal, size: 20),
          const SizedBox(width: 12),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}
