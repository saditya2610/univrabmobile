import 'package:flutter/material.dart';
import 'package:gojek_home_screen/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class TampilanScreen extends StatefulWidget {
  const TampilanScreen({Key? key}) : super(key: key);

  @override
  _TampilanScreenState createState() => _TampilanScreenState();
}

class _TampilanScreenState extends State<TampilanScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            goClubBanner(),
            listCollectionUser(),
            titleTampilan(),
            listTampilanKategori(),
            titleTampilandanDetail(),
            listTampilanMakan(),
            univrabLogo(),
            listDiskonCardFood(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget univrabLogo() {
    return Container(
      margin: EdgeInsets.only(
        top: 35,
        left: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/logo_univrab.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'PLUS',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Lebih Plus',
            style: bigTextStyle,
          ),
        ],
      ),
    );
  }

  Widget listDiskonCardFood() {
    return new Container(
      height: 290,
      margin: EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            ...List.generate(3, (index) {
              return diskonCardFood();
            })
          ],
        ),
      ),
    );
  }

  Widget diskonCardFood() {
    return Container(
      width: 350,
      margin: EdgeInsets.only(
        bottom: 5,
        top: 5,
        right: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            offset: Offset(1, 2),
            color: Colors.black12,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Universitas\nAbdurrab',
                  style: bigTextStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icons/logo_univrab.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 6,
                      width: 6,
                      decoration: BoxDecoration(
                          color: Colors.black, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Aplikasi',
                      style: normalTextStyle,
                    ),
                  ],
                ),
                SizedBox()
              ],
            ),
          ),
          Spacer(),
          Divider(
            thickness: 1,
            color: Colors.black12,
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 30,
              top: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jurnal',
                      style: bigTextStyle,
                    ),
                    Text(
                      '',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black26,
                        decoration: TextDecoration.lineThrough,
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 2,
                      color: primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    'Lebih lanjut',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget listTampilanMakan() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            ...List.generate(
              3,
              (index) {
                return promosiMakanCard();
              },
            )
          ],
        ),
      ),
    );
  }

  Container promosiMakanCard() {
    return Container(
      margin: EdgeInsets.only(
        right: 15,
        top: 20,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            offset: Offset(1, 2),
            color: Colors.black12,
          )
        ],
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/images/portal.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.centerLeft,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 8,
                      offset: Offset(1, 1),
                      color: Colors.black26,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 120,
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Lorem • Lorem',
                  style: normalTextStyle,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'UnivRAB',
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Portal",
                  style: titleSemiBoldTextStyle,
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'BLABLA',
                  style: smallTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget titleTampilandanDetail() {
    return Container(
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 30,
      ),
      child: Row(
        children: [
          Text(
            'LOREM IPSUM!',
            style: bigTextStyle,
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: lightGreenColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(
              'Lihat Semua',
              style: promoButtonTextStyle,
            ),
          )
        ],
      ),
    );
  }

  Widget listTampilanKategori() {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 15,
          ),
          listKategori(0, 'Apa aja'),
          listKategori(1, 'UNIV'),
          listKategori(2, 'Abdurrab'),
          listKategori(3, 'Siakad'),
          listKategori(4, 'SIKAP'),
        ],
      ),
    );
  }

  GestureDetector listKategori(int index, String title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          right: 10,
          top: 15,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: (selectedIndex == index) ? primaryColor : Colors.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            width: 1.5,
            color: Colors.black.withOpacity(0.05),
          ),
        ),
        child: Text(
          title,
          style: (selectedIndex == index)
              ? promoSelectedTextStyle
              : promoUnselectedTextStyle,
        ),
      ),
    );
  }

  Container titleTampilan() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Text(
        'Filter PORTAL',
        style: bigTextStyle,
      ),
    );
  }

  Widget listCollectionUser() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          collectionUser(
            7,
            'Pengguna',
            '2 Akun',
            Colors.orange,
          ),
          SizedBox(
            width: 15,
          ),
          collectionUser(
            7,
            'Pegawai',
            'Lagi aktif',
            Colors.pink.shade700,
          ),
          SizedBox(
            width: 15,
          ),
          collectionUser(
            2,
            'Dosen',
            'Lagi Studi',
            blueCardColor,
          ),
        ],
      ),
    );
  }

  Widget collectionUser(int angka, String title, String subtitle, Color color) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.black12,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$angka',
                  style: extraBigTextStyle,
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  size: 20,
                  color: Colors.black,
                )
              ],
            ),
            Text(
              title,
              style: titleSemiBoldTextStyle,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              subtitle,
              style: smallTextStyle,
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              height: 4,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget goClubBanner() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
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
                ':Portal',
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
              'Ikutan gratis',
              style: goClubTextStyle2,
            ),
          )
        ],
      ),
    );
  }
}
