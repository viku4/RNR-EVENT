import 'package:abybaby_it/typing_text.dart';
import 'package:flutter/material.dart';

class AnimatedWidget extends StatefulWidget {
  final List<String> data;
  final int month;
  final int year;

  const AnimatedWidget({
    super.key,
    required this.data,
    required this.month,
    required this.year,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedWidgetState createState() => _AnimatedWidgetState();
}

class _AnimatedWidgetState extends State<AnimatedWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.scale(
          scale: _animation.value,
          child: child,
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 100,
              height: 150,
              margin: const EdgeInsets.symmetric(horizontal: 10)
                  .copyWith(top: 0, right: 0),
              child: Card(
                color: Colors.pinkAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    buildTypeText(
                      txt: widget.year.toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    buildTypeText(
                      txt: widget.month.toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 0,
                    ),
                    width: 8,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 1100,
                    alignment: Alignment.center,
                    child: GridView.count(
                      padding: const EdgeInsets.all(10),
                      crossAxisCount: 4,
                      crossAxisSpacing: 4.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 10,
                      children: List.generate(
                        widget.data.length,
                        (index) {
                          return ListTile(
                            title: buildTypeText(txt: widget.data[index]),
                            leading: Container(
                              decoration: BoxDecoration(
                                color: Colors.pinkAccent,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              width: 20,
                              height: 20,
                              child: const Center(
                                child: Icon(Icons.done,
                                    size: 12, color: Colors.white),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
