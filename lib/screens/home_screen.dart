import 'package:flutter/material.dart';
import 'package:nham24_ui/models/nham24_model.dart';
import 'package:nham24_ui/screens/buy_sell_screen.dart';
import 'package:nham24_ui/screens/food_screen.dart';
import 'package:nham24_ui/screens/shop_screen.dart';

import '../constand.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAppBar(),
              const SizedBox(height: 24),
              _buildBannerPromotion(),
              const SizedBox(height: 16),
              _buildCategory(),
              const SizedBox(height: 16),
              _buildGiftVoucher(),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'TRENDING NOW',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildTrendingNowItem(),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: _nham24.length,
                  itemBuilder: (context, index) {
                    var nham24 = _nham24[index];
                    return _buildNham24Item(nham24);
                  },
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "WHAT'S NEW?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildWhatNew(),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              _buildContactMenu(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  // Promotion
  Widget _buildBannerPromotion() {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _promotion.length,
        itemBuilder: (context, index) {
          var promot = _promotion[index];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: MediaQuery.sizeOf(context).height * 0.2,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(
                  promot,
                ),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }

  final List<String> _promotion = [
    'assets/home/promotion/1.jpg',
    'assets/home/promotion/2.jpg',
    'assets/home/promotion/3.jpg',
    'assets/home/promotion/4.jpg',
    'assets/home/promotion/5.jpg',
    'assets/home/promotion/6.jpg',
    'assets/home/promotion/7.jpg',
    'assets/home/promotion/8.jpg',
  ];
  // End Promotion

  // Trending now
  Widget _buildTrendingNowItem() {
    return SizedBox(
      height: 300,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: _trending.length,
        itemBuilder: (context, index) {
          var trending = _trending[index];
          return Container(
            height: 135,
            width: 135,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(trending),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }

  final List<String> _trending = [
    'assets/home/trending/1.jpg',
    'assets/home/trending/2.jpg',
    'assets/home/trending/3.jpg',
    'assets/home/trending/4.jpg',
    'assets/home/trending/5.jpg',
    'assets/home/trending/6.jpg',
    'assets/home/trending/7.jpg',
    'assets/home/trending/8.jpg',
    'assets/home/trending/9.jpg',
    'assets/home/trending/10.jpg',
    'assets/home/trending/11.jpg',
    'assets/home/trending/12.jpg',
    'assets/home/trending/13.jpg',
    'assets/home/trending/14.jpg',
    'assets/home/trending/15.jpg',
    'assets/home/trending/16.jpg',
    'assets/home/trending/17.jpg',
    'assets/home/trending/18.jpg',
    'assets/home/trending/19.jpg',
    'assets/home/trending/20.jpg',
    'assets/home/trending/21.jpg',
    'assets/home/trending/22.jpg',
    'assets/home/trending/23.jpg',
    'assets/home/trending/24.jpg',
    'assets/home/trending/25.jpg',
    'assets/home/trending/26.jpg',
  ];
  // End Trending now

  // BottomNav
  BottomNavigationBar _buildBottomNav() {
    return BottomNavigationBar(
      selectedItemColor: nPrimaryColor,
      unselectedItemColor: Colors.black,
      iconSize: 32,
      unselectedLabelStyle: const TextStyle(
        fontSize: 11,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      selectedLabelStyle: const TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w600,
      ),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'SEARCH'),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: 'HISTORY'),
        BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'INBOX'),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box_rounded), label: 'MY ACCOUNT'),
      ],
    );
  }
  // End BottomNav

  // Contact
  Widget _buildContactMenu() {
    return SizedBox(
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 0.5,
        ),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 80,
            width: MediaQuery.sizeOf(context).width * 0.5,
            decoration: BoxDecoration(
              color: nContainerColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(child: Text('CONTACT US')),
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/4370/4370113.png',
                  width: 40,
                  height: 40,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 80,
            width: MediaQuery.sizeOf(context).width * 0.5,
            decoration: BoxDecoration(
              color: nContainerColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(child: Text('START\nSELLING')),
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/9298/9298113.png',
                  width: 40,
                  height: 40,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 80,
            width: MediaQuery.sizeOf(context).width * 0.5,
            decoration: BoxDecoration(
              color: nContainerColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(child: Text('BECOME\nRIDER')),
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/5457/5457799.png',
                  width: 40,
                  height: 40,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 80,
            width: MediaQuery.sizeOf(context).width * 0.5,
            decoration: BoxDecoration(
              color: nContainerColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(child: Text('RATE US')),
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/1365/1365358.png',
                  width: 40,
                  height: 40,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  // End Contact

  // What's new
  Widget _buildWhatNew() {
    return SizedBox(
      height: 450,
      child: GridView(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 16,
          childAspectRatio: 1 / 0.8,
        ),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 185,
                width: 185,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage("assets/home/what'snew/1.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('Shop new delivery now!'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 185,
                width: 185,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage("assets/home/what'snew/2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('Shop new delivery now!'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 185,
                width: 185,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage("assets/home/what'snew/3.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text('Shop new delivery now!'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 185,
                width: 185,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage("assets/home/what'snew/4.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                '30% Discount for use nham24 bus',
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ],
      ),
    );
  }
  // End What's new

  // Nham24
  Widget _buildNham24Item(Nham24Model item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.title.toString(),
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 210,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(item.image.toString()),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            item.decoration.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  final List<Nham24Model> _nham24 = [
    Nham24Model(
      title: 'NHAM24 Fresh | Open 24/7',
      image: 'assets/home/nham24/1.jpg',
      decoration: 'NHAM24 Fresh | Open 24/7',
    ),
    Nham24Model(
      title: 'NHAM24 Travel',
      image: 'assets/home/nham24/5.jpg',
      decoration: 'Vireak Buntham Express is now avaalable in NHAM24 Travel ',
    ),
    Nham24Model(
      title: 'NHAM24 Travel',
      image: 'assets/home/nham24/3.jpg',
      decoration: 'Book you next trip with Bus, Ferry or Private Taxi.',
    ),
    Nham24Model(
      title: 'NHAM24 Express',
      image: 'assets/home/nham24/2.jpg',
      decoration: 'Send and reveive packages in minutes',
    ),
    Nham24Model(
      title: 'Join to Be the First to Know!',
      image: 'assets/home/nham24/4.jpg',
      decoration: 'Get the latest promotions from NHAM24 direct in Telegram',
    ),
  ];
  // End Nham24

  Widget _buildGiftVoucher() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 75,
            width: double.infinity,
            decoration: BoxDecoration(
              color: nPrimaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/1139/1139982.png',
                  width: 50,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'GIFT',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'CARD',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 75,
            width: double.infinity,
            decoration: BoxDecoration(
              color: nPrimaryColor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/12987/12987165.png',
                  width: 50,
                ),
                const Text(
                  'VOUCHER',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCategory() {
    return SizedBox(
      height: 250,
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 5,
          childAspectRatio: 1 / 0.8,
        ),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FoodScreen(),
                ),
              );
            },
            child: SizedBox(
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/5346/5346138.png',
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text('FOOD'),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShopScreen(),
                ),
              );
            },
            child: SizedBox(
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/1162/1162499.png',
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text('SHOP'),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BuySellScreen(),
                ),
              );
            },
            child: SizedBox(
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/1582/1582057.png',
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text('BUY & SELL'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 45,
                  width: 45,
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/128/9431/9431197.png',
                    width: 45,
                    fit: BoxFit.cover,
                  ),
                ),
                const Text('EXPRESS'),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 45,
                  width: 45,
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/128/1980/1980874.png',
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                const Text('CETRAL'),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/869/869457.png',
                  width: 45,
                  fit: BoxFit.cover,
                ),
                const Text('GROCERIES'),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/1614/1614997.png',
                  width: 45,
                  fit: BoxFit.cover,
                ),
                const Text('e-TICKET'),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/2290/2290155.png',
                  width: 45,
                  fit: BoxFit.cover,
                ),
                const Text('TAXI'),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/1321/1321122.png',
                  width: 45,
                  fit: BoxFit.cover,
                ),
                const Text('FLOWERS'),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/3097/3097218.png',
                  width: 45,
                  fit: BoxFit.cover,
                ),
                const Text('TRAVEL'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://nham24.com/assets/icons/new_logo.png',
                width: 130,
              ),
              const Spacer(),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'YOUR LOCATION',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'SenSok, Phnom Penh',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: nContainerColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.chat),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(Icons.add),
                  Text(
                    'Payment',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.favorite_border_outlined),
                  Text(
                    'Favorites',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.account_balance_wallet_outlined),
                  Text(
                    'wallet',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.workspace_premium_outlined),
                  Text(
                    'Points',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
