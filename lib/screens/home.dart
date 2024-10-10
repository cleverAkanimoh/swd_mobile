import 'package:flutter/material.dart';
import 'package:swd_mobile/widgets/gradient_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 50, left: 25, right: 25, bottom: 30),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                )),
            child: Column(
              children: [
                _buildHeading(),
                const SizedBox(height: 20),
                _buildWalletCard(),
                const SizedBox(height: 20),
                _buildActionButtons(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                _buildQuickActions(),
                const SizedBox(height: 20),
                _buildNewsUpdateSection(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildHeading() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/user-icon.png'),
        const Text(
          'Welcome, Sam 👋🏽',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        Image.asset("assets/images/notification-icon.png"),
      ],
    );
  }

  Widget _buildWalletCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(239, 88, 88, 1),
            Color.fromRGBO(239, 160, 88, 1),
          ],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'WALLET BALANCE',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    'NGN 50,000',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: const BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          'Cashback',
                          style: TextStyle(color: Colors.black, fontSize: 10),
                        ),
                        SizedBox(width: 3),
                        GradientText(
                          text: "N341.20",
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 8),
              const Icon(
                Icons.visibility_off,
                color: Colors.white70,
                size: 14,
              ),
            ],
          ),
          Container(
            height: 69,
            width: 1,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(208, 78, 78, 0.6)),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, .2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'MONIEPOINT',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '8192017482',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      'Deposit Fee: N20',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                Image.asset("assets/images/copy-icon.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildActionButton("assets/images/Plus-icon.png", 'Top up'),
        Container(
          width: 1,
          height: 20,
          color: Colors.black12,
        ),
        _buildActionButton("assets/images/send-icon.png", 'Transfer'),
        Container(
          width: 1,
          height: 20,
          color: Colors.black12,
        ),
        _buildActionButton("assets/images/history-icon.png", 'History'),
      ],
    );
  }

  Widget _buildActionButton(String src, String label) {
    return Column(
      children: [
        Image.asset(src),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Colors.black)),
      ],
    );
  }

  Widget _buildQuickActions() {
    const quickActions = [
      {'icon': "assets/images/data-icon.png", 'label': 'Data'},
      {'icon': "assets/images/airtime-icon.png", 'label': 'Airtime'},
      {'icon': "assets/images/showmax-icon.png", 'label': 'Showmax'},
      {'icon': "assets/images/gift-cards-icon.png", 'label': 'Giftcards'},
      {'icon': "assets/images/betting-icon.png", 'label': 'Betting'},
      {'icon': "assets/images/electricity-icon.png", 'label': 'Electricity'},
      {'icon': "assets/images/tv-icon.png", 'label': 'TV/Cable'},
      {'icon': "assets/images/e-pin-icon.png", 'label': 'E-Pin'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Quick Actions",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 16),
        GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemCount: quickActions.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(40, 40, 40, 1),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(quickActions[index]['icon'] as String),
                  const SizedBox(height: 8),
                  Text(quickActions[index]['label'] as String,
                      style: const TextStyle(color: Colors.white70)),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildNewsUpdateSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'News & Update',
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
            Text(
              'View all',
              style: TextStyle(color: Colors.redAccent),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildNewsCard(),
              const SizedBox(width: 16),
              _buildNewsCard(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNewsCard() {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
        child: Text(
          'News content',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.redAccent,
      unselectedItemColor: Colors.white70,
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Services'),
        BottomNavigationBarItem(
            icon: Icon(Icons.show_chart), label: 'Statistics'),
        BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard), label: 'Referrals'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ],
    );
  }
}
