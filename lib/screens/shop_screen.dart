import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nham24_ui/constand.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
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

  // All store
  Widget _buildAllStores() {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return _builAllStoreItem(context);
        },
      ),
    );
  }

  Widget _builAllStoreItem(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: SizedBox(
        height: 210,
        width: MediaQuery.sizeOf(context).width * 0.75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgtX_uCQ_k0BvIAqyYcdrznL0fuD8-0HyVXZYkASwWbm8q5iq-5oQiFDEJcq0xWVqUoRE&usqp=CAU',
                width: double.infinity,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            const Text('Yellow Cab Pizza Toul Tompoung'),
            const Row(
              children: [
                Text(
                  'Free Delivery ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.pink,
                  ),
                ),
                Text(
                  ' ~ 60Mins',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Divider(color: Colors.grey.shade300),
          ],
        ),
      ),
    );
  }
  // Free delivery

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
        itemBuilder: (context, index) {
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
                  const Text('BAKERY & \nCAKE'),
                  Image.network(
                    'https://cdn-icons-png.flaticon.com/128/11543/11543841.png',
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

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
                itemBuilder: (context, index) {
                  return _builFreeDeliveryItem(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _builFreeDeliveryItem(BuildContext context) {
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
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgtX_uCQ_k0BvIAqyYcdrznL0fuD8-0HyVXZYkASwWbm8q5iq-5oQiFDEJcq0xWVqUoRE&usqp=CAU',
                width: double.infinity,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            const Text('Yellow Cab Pizza Toul Tompoung'),
            const Row(
              children: [
                Text(
                  'Free Delivery ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.pink,
                  ),
                ),
                Text(
                  ' ~ 60Mins',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.amber,
                    ),
                    Text(
                      '4.7',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.amber,
                      ),
                    ),
                    Text(
                      '(1,196)',
                      style: TextStyle(
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
  // Free delivery

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
                itemBuilder: (context, index) {
                  return _builNewOnNham24Item(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _builNewOnNham24Item(BuildContext context) {
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
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgtX_uCQ_k0BvIAqyYcdrznL0fuD8-0HyVXZYkASwWbm8q5iq-5oQiFDEJcq0xWVqUoRE&usqp=CAU',
                width: double.infinity,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            const Text('Yellow Cab Pizza Toul Tompoung'),
            const Row(
              children: [
                Icon(
                  Icons.motorcycle,
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  '\$5.15',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  ' ~ 60Mins',
                  style: TextStyle(
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
  // End New on Nham 24

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
                itemBuilder: (context, index) {
                  return _builSpecialOffersItem(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _builSpecialOffersItem(BuildContext context) {
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
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgtX_uCQ_k0BvIAqyYcdrznL0fuD8-0HyVXZYkASwWbm8q5iq-5oQiFDEJcq0xWVqUoRE&usqp=CAU',
                width: double.infinity,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            const Text('Yellow Cab Pizza Toul Tompoung'),
            const Row(
              children: [
                Icon(
                  Icons.motorcycle,
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  '\$5.15',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  ' ~ 60Mins',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.amber,
                    ),
                    Text(
                      '4.7',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.amber,
                      ),
                    ),
                    Text(
                      '(1,196)',
                      style: TextStyle(
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
  // End Special Offer

  // Under Feature Store
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
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgtX_uCQ_k0BvIAqyYcdrznL0fuD8-0HyVXZYkASwWbm8q5iq-5oQiFDEJcq0xWVqUoRE&usqp=CAU'),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

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
        itemBuilder: (context, index) {
          return const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgtX_uCQ_k0BvIAqyYcdrznL0fuD8-0HyVXZYkASwWbm8q5iq-5oQiFDEJcq0xWVqUoRE&usqp=CAU',
            ),
          );
        },
      ),
    );
  }
  // End Feature Stores

  // Promotion slide
  Widget _buildBannerPromotion() {
    return SizedBox(
      height: 200,
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
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }

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
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
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
              SizedBox(width: 26),
              Column(
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
            ],
          ),
        ],
      ),
    );
  }
}
