import 'package:flutter/material.dart';
import 'package:gojek_home_screen/main.dart';
import 'package:gojek_home_screen/theme.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ScrollConfiguration(
            behavior: MyBehavior(),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  searchBar(),
                  UnivBanner(),
                  promoBanner(),
                  promoMerdeka(),
                  promoUniv(),
                  promoUnivrab(),
                  SizedBox(
                    height: 150,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget promoUnivrab() {
    return listPromoBanner(
      'assets/images/promo_banner_5.jpeg',
      'Klik buat gabung sekarang ',
      'Universitas Abdurrab',
    );
  }

  Widget promoUniv() {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 10,
      ),
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage('assets/images/promo_banner_4.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget iconNavBar(String icon, String title) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(icon),
              alignment: Alignment.centerLeft,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: subtitleTextStyle,
        ),
      ],
    );
  }

  Widget promoMerdeka() {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        bottom: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 15,
            ),
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/logo_univrab.png'),
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mari Daftar UNIVERSITAS ABDURRAB',
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'ada diskon Pendaftaran!',
                  style: subtitleTextStyle,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                listPromoBanner(
                    'assets/images/promo_banner_1.png',
                    'Melakukan Pelaksanaan Akreditasi',
                    'Assesmen PRODI Hubungan Internasional'),
                SizedBox(
                  width: 15,
                ),
                listPromoBanner('assets/images/promo_banner_2.png',
                    'LOREM IPSUM', 'Universitas Abdurrab'),
                SizedBox(
                  width: 15,
                ),
                listPromoBanner('assets/images/promo_banner_3.jpeg',
                    'LOREM ipsum', 'klik disini'),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container listPromoBanner(String image, String subtitle, String title) {
    return Container(
      width: 350,
      margin: EdgeInsets.symmetric(
        vertical: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 5,
            color: Colors.black12,
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadiusDirectional.vertical(
                top: Radius.circular(20),
              ),
              color: primaryColor,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 18,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: promoTitleTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  subtitle,
                  style: promoSubtitleTextStyle,
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget promoBanner() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 15,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 5,
            color: Colors.black12,
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/promo_banner.png',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadiusDirectional.vertical(
                top: Radius.circular(20),
              ),
              color: primaryColor,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 18,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Univ Abdurrab',
                  style: promoTitleTextStyle,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  ' Dapetin Sekarang!',
                  style: promoSubtitleTextStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget UnivBanner() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: Colors.black12,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/logo_univrab.png'),
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              Text(
                ':Program UNIVRAB',
                style: goClubTextStyle,
              )
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Cek Disini YUK!',
              style: goClubTextStyle2,
            ),
          )
        ],
      ),
    );
  }

  // Widget gopayCardBanner() {
  //   return Container(
  //     height: 100,
  //     margin: EdgeInsets.symmetric(
  //       horizontal: 15,
  //       vertical: 15,
  //     ),
  //     padding: EdgeInsets.only(
  //       left: 10,
  //       right: 10,
  //     ),
  //     width: double.infinity,
  //     decoration: BoxDecoration(
  //       color: blueCardColor,
  //       borderRadius: BorderRadius.circular(20),
  //     ),
  //     child: Row(
  //       children: [
  //         Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Container(
  //               height: 10,
  //               width: 3,
  //               decoration: BoxDecoration(
  //                 color: Colors.grey.shade300,
  //                 borderRadius: BorderRadius.circular(10),
  //               ),
  //             ),
  //             SizedBox(
  //               height: 5,
  //             ),
  //             Container(
  //               height: 10,
  //               width: 3,
  //               decoration: BoxDecoration(
  //                 color: Colors.white,
  //                 borderRadius: BorderRadius.circular(10),
  //               ),
  //             ),
  //           ],
  //         ),
  //         SizedBox(
  //           width: 15,
  //         ),
  //         SingleChildScrollView(
  //           child: Column(
  //             children: [
  //               SizedBox(
  //                 height: 15,
  //               ),
  //               Container(
  //                 width: 140,
  //                 padding: EdgeInsets.all(10),
  //                 decoration: BoxDecoration(
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.circular(10),
  //                 ),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Container(
  //                       height: 15,
  //                       decoration: BoxDecoration(
  //                         image: DecorationImage(
  //                           image: AssetImage('assets/icons/gopay_banner.png'),
  //                           alignment: Alignment.centerLeft,
  //                         ),
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 5,
  //                     ),
  //                     Text(
  //                       'Bayar pake GoPay lebih praktis!',
  //                       style: normalCardTextStyle,
  //                     ),
  //                     SizedBox(
  //                       height: 8,
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 10,
  //               ),
  //               Container(
  //                 width: 130,
  //                 padding: EdgeInsets.all(10),
  //                 decoration: BoxDecoration(
  //                   color: Colors.white,
  //                   borderRadius: BorderRadius.circular(10),
  //                 ),
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     Container(
  //                       height: 15,
  //                       decoration: BoxDecoration(
  //                         image: DecorationImage(
  //                           image: AssetImage('assets/icons/gopay_banner.png'),
  //                           alignment: Alignment.centerLeft,
  //                         ),
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 5,
  //                     ),
  //                     Text(
  //                       'Bayar pake GoPay lebih praktis!',
  //                       style: normalCardTextStyle,
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 15,
  //               )
  //             ],
  //           ),
  //         ),
  //         SizedBox(
  //           width: 15,
  //         ),
  //         Expanded(
  //           child: Container(
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceAround,
  //               children: [
  //                 Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     Container(
  //                       padding: EdgeInsets.all(3),
  //                       decoration: BoxDecoration(
  //                         color: Colors.white,
  //                         borderRadius: BorderRadius.circular(5),
  //                       ),
  //                       child: Icon(
  //                         Icons.arrow_upward,
  //                         size: 15,
  //                         color: blueCardColor,
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 5,
  //                     ),
  //                     Text(
  //                       'Bayar',
  //                       style: transksiCardTextStyle,
  //                     ),
  //                   ],
  //                 ),
  //                 Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     Container(
  //                       padding: EdgeInsets.all(3),
  //                       decoration: BoxDecoration(
  //                         color: Colors.white,
  //                         borderRadius: BorderRadius.circular(5),
  //                       ),
  //                       child: Icon(
  //                         Icons.add,
  //                         size: 15,
  //                         color: blueCardColor,
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 5,
  //                     ),
  //                     Text(
  //                       'Top Up',
  //                       style: transksiCardTextStyle,
  //                     ),
  //                   ],
  //                 ),
  //                 Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   children: [
  //                     Container(
  //                       padding: EdgeInsets.all(3),
  //                       decoration: BoxDecoration(
  //                         color: Colors.white,
  //                         borderRadius: BorderRadius.circular(5),
  //                       ),
  //                       child: Icon(
  //                         Icons.travel_explore_outlined,
  //                         size: 15,
  //                         color: blueCardColor,
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       height: 5,
  //                     ),
  //                     Text(
  //                       'Eksplor',
  //                       style: transksiCardTextStyle,
  //                     ),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget searchBar() {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
        top: 20,
        right: 15,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  width: 1,
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),
              child: Row(
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Cari layanan',
                    style: normalTextStyle,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: primaryColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
