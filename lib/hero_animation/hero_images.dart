import 'package:flutter/material.dart';

import 'hero_home_page.dart';

class HeroAnimation extends StatefulWidget {
  const HeroAnimation({super.key});

  @override
  State<HeroAnimation> createState() => _HeroAnimationState();
}

class _HeroAnimationState extends State<HeroAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Phones & Watches', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: itemNames.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HeroAnimation2(index: index),
                ));
              },
              child: Hero(
                tag: index,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(itemPhotos[index]),
                    ),
                  ),
                ),
              ),
            ),
            subtitle: Text(
              itemDescriptions[index],
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: TextStyle(color: Colors.grey.shade400),
            ),
            title: Text(
              itemNames[index],
              style: TextStyle(fontWeight: FontWeight.w500, letterSpacing: 1.2, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

List<String> itemNames = [
  "iPhone 15 Pro",
  "Samsung Galaxy S23 Ultra",
  "Google Pixel 8",
  "Apple Watch Series 9",
  "Samsung Galaxy Watch 6",
  "OnePlus 11",
  "Garmin Fenix 7",
  "Huawei P60 Pro",
  "Xiaomi Mi Band 8",
  "Sony Xperia 1 V",
];

List<String> itemPhotos = [
  'https://www.apple.com/newsroom/images/2023/09/apple-unveils-iphone-15-pro-and-iphone-15-pro-max/tile/Apple-iPhone-15-Pro-lineup-hero-230912.jpg.news_app_ed.jpg',
  'https://m.media-amazon.com/images/I/71lD7eGdW-L.jpg',
  'https://rukminim2.flixcart.com/image/850/1000/xif0q/mobile/c/q/g/-original-imagtwh52pjgzb8w.jpeg?q=90&crop=false',
  'https://www.imagineonline.store/cdn/shop/files/Apple_Watch_Series_9_LTE_41mm_Graphite_Stainless_Steel_Midnight_Sport_Band_PDP_Image_Position-1__en-IN.jpg?v=1698865233&width=1445',
  'https://rukminim2.flixcart.com/image/850/1000/xif0q/smartwatch/w/x/h/-original-imahfa7xspmxemvj.jpeg?q=90&crop=false',
  'https://media.croma.com/image/upload/v1708670633/Croma%20Assets/Communication/Mobiles/Images/268759_0_veshje.png',
  'https://os-wordpress-media.s3.ap-south-1.amazonaws.com/blog/wp-content/uploads/2022/01/18235651/Garmin-Fenix-7-Cover.jpg',
  'https://images.jdmagicbox.com/quickquotes/images_main/p60-pro-dual-sim-ram-12-gb-512-gb-black-272394653-w2zsfxvn.jpg',
  'https://m.media-amazon.com/images/I/51mN6Y5AqAL.jpg',
  'https://i.ytimg.com/vi/TWz0dIZ0nu8/maxresdefault.jpg',
];

List<String> itemDescriptions = [
  "The iPhone 15 Pro is Apple's latest premium smartphone with advanced features like a titanium body, A17 Bionic chip, and improved cameras.",
  "Samsung Galaxy S23 Ultra boasts a 200MP camera, S Pen, and one of the best displays in the smartphone market.",
  "Google Pixel 8 offers AI-powered photography, Tensor G3 chip, and a seamless Android experience.",
  "Apple Watch Series 9 introduces double-tap gestures, faster processing, and sustainable materials.",
  "Samsung Galaxy Watch 6 is a feature-packed smartwatch with a rotating bezel and excellent fitness tracking.",
  "OnePlus 11 is a flagship killer with a Hasselblad camera, Snapdragon 8 Gen 2, and blazing-fast performance.",
  "Garmin Fenix 7 is a rugged smartwatch for adventure enthusiasts, offering multi-GNSS tracking and solar charging.",
  "Huawei P60 Pro is a photography powerhouse with advanced optics and sleek design.",
  "Xiaomi Mi Band 8 is an affordable fitness tracker with AMOLED display, health tracking, and excellent battery life.",
  "Sony Xperia 1 V features a 4K OLED display and professional-grade photography capabilities.",
];
