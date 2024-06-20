import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nham24_ui/constand.dart';
import 'package:nham24_ui/models/free_deli_model.dart';
import 'package:nham24_ui/models/special_offer_model.dart';

import '../models/food_menu_model.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
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
              const SizedBox(height: 24),
              _buildFeaturestoreMain(),
              const SizedBox(height: 24),
              _buildTrendingNowItem(),
              const SizedBox(height: 24),
              _buildSpecialOfferMain(),
              const SizedBox(height: 24),
              _buildNewOnNham24Main(),
              const SizedBox(height: 24),
              _buildFreeDeliveryMain(),
              const SizedBox(height: 24),
              _buildFoodMenu(),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'ALL STORES',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              _buildAllStores(),
            ],
          ),
        ),
      ),
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
                image: AssetImage(promot),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }

  final List<String> _promotion = [
    'assets/foods/promotion/1.jpg',
    'assets/foods/promotion/2.jpg',
    'assets/foods/promotion/3.jpg',
    'assets/foods/promotion/4.jpg',
    'assets/foods/promotion/5.jpg',
    'assets/foods/promotion/6.jpg',
    'assets/foods/promotion/7.jpg',
    'assets/foods/promotion/8.jpg',
  ];
  // End Promotion

  // Feature Stores
  Widget _buildFeaturestoreMain() {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'FEATURED STORES',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          _buildFeatureStores(),
        ],
      ),
    );
  }

  Widget _buildFeatureStores() {
    return SizedBox(
      height: 170,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 22,
        ),
        itemCount: _fstore.length,
        itemBuilder: (context, index) {
          var fstore = _fstore[index];
          return CircleAvatar(
            backgroundColor: Colors.grey.shade300,
            radius: 50,
            backgroundImage: AssetImage(fstore),
          );
        },
      ),
    );
  }

  final List<String> _fstore = [
    'assets/foods/store/1.jpg',
    'assets/foods/store/2.jpg',
    'assets/foods/store/3.jpg',
    'assets/foods/store/4.jpg',
    'assets/foods/store/5.jpg',
    'assets/foods/store/6.jpg',
    'assets/foods/store/7.jpg',
    'assets/foods/store/8.jpg',
    'assets/foods/store/9.jpg',
    'assets/foods/store/10.jpg',
    'assets/foods/store/11.jpg',
    'assets/foods/store/12.jpg',
    'assets/foods/store/13.jpg',
    'assets/foods/store/3.png',
    'assets/foods/store/4.png',
    'assets/foods/store/5.png',
    'assets/foods/store/6.png',
    'assets/foods/store/7.png',
    'assets/foods/store/8.png',
    'assets/foods/store/9.png',
    'assets/foods/store/10.png',
    'assets/foods/store/11.png',
  ];
  // End Feature Stores

  // Trending
  Widget _buildTrendingNowItem() {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: SizedBox(
        height: 280,
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
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(trending),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
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
  // End Trending

  // Special Offer
  Widget _buildSpecialOfferMain() {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'SPECIAL OFFERS',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'SHOW ALL',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Image and title ....
            SizedBox(
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _special.length,
                itemBuilder: (context, index) {
                  var special = _special[index];
                  return _builSpecialOffersItem(context, special);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _builSpecialOffersItem(
      BuildContext context, SpecialOfferModel special) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: SizedBox(
        height: 170,
        width: MediaQuery.sizeOf(context).width * 0.75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                special.image.toString(),
                width: double.infinity,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Text(special.title.toString()),
            Row(
              children: [
                const Icon(
                  Icons.motorcycle,
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  '\$${special.price}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  ' ~ ${special.duration}Mins',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 10),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.amber,
                    ),
                    Text(
                      special.rate.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.amber,
                      ),
                    ),
                    Text(
                      '(${special.review})',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  final List<SpecialOfferModel> _special = [
    SpecialOfferModel(
      image: 'assets/foods/newnham24/1.jpg',
      title: 'Bootst Juice Lucky Pavilion',
      price: '5',
      duration: '55',
      rate: '4.7',
      review: '315',
    ),
    SpecialOfferModel(
      image: 'assets/foods/newnham24/2.jpg',
      title: "Carl's Jr. Boeng Keng Kang",
      price: '5.3',
      duration: '70',
      rate: '4.5',
      review: '3274',
    ),
    SpecialOfferModel(
      image: 'assets/foods/newnham24/3.jpg',
      title: 'Yellow Cab Pizza (Toul Tompoung)',
      price: '5.15',
      duration: '60',
      rate: '4.7',
      review: '1197',
    ),
    SpecialOfferModel(
      image: 'assets/foods/newnham24/4.jpg',
      title: 'Luna Prime - TK Rounabout',
      price: '3.35',
      duration: '50',
      rate: '4.6',
      review: '1553',
    ),
    SpecialOfferModel(
      image: 'assets/foods/newnham24/6.jpg',
      title: 'Kungfu Kitchen Lucky Pavilion',
      price: '5',
      duration: '60',
      rate: '4.6',
      review: '744',
    ),
    SpecialOfferModel(
      image: 'assets/foods/newnham24/7.jpg',
      title: 'Texas Chicken BKK',
      price: '5.3',
      duration: '65',
      rate: '4.5',
      review: '2983',
    ),
    SpecialOfferModel(
      image: 'assets/foods/newnham24/8.jpg',
      title: 'Brown Roastery Damrey Park',
      price: '1.05',
      duration: '35',
      rate: '4.6',
      review: '552',
    ),
  ];
  // End Special Offer

  // New on nham24
  Widget _buildNewOnNham24Main() {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'NEW ON NHMA24',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'SHOW ALL',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Image and title ....
            SizedBox(
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _special.length,
                itemBuilder: (context, index) {
                  var item = _special[index];
                  return _builNewOnNham24Item(context, item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _builNewOnNham24Item(BuildContext context, SpecialOfferModel item) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: SizedBox(
        height: 170,
        width: MediaQuery.sizeOf(context).width * 0.75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                item.image.toString(),
                width: double.infinity,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Text(item.title.toString()),
            Row(
              children: [
                const Icon(
                  Icons.motorcycle,
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  '\$${item.price}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  ' ~ ${item.duration}Mins',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 10),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.amber,
                    ),
                    Text(
                      item.rate.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.amber,
                      ),
                    ),
                    Text(
                      '(${item.review})',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  // End New on Nham 24

  // Free delivery
  Widget _buildFreeDeliveryMain() {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'FREE DELIVERY',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'SHOW ALL',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Image and title ....
            SizedBox(
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _freeDeli.length,
                itemBuilder: (context, index) {
                  var freeDeli = _freeDeli[index];
                  return _builFreeDeliveryItem(context, freeDeli);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _builFreeDeliveryItem(BuildContext context, FreeDeliModel freeDeli) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: SizedBox(
        height: 170,
        width: MediaQuery.sizeOf(context).width * 0.75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                freeDeli.image.toString(),
                width: double.infinity,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Text(freeDeli.title.toString()),
            Row(
              children: [
                const Text(
                  'Free Delivery ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.pink,
                  ),
                ),
                Text(
                  ' ~ ${freeDeli.duration}Mins',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  final List<FreeDeliModel> _freeDeli = [
    FreeDeliModel(
      image: 'assets/foods/free/1.jpg',
      title: 'Cafe Amazon Hanoi Blvd',
      duration: '25',
    ),
    FreeDeliModel(
      image: 'assets/foods/free/2.jpg',
      title: 'Pong Santhormok',
      duration: '25',
    ),
    FreeDeliModel(
      image: 'assets/foods/free/3.jpg',
      title: 'Brown Aeon Mall Sen Sok City',
      duration: '25',
    ),
    FreeDeliModel(
      image: 'assets/foods/free/4.jpg',
      title: 'Gyu Kaku Japanese BBQ TK',
      duration: '30',
    ),
    FreeDeliModel(
      image: 'assets/foods/free/5.jpg',
      title: 'Sushi Chef Toul Kork',
      duration: '45',
    ),
    FreeDeliModel(
      image: 'assets/foods/free/6.jpg',
      title: '% Arabica Phnom Penh',
      duration: '45',
    ),
    FreeDeliModel(
      image: 'assets/foods/free/7.jpg',
      title: 'Domnork Toul Kork',
      duration: '25',
    ),
  ];
  // End Free delivery

  // Food Menu
  Widget _buildFoodMenu() {
    return SizedBox(
      height: 200,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.55,
        ),
        itemCount: _foodMenu.length,
        itemBuilder: (context, index) {
          var foodMenu = _foodMenu[index];
          return Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: nContainerColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(foodMenu.title.toString()),
                  Image.asset(foodMenu.image.toString()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  final List<FoodMenuModel> _foodMenu = [
    FoodMenuModel(
      title: 'FAST FOOD',
      image: 'assets/foods/category/1.png',
    ),
    FoodMenuModel(
      title: 'COFFEE',
      image: 'assets/foods/category/2.png',
    ),
    FoodMenuModel(
      title: 'STREET FOOD',
      image: 'assets/foods/category/3.png',
    ),
    FoodMenuModel(
      title: 'HEALTHY',
      image: 'assets/foods/category/4.png',
    ),
    FoodMenuModel(
      title: 'HALAL',
      image: 'assets/foods/category/5.png',
    ),
    FoodMenuModel(
      title: 'BURGER',
      image: 'assets/foods/category/6.png',
    ),
    FoodMenuModel(
      title: 'DESSERT',
      image: 'assets/foods/category/7.png',
    ),
    FoodMenuModel(
      title: 'INDIAN',
      image: 'assets/foods/category/8.png',
    ),
    FoodMenuModel(
      title: 'PIZZA',
      image: 'assets/foods/category/9.png',
    ),
    FoodMenuModel(
      title: 'PORRIDGE',
      image: 'assets/foods/category/10.png',
    ),
    FoodMenuModel(
      title: 'VEGETARIAN',
      image: 'assets/foods/category/11.png',
    ),
    FoodMenuModel(
      title: 'KHMER',
      image: 'assets/foods/category/13.png',
    ),
    FoodMenuModel(
      title: 'JAPANESE',
      image: 'assets/foods/category/16.png',
    ),
    FoodMenuModel(
      title: 'MEXICAN',
      image: 'assets/foods/category/17.png',
    ),
    FoodMenuModel(
      title: 'SNACKS',
      image: 'assets/foods/category/14.png',
    ),
    FoodMenuModel(
      title: 'STEAK',
      image: 'assets/foods/category/15.png',
    ),
    FoodMenuModel(
      title: 'SALADS',
      image: 'assets/foods/category/12.png',
    ),
    FoodMenuModel(
      title: 'SEAFOOD',
      image: 'assets/foods/category/18.png',
    ),
    FoodMenuModel(
      title: 'BBQ',
      image: 'assets/foods/category/19.png',
    ),
    FoodMenuModel(
      title: 'BARKERY\nCAKE',
      image: 'assets/foods/category/20.png',
    ),
    FoodMenuModel(
      title: 'BREAKFAST',
      image: 'assets/foods/category/21.png',
    ),
    FoodMenuModel(
      title: 'BUBBLE TEA',
      image: 'assets/foods/category/22.png',
    ),
    FoodMenuModel(
      title: 'CHINESE',
      image: 'assets/foods/category/23.png',
    ),
  ];
  // End food menu

  // All store
  Widget _buildAllStores() {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _allStore.length,
        itemBuilder: (context, index) {
          var store = _allStore[index];
          return _builAllStoreItem(context, store);
        },
      ),
    );
  }

  Widget _builAllStoreItem(BuildContext context, SpecialOfferModel item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: SizedBox(
        height: 230,
        width: MediaQuery.sizeOf(context).width * 0.75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                item.image.toString(),
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Text(item.title.toString()),
            Row(
              children: [
                const Text(
                  'Free Delivery ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.pink,
                  ),
                ),
                Text(
                  ' ~ ${item.duration}Mins',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 10),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.amber,
                    ),
                    Text(
                      item.rate.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.amber,
                      ),
                    ),
                    Text(
                      '(${item.review})',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(color: Colors.grey.shade300),
          ],
        ),
      ),
    );
  }

  final List<SpecialOfferModel> _allStore = [
    SpecialOfferModel(
      image: 'assets/foods/newnham24/1.jpg',
      title: 'Bootst Juice Lucky Pavilion',
      price: '5',
      duration: '55',
      rate: '4.7',
      review: '315',
    ),
    SpecialOfferModel(
      image: 'assets/foods/newnham24/2.jpg',
      title: "Carl's Jr. Boeng Keng Kang",
      price: '5.3',
      duration: '70',
      rate: '4.5',
      review: '3274',
    ),
    SpecialOfferModel(
      image: 'assets/foods/newnham24/3.jpg',
      title: 'Yellow Cab Pizza (Toul Tompoung)',
      price: '5.15',
      duration: '60',
      rate: '4.7',
      review: '1197',
    ),
    SpecialOfferModel(
      image: 'assets/foods/newnham24/4.jpg',
      title: 'Luna Prime - TK Rounabout',
      price: '3.35',
      duration: '50',
      rate: '4.6',
      review: '1553',
    ),
    SpecialOfferModel(
      image: 'assets/foods/newnham24/6.jpg',
      title: 'Kungfu Kitchen Lucky Pavilion',
      price: '5',
      duration: '60',
      rate: '4.6',
      review: '744',
    ),
    SpecialOfferModel(
      image: 'assets/foods/newnham24/7.jpg',
      title: 'Texas Chicken BKK',
      price: '5.3',
      duration: '65',
      rate: '4.5',
      review: '2983',
    ),
    SpecialOfferModel(
      image: 'assets/foods/newnham24/8.jpg',
      title: 'Brown Roastery Damrey Park',
      price: '1.05',
      duration: '35',
      rate: '4.6',
      review: '552',
    ),
    SpecialOfferModel(
      image: 'assets/foods/free/1.jpg',
      title: 'Cafe Amazon Hanoi Blvd',
      price: '1.05',
      duration: '35',
      rate: '4.6',
      review: '552',
    ),
    SpecialOfferModel(
      image: 'assets/foods/free/2.jpg',
      title: 'Pong Santhormok',
      price: '1.05',
      duration: '35',
      rate: '4.6',
      review: '552',
    ),
    SpecialOfferModel(
      image: 'assets/foods/free/3.jpg',
      title: 'Brown Aeon Mall Sen Sok City',
      price: '1.05',
      duration: '35',
      rate: '4.6',
      review: '552',
    ),
    SpecialOfferModel(
      image: 'assets/foods/free/4.jpg',
      title: 'Gyu Kaku Japanese BBQ TK',
      price: '1.05',
      duration: '35',
      rate: '4.6',
      review: '552',
    ),
    SpecialOfferModel(
      image: 'assets/foods/free/5.jpg',
      title: 'Sushi Chef Toul Kork',
      price: '1.05',
      duration: '35',
      rate: '4.6',
      review: '552',
    ),
    SpecialOfferModel(
      image: 'assets/foods/free/6.jpg',
      title: '% Arabica Phnom Penh',
      price: '1.05',
      duration: '35',
      rate: '4.6',
      review: '552',
    ),
  ];

  // App Bar
  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_new_rounded),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.search_normal_1,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Iconsax.setting_45),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
                children: [
                  Icon(Iconsax.note),
                  Text(
                    'Re-Order',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 26),
              const Column(
                children: [
                  Icon(Iconsax.heart),
                  Text(
                    'Favorites',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 26),
              Column(
                children: [
                  SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/128/1980/1980874.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text(
                    'CENTAL',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
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
