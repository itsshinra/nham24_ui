import 'package:flutter/material.dart';
import 'package:nham24_ui/constand.dart';

class BuySellScreen extends StatefulWidget {
  const BuySellScreen({super.key});

  @override
  State<BuySellScreen> createState() => _BuySellScreenState();
}

class _BuySellScreenState extends State<BuySellScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 5),
            _buildTextField(),
            _buildCategory(context),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Ads',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  Text(
                    'SHOW ALL',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 10,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1 / 1.4,
                ),
                itemBuilder: (context, index) {
                  return _buildItemContainer(context);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  BottomNavigationBar _buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: 1,
      iconSize: 32,
      selectedItemColor: nPrimaryColor,
      unselectedLabelStyle: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: nBackground,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined), label: 'All Ads'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline_outlined,
              size: 36,
            ),
            label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.store), label: 'MY ADS'),
      ],
    );
  }

  Widget _buildItemContainer(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: MediaQuery.sizeOf(context).width * 0.5,
      height: 290,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurStyle: BlurStyle.outer,
            blurRadius: 0.5,
            spreadRadius: 0.5,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://kohsantepheap.tv/wp-content/uploads/2020/07/8Q3A0210.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 5,
                left: 5,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                    '\$ 25',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.favorite_border_rounded),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'នំបញ្ចុកទឹកប្រហុក',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Sale',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8, bottom: 10),
            child: Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 18,
                ),
                Text(
                  'Takeo',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategory(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 2,
            blurStyle: BlurStyle.outer,
          ),
        ],
      ),
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1 / 0.5,
        ),
        itemCount: 9,
        itemBuilder: (context, index) {
          return SizedBox(
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
          );
        },
      ),
    );
  }

  Widget _buildTextField() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 3,
          )
        ],
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: Colors.white,
          filled: true,
          hintText: 'e.g. iPhone 8 Plus',
          hintStyle: TextStyle(color: Colors.grey),
          isDense: true,
          suffixIcon: Icon(
            Icons.search,
            size: 28,
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
      title: Text(
        'BUY & SELL',
        style: TextStyle(
          fontSize: 18,
          color: Colors.grey.shade600,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite,
            color: Colors.red,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.privacy_tip_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
        ),
      ],
    );
  }
}
