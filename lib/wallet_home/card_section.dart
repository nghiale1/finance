import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.transparent,
      child: Stack(
        children: [
          SizedBox(
            height: 300,
            child: Stack(
              alignment: Alignment.center,
              children: [
                _buildCard('assets/images/card1.png', -8, 343, 198),
                _buildCard('assets/images/card2.png', 8, 343, 198),
                _buildCardWithText('assets/images/card3.png', 0, 343, 198),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper function for cards without text
  Widget _buildCard(String imagePath, double angle, double width, double height) {
    return Positioned(
      width: width,
      height: height,
      child: Transform.rotate(
        angle: angle * 3.14159265359 / 180,
        child: Image.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  // Helper function for card with text
  Widget _buildCardWithText(String imagePath, double angle, double width, double height) {
    return Positioned(
      width: width,
      height: height,
      child: Transform.rotate(
        angle: angle * 3.14159265359 / 180,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
            _buildCardText('ISHAQUE HASSAN', 24, 28),
            _buildCardText('5138', 190, 60),
            _buildCardText('120,000,000 VNĐ', 24, 150),
          ],
        ),
      ),
    );
  }

  // Helper function for text widgets on the card
  Widget _buildCardText(String text, double leftPadding, double topPadding) {
    return Positioned(
      child: Padding(
        padding: EdgeInsets.only(left: leftPadding, top: topPadding),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
