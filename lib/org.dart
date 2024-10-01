import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_app/manu.dart';
import 'package:flutter_my_app/text_fild.dart';

class Org extends StatefulWidget {
  const Org({Key? key}) : super(key: key);

  @override
  _OrgState createState() => _OrgState();
}

class _OrgState extends State<Org> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Welcome',
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.green,
        
      ),
      
      drawer: Manu(),
     
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
           
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                ),
                items: [
                  Image.network(
                        'https://images.pexels.com/photos/2131614/pexels-photo-2131614.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    Image.network(
                        'https://images.pexels.com/photos/2131614/pexels-photo-2131614.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    Image.network(
                        'https://images.pexels.com/photos/2131614/pexels-photo-2131614.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    Image.network(
                        'https://images.pexels.com/photos/2131614/pexels-photo-2131614.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    Image.network(
                        'https://images.pexels.com/photos/2131614/pexels-photo-2131614.jpeg?auto=compress&cs=tinysrgb&w=400'),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider(
                  options: CarouselOptions(height: 200.0, autoPlay: true),
                  items: [
                    Image.network(
                        'https://images.pexels.com/photos/2131614/pexels-photo-2131614.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    Image.network(
                        'https://images.pexels.com/photos/2131614/pexels-photo-2131614.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    Image.network(
                        'https://images.pexels.com/photos/2131614/pexels-photo-2131614.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    Image.network(
                        'https://images.pexels.com/photos/2131614/pexels-photo-2131614.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    Image.network(
                        'https://images.pexels.com/photos/2131614/pexels-photo-2131614.jpeg?auto=compress&cs=tinysrgb&w=400'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider(
                  options: CarouselOptions(height: 200.0, autoPlay: true),
                  items: [
                   Image.network(
                        'https://images.pexels.com/photos/2131614/pexels-photo-2131614.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    Image.network(
                        'https://images.pexels.com/photos/2131614/pexels-photo-2131614.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    Image.network(
                        'https://images.pexels.com/photos/2131614/pexels-photo-2131614.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    Image.network(
                        'https://images.pexels.com/photos/2131614/pexels-photo-2131614.jpeg?auto=compress&cs=tinysrgb&w=400'),
                    Image.network(
                        'https://images.pexels.com/photos/2131614/pexels-photo-2131614.jpeg?auto=compress&cs=tinysrgb&w=400'),
                  ],
                ),
              ),
            ),
           
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => TextFild()));
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
        
      ),
    );
  }
}
