import 'package:flutter/material.dart';
import 'package:nham24_ui/constand.dart';
import 'package:nham24_ui/models/buyandsell_model.dart';
import 'package:nham24_ui/models/category_model.dart';

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
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1 / 1.4,
                ),
                itemCount: _buySell.length,
                itemBuilder: (context, index) {
                  var item = _buySell[index];
                  return _buildItemContainer(context, item);
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

  // Item Cotainer
  Widget _buildItemContainer(BuildContext context, BuySellModel item) {
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
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      item.image.toString(),
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
                  child: Text(
                    '\$ ${item.price.toString()}',
                    style: const TextStyle(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              item.title.toString(),
              style: const TextStyle(
                fontSize: 16,
              ),
              overflow: TextOverflow.ellipsis,
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
          Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 18,
                ),
                Text(
                  item.location.toString(),
                  style: const TextStyle(
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

  final List<BuySellModel> _buySell = [
    BuySellModel(
      image: 'assets/buy_sell/buysell/1.jpg',
      title: 'Vespa LX125',
      price: '1580',
      location: 'Phnom Penh',
    ),
    BuySellModel(
      image: 'assets/buy_sell/buysell/2.jpg',
      title:
          'Sales Chevy Malibu Year 2021 Full Option primier 50000km New Booking Now Specials Prices',
      price: '10000',
      location: 'Phnom Penh',
    ),
    BuySellModel(
      image: 'assets/buy_sell/buysell/3.jpg',
      title: 'Kids Smart Watch Sim Card',
      price: '150',
      location: 'Phnom Penh',
    ),
    BuySellModel(
      image: 'assets/buy_sell/buysell/4.jpg',
      title: 'Jbl boombox 3 Zin',
      price: '170',
      location: 'Phnom Penh',
    ),
    BuySellModel(
      image: 'assets/buy_sell/buysell/5.jpg',
      title: 'Zinvo Blade Cobra Gold',
      price: '80',
      location: 'Phnom Penh',
    ),
    BuySellModel(
      image: 'assets/buy_sell/buysell/6.jpg',
      title: 'MacBook (Retina, 12-inch, Early 2015',
      price: '550',
      location: 'Phnom Penh',
    ),
    BuySellModel(
      image: 'assets/buy_sell/buysell/7.jpg',
      title: 'Drone in box',
      price: '100',
      location: 'Phnom Penh',
    ),
    BuySellModel(
      image: 'assets/buy_sell/buysell/8.jpg',
      title:
          'i-watch 1 stainless steel 38mm នៅស្អាត98% free ខ្សែសាកសុីន ដម្លៃ 45\$ ទីតាំងភ្នំពេញ',
      price: '45',
      location: 'Phnom Penh',
    ),
    BuySellModel(
      image: 'assets/buy_sell/buysell/9.jpg',
      title: 'Dell XPS 13 -9310 2 in 1 -CPU : Core i7- (11th Gen)',
      price: '850',
      location: 'Phnom Penh',
    ),
    BuySellModel(
      image: 'assets/buy_sell/buysell/10.jpg',
      title:
          'ឈុតមួយទឹកជប៉ុនស្អាតដូចថ្មី CANON EOS 600D LENS 18-55 IS / 75-300 II',
      price: '1500',
      location: 'Phnom Penh',
    ),
    BuySellModel(
      image: 'assets/buy_sell/buysell/11.jpg',
      title: 'Pc 1set VGA 1660 6GB I5 10TH',
      price: '350',
      location: 'Phnom Penh',
    ),
    BuySellModel(
      image: 'assets/buy_sell/buysell/12.jpg',
      title: 'Laptop ដើរល្អទាំងអស់ ថ្មកាន់ លក់ឡៃឡុង 80\$',
      price: '80',
      location: 'Phnom Penh',
    ),
    BuySellModel(
      image: 'assets/buy_sell/buysell/13.jpg',
      title: 'Camry XLE hybrid 2012full',
      price: '21500',
      location: 'Phnom Penh',
    ),
    BuySellModel(
      image: 'assets/buy_sell/buysell/14.jpg',
      title: 'FORD RANGER WILDTRAK 2016',
      price: '18800',
      location: 'Phnom Penh',
    ),
  ];

  // Categories
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
        itemCount: _category.length,
        itemBuilder: (context, index) {
          var item = _category[index];
          return SizedBox(
            height: 70,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 45,
                  width: 45,
                  child: Image.asset(
                    item.image.toString(),
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(item.title.toString()),
              ],
            ),
          );
        },
      ),
    );
  }

  final List<CategoryModel> _category = [
    CategoryModel(
      image: 'assets/buy_sell/category/1.png',
      title: 'Hobbies',
    ),
    CategoryModel(
      image: 'assets/buy_sell/category/2.png',
      title: 'Vehicles',
    ),
    CategoryModel(
      image: 'assets/buy_sell/category/3.png',
      title: 'Services',
    ),
    CategoryModel(
      image: 'assets/buy_sell/category/4.png',
      title: 'Fashion',
    ),
    CategoryModel(
      image: 'assets/buy_sell/category/5.png',
      title: 'Electronics',
    ),
    CategoryModel(
      image: 'assets/buy_sell/category/6.png',
      title: 'Food Supplies',
    ),
    CategoryModel(
      image: 'assets/buy_sell/category/7.png',
      title: 'Real Estate',
    ),
    CategoryModel(
      image: 'assets/buy_sell/category/8.png',
      title: 'Jobs',
    ),
    CategoryModel(
      image: 'assets/buy_sell/category/9.png',
      title: 'Babies & Toys',
    ),
  ];

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
