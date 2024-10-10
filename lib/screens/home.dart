import 'package:flutter/material.dart';
import 'package:swd_mobile/helpers/responsive.dart';
import 'package:swd_mobile/widgets/gradient_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: buildFloatingActionButton(),
      body: buildContents(context),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  DecoratedBox buildFloatingActionButton() {
    return DecoratedBox(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(239, 88, 88, 1),
            Color.fromRGBO(239, 160, 88, 1),
          ],
        ),
      ),
      child: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.transparent,
        elevation: 0,
        shape: const CircleBorder(),
        child: Image.asset("assets/images/Chat_Conversation_Circle.png"),
      ),
    );
  }

  Column buildContents(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 50,
            left: 25,
            right: 25,
            bottom: 15,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
          child: Column(
            children: [
              _buildHeading(),
              const SizedBox(height: 30),
              _buildWalletCard(),
              const SizedBox(height: 25),
              _buildActionButtons(),
              const SizedBox(height: 30),
              Container(
                height: 5,
                width: 48,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(233, 233, 233, 1),
                    borderRadius: BorderRadius.circular(104)),
              )
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 35),
                _buildQuickActions(),
                const SizedBox(height: 35),
                _buildNewsUpdateSection(context),
              ],
            ),
          ),
        ),
      ],
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
        buildVerticalDivider(),
        _buildActionButton("assets/images/send-icon.png", 'Transfer'),
        buildVerticalDivider(),
        _buildActionButton("assets/images/history-icon.png", 'History'),
      ],
    );
  }

  Container buildVerticalDivider() {
    return Container(
      width: 1,
      height: 20,
      color: Colors.black12,
    );
  }

  Widget _buildActionButton(String src, String label) {
    return Column(
      children: [
        Image.asset(src),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            color: Color.fromRGBO(75, 75, 75, 1),
          ),
        ),
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

  Widget _buildNewsUpdateSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'News & Update',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'View all',
              style: TextStyle(
                color: Color.fromRGBO(239, 88, 88, 1),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 140,
          width: Responsive.width(context),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              Image.asset("assets/images/news-image-1.png"),
              const SizedBox(width: 16),
              Image.asset("assets/images/news-image-2.png"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.only(
        bottom: 16,
        right: 16,
        left: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomBottomNavigationBarItem(
            icon: Image.asset('assets/images/House_01.png'),
            label: 'Home',
            isActive: true,
          ),
          CustomBottomNavigationBarItem(
            icon: Image.asset('assets/images/More_Grid_Big.png'),
            label: 'Services',
          ),
          CustomBottomNavigationBarItem(
            icon: Image.asset('assets/images/Arrow_Down_Up.png'),
            label: 'Statistics',
          ),
          CustomBottomNavigationBarItem(
            icon: Image.asset('assets/images/referrals.png'),
            label: 'Referrals',
          ),
          CustomBottomNavigationBarItem(
            icon: Image.asset('assets/images/Settings.png'),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class CustomBottomNavigationBarItem extends StatelessWidget {
  final Widget icon;
  final String label;
  final bool isActive;
  const CustomBottomNavigationBarItem({
    super.key,
    required this.icon,
    required this.label,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(width: 22, child: icon),
          const SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: isActive
                  ? Colors.white
                  : const Color.fromRGBO(105, 105, 105, 1),
            ),
          )
        ],
      ),
    );
  }
}
