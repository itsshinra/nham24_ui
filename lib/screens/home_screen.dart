import 'package:flutter/material.dart';

import '../constand.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAppBar(),
              const SizedBox(height: 24),
              _buildBannerPromotion(),
              const SizedBox(height: 16),
              _buildCategory(context),
              const SizedBox(height: 16),
              _buildGiftVoucher(),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const Text(
                      'TRENDING NOW',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGiftVoucher() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 80,
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
            height: 80,
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

  Widget _buildCategory(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.26,
      child: GridView(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 5,
          childAspectRatio: 1 / 0.8,
        ),
        children: [
          SizedBox(
            height: 70,
            child: Column(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/2290/2290155.png',
                  width: 50,
                  fit: BoxFit.cover,
                ),
                const Text('TAXI'),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/2290/2290155.png',
                  width: 50,
                  fit: BoxFit.cover,
                ),
                const Text('TAXI'),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/2290/2290155.png',
                  width: 50,
                  fit: BoxFit.cover,
                ),
                const Text('TAXI'),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/2290/2290155.png',
                  width: 50,
                  fit: BoxFit.cover,
                ),
                const Text('TAXI'),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/2290/2290155.png',
                  width: 50,
                  fit: BoxFit.cover,
                ),
                const Text('TAXI'),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/2290/2290155.png',
                  width: 50,
                  fit: BoxFit.cover,
                ),
                const Text('TAXI'),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/2290/2290155.png',
                  width: 50,
                  fit: BoxFit.cover,
                ),
                const Text('TAXI'),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/2290/2290155.png',
                  width: 50,
                  fit: BoxFit.cover,
                ),
                const Text('TAXI'),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/2290/2290155.png',
                  width: 50,
                  fit: BoxFit.cover,
                ),
                const Text('TAXI'),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/128/2290/2290155.png',
                  width: 50,
                  fit: BoxFit.cover,
                ),
                const Text('TAXI'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBannerPromotion() {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.2,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: MediaQuery.sizeOf(context).height * 0.2,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                  image: NetworkImage(
                    'https://cdn6.aptoide.com/imgs/d/2/2/d22aaee0212a689cf5a9e5564baa04ca_fgraphic.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          );
        },
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
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'SenSok, Phnom Penh',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  color: nContainerColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.chat),
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
                  Icon(Icons.point_of_sale_outlined),
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
