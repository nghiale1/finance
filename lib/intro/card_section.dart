import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.transparent,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: 300,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                _buildCard(
                  image: 'assets/images/card1.png',
                  top: 50,
                  left: 50,
                  color: Colors.red,
                ),
                _buildCard(
                  image: 'assets/images/card2.png',
                  top: 70,
                  right: 70,
                  color: Colors.pink,
                ),
                _buildCard(
                  image: 'assets/images/card3.png',
                  top: 0,
                  left: 0,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          Positioned(
            width: 368,
            child: Image.asset(
              'assets/images/vector.png',
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard({
    required String image,
    double? top,
    double? left,
    double? right,
    required Color color,
  }) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      width: 343,
      height: 198,
      child: Transform.rotate(
        angle: -90 * 3.14159265359 / 180,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Image.asset(
              image,
              fit: BoxFit.fill,
            ),
            _buildCardText('ISHAQUE HASSAN', 24, 28),
            _buildCardText('5138', 190, 60),
            _buildCardText('120,000,000 VNĐ', 24, 150, isWhite: true),
          ],
        ),
      ),
    );
  }

  Widget _buildCardText(
      String text,
      double leftPadding,
      double topPadding, {
        bool isWhite = false,
      }) {
    return Positioned(
      child: Padding(
        padding: EdgeInsets.only(left: leftPadding, top: topPadding),
        child: Text(
          text,
          style: TextStyle(
            color: isWhite ? Colors.white : Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
