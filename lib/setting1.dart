import 'package:flutter/material.dart';
import 'package:flutter_my_app/org.dart';

class Setting1 extends StatefulWidget {
  const Setting1({Key? key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Setting & privacy',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black87,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Org()));
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.white,
                iconSize: 30,
              ),
            ),
          ]),
      body: ListView(
        children: [
          Container(
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Colors.black87, Colors.black87])),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            fillColor: Colors.black12,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            labelText: 'Search setting'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    //card
                    child: InkWell(
                      onTap: () {
                        print(ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text('its ok'))));
                      },
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          height: 300,
                          width: 400,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.black54, Colors.black54])),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Image.network(
                                            'https://img.icons8.com/?size=80&id=x8xTNP7hQlte&format=png',
                                            height: 25,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            'Meta',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Accounts Center',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Text(
                                        'Manage your connected experiences and account',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      Text(
                                        'settings across Meta technologies.',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                        children: [
                                          Image.network(
                                            'https://cdn-icons-png.flaticon.com/128/8840/8840895.png',
                                            height: 20,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Personal details ',
                                            style: TextStyle(
                                                color: Colors.white54),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                                  content: Text('oky')));
                                        },
                                        child: Row(
                                          children: [
                                            Image.network(
                                              'https://cdn-icons-png.flaticon.com/128/10697/10697802.png',
                                              height: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Password and security',
                                              style: TextStyle(
                                                  color: Colors.white54),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                        children: [
                                          Image.network(
                                            'https://img.icons8.com/?size=80&id=uVnnqevF94fw&format=png',
                                            height: 20,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Ad preferences',
                                            style: TextStyle(
                                                color: Colors.white54),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                        children: [
                                          Image.network(
                                            'https://cdn-icons-png.flaticon.com/128/7525/7525697.png',
                                            height: 20,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            'Verification',
                                            style: TextStyle(
                                                color: Colors.white54),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'See more in Accounts Center',
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.blue,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            children: [
                              Text(
                                'Tools and resources',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 8),
                        child: Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Our tools help you control and manage your',
                              style: TextStyle(color: Colors.white60),
                            ),
                            Text(
                              'privacy.',
                              style: TextStyle(color: Colors.white60),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/6423/6423891.png',
                                  height: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Privacy Checkup',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/17394/17394156.png',
                                  height: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Supervision',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/2956/2956788.png',
                                  height: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Default audience settings',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                          ],
                        )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 8),
                        child: Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Preferences',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Customize your experience on Facebook.',
                              style: TextStyle(color: Colors.white60),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Image.network(
                                  'https://img.icons8.com/?size=80&id=3uZlirAPY5tX&format=png',
                                  height: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Content preferences',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/1208/1208703.png',
                                  height: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Reaction preferences',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/3602/3602145.png',
                                  height: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Notifications',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/7118/7118029.png',
                                  height: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Accessibility',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/4675/4675117.png',
                                  height: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Tab bar',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/546/546310.png',
                                  height: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  'Language and regions',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Image.network(
                                  'https://cdn-icons-png.flaticon.com/128/3602/3602145.png',
                                  height: 25,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Notifications',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                          ],
                        )),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
