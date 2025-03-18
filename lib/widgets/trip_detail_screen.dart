import 'package:flutter/material.dart';
import '../models/trip_model.dart';

class TripDetailScreen extends StatefulWidget {
  final Trip trip;

  const TripDetailScreen({super.key, required this.trip});

  @override
  TripDetailScreenState createState() => TripDetailScreenState();
}

class TripDetailScreenState extends State<TripDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final trip = widget.trip;

    return Scaffold(
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverAppBar(
                expandedHeight: 250,
                pinned: true,
                floating: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: PageView(
                    children: trip.photos
                        .map((photoUrl) =>
                            Image.network(photoUrl, fit: BoxFit.cover))
                        .toList(),
                  ),
                ),
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.share, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(kToolbarHeight),
                  child: Container(
                    color: Colors.white,
                    child: TabBar(
                      controller: _tabController,
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.blue,
                      tabs: const [
                        Tab(text: "Deskripsi"),
                        Tab(text: "Review"),
                        Tab(text: "Include"),
                        Tab(text: "T&C"),
                      ],
                    ),
                  ),
                ),
              )
            ],
            body: TabBarView(
              controller: _tabController,
              children: [
                _buildDescriptionSection(trip),
                _buildReviewSection(trip),
                _buildIncludeExcludeSection(trip),
                _buildTermsSection(trip),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('\$${trip.price.toStringAsFixed(2)}',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('${trip.pax} Pax',
                            style: const TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: const Text('Book Now'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDescriptionSection(Trip trip) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Text(trip.summary),
    );
  }

  Widget _buildReviewSection(Trip trip) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.star, color: Colors.orange),
              const SizedBox(width: 8),
              Text('${trip.rating} / 5.0',
                  style: const TextStyle(fontSize: 18)),
            ],
          ),
          const SizedBox(height: 16),
          const Text('Review section will be here...'),
        ],
      ),
    );
  }

  Widget _buildIncludeExcludeSection(Trip trip) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Includes',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ...trip.include.map((e) =>
              ListTile(leading: const Icon(Icons.check), title: Text(e))),
          const SizedBox(height: 12),
          const Text('Excludes',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ...trip.exclude.map((e) =>
              ListTile(leading: const Icon(Icons.close), title: Text(e))),
        ],
      ),
    );
  }

  Widget _buildTermsSection(Trip trip) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Text(trip.termsAndConditions),
    );
  }
}
