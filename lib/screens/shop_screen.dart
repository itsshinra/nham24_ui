import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nham24_ui/constand.dart';
import 'package:nham24_ui/models/category_model.dart';
import 'package:nham24_ui/models/free_deli_model.dart';
import 'package:nham24_ui/models/special_offer_model.dart';

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

  // Promotion slide
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
    'assets/shop/promotion/1.jpg',
    'assets/shop/promotion/2.jpg',
    'assets/shop/promotion/3.jpg',
    'assets/shop/promotion/4.jpg',
    'assets/shop/promotion/5.jpg',
    'assets/shop/promotion/6.jpg',
  ];
  // End Promotion slide

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
        itemCount: _featureStore.length,
        itemBuilder: (context, index) {
          var feature = _featureStore[index];
          return CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(feature),
          );
        },
      ),
    );
  }

  final List<String> _featureStore = [
    'assets/shop/featurestore/1.jpg',
    'assets/shop/featurestore/2.jpg',
    'assets/shop/featurestore/3.jpg',
    'assets/shop/featurestore/4.jpg',
    'assets/shop/featurestore/5.jpg',
    'assets/shop/featurestore/6.jpg',
    'assets/shop/featurestore/7.jpg',
    'assets/shop/featurestore/8.jpg',
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
                color: Colors.grey.shade200,
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
    'assets/shop/trending/1.jpg',
    'assets/shop/trending/2.jpg',
    'assets/shop/trending/3.jpg',
    'assets/shop/trending/4.jpg',
    'assets/shop/trending/5.jpg',
    'assets/shop/trending/6.jpg',
    'assets/shop/trending/7.jpg',
    'assets/shop/trending/8.jpg',
    'assets/shop/trending/9.jpg',
    'assets/shop/trending/10.jpg',
    'assets/shop/trending/11.jpg',
    'assets/shop/trending/12.jpg',
    'assets/shop/trending/13.jpg',
    'assets/shop/trending/14.jpg',
  ];
  // End Tending

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
                itemCount: _special.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var item = _special[index];
                  return _builSpecialOffersItem(context, item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _builSpecialOffersItem(BuildContext context, SpecialOfferModel item) {
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

  final List<SpecialOfferModel> _special = [
    SpecialOfferModel(
      image: 'assets/shop/special/21.jpg',
      title: 'Mother Nature / មាតាធម្មជាតិ',
      price: '3.85',
      duration: '45',
      rate: '4.2',
      review: '312',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/22.jpg',
      title: 'I Need This',
      price: '2.65',
      duration: '40',
      rate: '3.8',
      review: '112',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/23.jpg',
      title: 'SP Watch Shop',
      price: '3.55',
      duration: '40',
      rate: '4.8',
      review: '220',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/24.jpg',
      title: 'Za Collection',
      price: '3.55',
      duration: '40',
      rate: '4.2',
      review: '312',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/25.jpg',
      title: 'Clothes Store / ហាងលក់សម្លៀកបំពាក់',
      price: '2.8',
      duration: '40',
      rate: '4.5',
      review: '266',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/26.jpg',
      title: 'UCare Pharmacy Tk Star',
      price: '3.55',
      duration: '40',
      rate: '5.0',
      review: '115',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/27.jpg',
      title: 'Inh Inh Mart Pharmacy / ឱសថស្ថាន អុីញ អុីញ',
      price: '3.4',
      duration: '40',
      rate: '4.7',
      review: '512',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/28.jpg',
      title: 'We Buy One',
      price: '3.1',
      duration: '45',
      rate: '3.0',
      review: '312',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/29.jpg',
      title: 'Beauty Skin',
      price: '3.55',
      duration: '40',
      rate: '3.9',
      review: '312',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/30.jpg',
      title: 'Pharma Assist Pharmacy / ឱសថស្ថាន ហ្វាម៉ា',
      price: '3.4',
      duration: '45',
      rate: '5.0',
      review: '715',
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
                itemCount: _newOnNham24.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var item = _newOnNham24[index];
                  return _builNewOnNham24Item(context, item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _builNewOnNham24Item(BuildContext context, FreeDeliModel item) {
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
                const Text(
                  '\$5.15',
                  style: TextStyle(
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
              ],
            ),
          ],
        ),
      ),
    );
  }

  final List<FreeDeliModel> _newOnNham24 = [
    FreeDeliModel(
      image: 'assets/shop/new/11.jpg',
      title: 'Tob Eivean / តូបអីវ៉ាន់',
      duration: '45',
    ),
    FreeDeliModel(
      image: 'assets/shop/new/12.jpg',
      title: 'Nakamura',
      duration: '45',
    ),
    FreeDeliModel(
      image: 'assets/shop/new/13.jpg',
      title: 'BabyWorld Toul Kork / បេប៊ីវើល ទួលគោក',
      duration: '40',
    ),
    FreeDeliModel(
      image: 'assets/shop/new/14.jpg',
      title: 'Megadis Store',
      duration: '40',
    ),
    FreeDeliModel(
      image: 'assets/shop/new/15.jpg',
      title: 'Diamond Bedding',
      duration: '30',
    ),
    FreeDeliModel(
      image: 'assets/shop/new/16.jpg',
      title: 'WiZ Smart Lighting Cambodia',
      duration: '25',
    ),
    FreeDeliModel(
      image: 'assets/shop/new/17.jpg',
      title: 'SM Natural Gemstone / SM ត្បូងធម្មជាតិ',
      duration: '50',
    ),
    FreeDeliModel(
      image: 'assets/shop/new/18.jpg',
      title: 'KS Pro Japan',
      duration: '45',
    ),
    FreeDeliModel(
      image: 'assets/shop/new/19.jpg',
      title: 'Ancient Alum Powder',
      duration: '35',
    ),
    FreeDeliModel(
      image: 'assets/shop/new/20.jpg',
      title: 'Bararel Cosmetics',
      duration: '45',
    ),
  ];
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
                  var item = _freeDeli[index];
                  return _builFreeDeliveryItem(context, item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _builFreeDeliveryItem(BuildContext context, SpecialOfferModel item) {
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
          ],
        ),
      ),
    );
  }

  final List<SpecialOfferModel> _freeDeli = [
    SpecialOfferModel(
      image: 'assets/shop/free/1.jpg',
      title: 'Aphea Online Shop',
      price: '3.4',
      duration: '40',
      rate: '3.7',
      review: '3',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/2.jpg',
      title: 'Aeksak Cambodia',
      price: '3.55',
      duration: '40',
      rate: '5.0',
      review: '31',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/3.jpg',
      title: 'SS-Natural Beauty',
      price: '2.65',
      duration: '40',
      rate: '3.7',
      review: '20',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/4.jpg',
      title: 'SN1 Online',
      price: '1.55',
      duration: '35',
      rate: '4.0',
      review: '156',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/5.jpg',
      title: 'FG Sports',
      price: '3.1',
      duration: '40',
      rate: '3.7',
      review: '65',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/6.jpg',
      title: 'Brand Bav',
      price: '3.85',
      duration: '45',
      rate: '4.5',
      review: '56',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/7.jpg',
      title: 'Community Pharma',
      price: '3.4',
      duration: '40',
      rate: '5.0',
      review: '103',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/8.jpg',
      title: 'Devalda Pharmacy / ឱសថស្ថាន ដេវ៉ាល់ដា',
      price: '3.55',
      duration: '40',
      rate: '4.7',
      review: '530',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/9.jpg',
      title: 'Japan Home Centre (Toul Kork)',
      price: '3.55',
      duration: '40',
      rate: '5.0',
      review: '700',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/10.jpg',
      title: 'Embryolisse',
      price: '3.55',
      duration: '40',
      rate: '5.0',
      review: '90',
    ),
  ];
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
        itemCount: _category.length,
        itemBuilder: (context, index) {
          var item = _category[index];
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
                  Expanded(
                    child: Text(
                      item.title.toString(),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Image.asset(item.image.toString()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  final List<CategoryModel> _category = [
    CategoryModel(
      image: 'assets/shop/category/1.png',
      title: 'Fashion',
    ),
    CategoryModel(
      image: 'assets/shop/category/2.png',
      title: 'Babies & KIDS',
    ),
    CategoryModel(
      image: 'assets/shop/category/3.png',
      title: 'Electronics',
    ),
    CategoryModel(
      image: 'assets/shop/category/4.png',
      title: 'Home & Living',
    ),
    CategoryModel(
      image: 'assets/shop/category/5.png',
      title: 'Pets',
    ),
    CategoryModel(
      image: 'assets/shop/category/6.png',
      title: 'Stationery',
    ),
    CategoryModel(
      image: 'assets/shop/category/7.png',
      title: 'Sim',
    ),
    CategoryModel(
      image: 'assets/shop/category/8.png',
      title: 'Sports & Hoobies',
    ),
    CategoryModel(
      image: 'assets/shop/category/9.png',
      title: 'Tools, DIY, Automotive',
    ),
    CategoryModel(
      image: 'assets/shop/category/10.png',
      title: 'Beauty',
    ),
    CategoryModel(
      image: 'assets/shop/category/11.png',
      title: 'Pharmarcy',
    ),
  ];
  // End Food Menu

  // All store
  Widget _buildAllStores() {
    return SizedBox(
      width: double.infinity,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _allStore.length,
        itemBuilder: (context, index) {
          var item = _allStore[index];
          return _builAllStoreItem(context, item);
        },
      ),
    );
  }

  Widget _builAllStoreItem(BuildContext context, SpecialOfferModel item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: SizedBox(
        height: 220,
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
                Icon(
                  Icons.motorcycle,
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  '\$${item.price}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  ' ~ ${item.duration}Mins',
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

  final List<SpecialOfferModel> _allStore = [
    SpecialOfferModel(
      image: 'assets/shop/free/1.jpg',
      title: 'Aphea Online Shop',
      price: '3.4',
      duration: '40',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/2.jpg',
      title: 'Aeksak Cambodia',
      price: '3.55',
      duration: '40',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/3.jpg',
      title: 'SS-Natural Beauty',
      price: '2.65',
      duration: '40',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/4.jpg',
      title: 'SN1 Online',
      price: '1.55',
      duration: '35',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/5.jpg',
      title: 'FG Sports',
      price: '3.1',
      duration: '40',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/6.jpg',
      title: 'Brand Bav',
      price: '3.85',
      duration: '45',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/7.jpg',
      title: 'Community Pharma',
      price: '3.4',
      duration: '40',
      rate: '5.0',
      review: '103',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/8.jpg',
      title: 'Devalda Pharmacy / ឱសថស្ថាន ដេវ៉ាល់ដា',
      price: '3.55',
      duration: '40',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/9.jpg',
      title: 'Japan Home Centre (Toul Kork)',
      price: '3.55',
      duration: '40',
    ),
    SpecialOfferModel(
      image: 'assets/shop/free/10.jpg',
      title: 'Embryolisse',
      price: '3.55',
      duration: '40',
    ),
    SpecialOfferModel(
      image: 'assets/shop/new/11.jpg',
      title: 'Tob Eivean / តូបអីវ៉ាន់',
      price: '3.85',
      duration: '45',
    ),
    SpecialOfferModel(
      image: 'assets/shop/new/12.jpg',
      title: 'Nakamura',
      price: '3.00',
      duration: '45',
    ),
    SpecialOfferModel(
      image: 'assets/shop/new/13.jpg',
      title: 'BabyWorld Toul Kork / បេប៊ីវើល ទួលគោក',
      price: '5.55',
      duration: '40',
    ),
    SpecialOfferModel(
      image: 'assets/shop/new/14.jpg',
      title: 'Megadis Store',
      price: '3.30',
      duration: '40',
    ),
    SpecialOfferModel(
      image: 'assets/shop/new/15.jpg',
      title: 'Diamond Bedding',
      price: '9.99',
      duration: '30',
    ),
    SpecialOfferModel(
      image: 'assets/shop/new/16.jpg',
      title: 'WiZ Smart Lighting Cambodia',
      price: '7.85',
      duration: '25',
    ),
    SpecialOfferModel(
      image: 'assets/shop/new/17.jpg',
      title: 'SM Natural Gemstone / SM ត្បូងធម្មជាតិ',
      price: '13.85',
      duration: '50',
    ),
    SpecialOfferModel(
      image: 'assets/shop/new/18.jpg',
      title: 'KS Pro Japan',
      price: '25.00',
      duration: '45',
    ),
    SpecialOfferModel(
      image: 'assets/shop/new/19.jpg',
      title: 'Ancient Alum Powder',
      price: '7.55',
      duration: '35',
    ),
    SpecialOfferModel(
      image: 'assets/shop/new/20.jpg',
      title: 'Bararel Cosmetics',
      price: '2.85',
      duration: '45',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/21.jpg',
      title: 'Mother Nature / មាតាធម្មជាតិ',
      price: '3.85',
      duration: '45',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/22.jpg',
      title: 'I Need This',
      price: '2.65',
      duration: '40',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/23.jpg',
      title: 'SP Watch Shop',
      price: '3.55',
      duration: '40',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/24.jpg',
      title: 'Za Collection',
      price: '3.55',
      duration: '40',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/25.jpg',
      title: 'Clothes Store / ហាងលក់សម្លៀកបំពាក់',
      price: '2.8',
      duration: '40',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/26.jpg',
      title: 'UCare Pharmacy Tk Star',
      price: '3.55',
      duration: '40',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/27.jpg',
      title: 'Inh Inh Mart Pharmacy / ឱសថស្ថាន អុីញ អុីញ',
      price: '3.4',
      duration: '40',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/28.jpg',
      title: 'We Buy One',
      price: '3.1',
      duration: '45',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/29.jpg',
      title: 'Beauty Skin',
      price: '3.55',
      duration: '40',
    ),
    SpecialOfferModel(
      image: 'assets/shop/special/30.jpg',
      title: 'Pharma Assist Pharmacy / ឱសថស្ថាន ហ្វាម៉ា',
      price: '3.4',
      duration: '45',
    ),
  ];
  // End All Store

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
