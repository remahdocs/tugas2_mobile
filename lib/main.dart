import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('assets/icons/leaf.png'),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/icons/notification.png',
              width: 30,
              height: 30,
            ),
            onPressed: () {},
          )
        ],
        title: Text('APP'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Resty Mahaswari',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'How are you feeling today ?',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/icons/cool.png',
                    width: 50,
                    height: 50,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/icons/heart-eyes.png',
                    width: 50,
                    height: 50,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/icons/happy-face.png',
                    width: 50,
                    height: 50,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/icons/sad-face.png',
                    width: 50,
                    height: 50,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 24),
            _buildFeatureCard(),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Exercise',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See more >',
                  style: TextStyle(fontSize: 16, color: Colors.green),
                ),
              ],
            ),
            SizedBox(height: 16),
            _buildExerciseGrid(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildMoodIcon(String label, IconData icon, Color color) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          radius: 30,
          child: Icon(icon, color: color, size: 30),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 14)),
      ],
    );
  }

  Widget _buildFeatureCard() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Positive vibes',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Boost your mood with positive vibes',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.play_arrow, color: Colors.green),
                    SizedBox(width: 8),
                    Text('10 mins', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
          Image.asset('assets/images/ilustrasi.png', width: 100, height: 100),
        ],
      ),
    );
  }

  Widget _buildExerciseGrid() {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      childAspectRatio: 3.5,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      children: [
        _buildExerciseCard('Relaxation', Icons.self_improvement, Colors.purple),
        _buildExerciseCard('Meditation', Icons.spa, Colors.pink),
        _buildExerciseCard('Beathing', Icons.air, Colors.orange),
        _buildExerciseCard(
            'Yoga', Icons.self_improvement_outlined, Colors.blue),
      ],
    );
  }

  Widget _buildExerciseCard(String title, IconData icon, Color color) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(0.2),
            child: Icon(icon, color: color),
          ),
          SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: 0,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
