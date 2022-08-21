import 'package:flutter/material.dart';
import 'package:uitest/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Hi, Bagus',
              style: primaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              width: 17,
            ),
            Container(
              child: Image.asset(
                'assets/user_icon.png',
                width: 20,
              ),
            ),
          ],
        ),
      );
    }

    Widget search() {
      return Container(
        margin: EdgeInsets.only(top: 21),
        height: 39,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        decoration: BoxDecoration(
          color: backgroundColor1,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Expanded(
            child: TextFormField(
              style: primaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: reguler,
              ),
              decoration: InputDecoration.collapsed(
                hintText: 'Cari Klinik / Rumah Sakit',
                hintStyle: subtitleTextStyle,
              ),
            ),
          ),
        ),
      );
    }

    Widget info() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        // padding: EdgeInsets.all(23),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.blue,
              Colors.red,
            ],
          ),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 23,
                  top: 8,
                ),
                child: Text(
                  'INFO ANTRIAN',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: bold,
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: primaryColor,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 18,
                    ),
                    child: Image.asset(
                      'assets/favorites-button.png',
                      width: 70,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Image.asset(
                      'assets/favorites-button.png',
                      width: 70,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            children: [
              header(),
              search(),
              info(),
            ],
          ),
        ),
      ),
    );
  }
}
