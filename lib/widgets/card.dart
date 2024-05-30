import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final Color color;
  final String imagePath;
  final String image3dPath;
  final String title;

  const CustomCard(
      {super.key,
      required this.color,
      required this.imagePath,
      required this.image3dPath,
      required this.title});

  @override
  CustomCardState createState() => CustomCardState();
}

class CustomCardState extends State<CustomCard> {
  bool isClicked = false;

  void _handleClick() {
    setState(() {
      isClicked = !isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleClick,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            width: 250,
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: AnimatedOpacity(
                curve: Curves.easeInOutCubicEmphasized,
                opacity: isClicked ? 0.0 : 1.0,
                duration: const Duration(milliseconds: 500),
                child: Image.asset(
                  widget.imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
            ),
          ),
          AnimatedPositioned(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 500),
            top: isClicked ? 120 : 160,
            right: -50,
            child: AnimatedOpacity(
              opacity: isClicked ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: Image.asset(
                widget.image3dPath,
                width: 300,
                height: 360,
              ),
            ),
          ),
          AnimatedPositioned(
            curve: Curves.easeInOut,
            duration: const Duration(milliseconds: 500),
            bottom: isClicked ? 210 : 190,
            right: 0,
            child: AnimatedOpacity(
              opacity: isClicked ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  widget.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
