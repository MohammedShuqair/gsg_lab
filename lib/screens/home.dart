import 'package:flutter/material.dart';
import 'package:gsg_lab/resourses/assets_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => Scaffold()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (_, __) => Row(
          children: [
            Expanded(
              child: Image(
                image: AssetImage(AssetsManager.gif1),
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Transform.flip(
                flipX: true,
                child: Image(
                  image: AssetImage(AssetsManager.gif1),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        itemCount: 5,
      ),
    );
  }
}
