import 'package:flutter/material.dart';
import 'package:flutter_my_app/data_tavil.dart';
import 'package:flutter_my_app/manu.dart';

import 'package:flutter_my_app/setting1.dart';

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
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-1/430123883_946744843838500_2708425725697330128_n.jpg?stp=c228.0.912.912a_dst-jpg_s200x200&_nc_cat=107&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeGvqdBGb7QSOiXHqJ1FZ4tonuj2Ow3z1R2e6PY7DfPVHU07hNoXIJQwXQem5K9ZqbWwRW0Dji0HH8fV4nNDXX9g&_nc_ohc=b8d3Fum4dLQQ7kNvgHhVfdb&_nc_ht=scontent.fdac22-1.fna&_nc_gid=ADOALqUplYdhTC16bpf_6Oj&oh=00_AYAumW2LqZwqQ_rN4kHndO8o29DeZj8wb7y2STfgIV_RZQ&oe=67073B81'),
              ),
              title: Text(
                "Rasal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'Mess ar samne',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Text('9:19 PM'),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-1/430123883_946744843838500_2708425725697330128_n.jpg?stp=c228.0.912.912a_dst-jpg_s200x200&_nc_cat=107&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeGvqdBGb7QSOiXHqJ1FZ4tonuj2Ow3z1R2e6PY7DfPVHU07hNoXIJQwXQem5K9ZqbWwRW0Dji0HH8fV4nNDXX9g&_nc_ohc=b8d3Fum4dLQQ7kNvgHhVfdb&_nc_ht=scontent.fdac22-1.fna&_nc_gid=ADOALqUplYdhTC16bpf_6Oj&oh=00_AYAumW2LqZwqQ_rN4kHndO8o29DeZj8wb7y2STfgIV_RZQ&oe=67073B81'),
              ),
              title: Text(
                "Rasal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'Mess ar samne',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Text('9:19 PM'),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-1/430123883_946744843838500_2708425725697330128_n.jpg?stp=c228.0.912.912a_dst-jpg_s200x200&_nc_cat=107&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeGvqdBGb7QSOiXHqJ1FZ4tonuj2Ow3z1R2e6PY7DfPVHU07hNoXIJQwXQem5K9ZqbWwRW0Dji0HH8fV4nNDXX9g&_nc_ohc=b8d3Fum4dLQQ7kNvgHhVfdb&_nc_ht=scontent.fdac22-1.fna&_nc_gid=ADOALqUplYdhTC16bpf_6Oj&oh=00_AYAumW2LqZwqQ_rN4kHndO8o29DeZj8wb7y2STfgIV_RZQ&oe=67073B81'),
              ),
              title: Text(
                "Rasal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'Mess ar samne',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Text('9:19 PM'),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-1/430123883_946744843838500_2708425725697330128_n.jpg?stp=c228.0.912.912a_dst-jpg_s200x200&_nc_cat=107&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeGvqdBGb7QSOiXHqJ1FZ4tonuj2Ow3z1R2e6PY7DfPVHU07hNoXIJQwXQem5K9ZqbWwRW0Dji0HH8fV4nNDXX9g&_nc_ohc=b8d3Fum4dLQQ7kNvgHhVfdb&_nc_ht=scontent.fdac22-1.fna&_nc_gid=ADOALqUplYdhTC16bpf_6Oj&oh=00_AYAumW2LqZwqQ_rN4kHndO8o29DeZj8wb7y2STfgIV_RZQ&oe=67073B81'),
              ),
              title: Text(
                "Rasal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'Mess ar samne',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Text('9:19 PM'),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-1/430123883_946744843838500_2708425725697330128_n.jpg?stp=c228.0.912.912a_dst-jpg_s200x200&_nc_cat=107&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeGvqdBGb7QSOiXHqJ1FZ4tonuj2Ow3z1R2e6PY7DfPVHU07hNoXIJQwXQem5K9ZqbWwRW0Dji0HH8fV4nNDXX9g&_nc_ohc=b8d3Fum4dLQQ7kNvgHhVfdb&_nc_ht=scontent.fdac22-1.fna&_nc_gid=ADOALqUplYdhTC16bpf_6Oj&oh=00_AYAumW2LqZwqQ_rN4kHndO8o29DeZj8wb7y2STfgIV_RZQ&oe=67073B81'),
              ),
              title: Text(
                "Rasal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'Mess ar samne',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Text('9:19 PM'),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-1/430123883_946744843838500_2708425725697330128_n.jpg?stp=c228.0.912.912a_dst-jpg_s200x200&_nc_cat=107&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeGvqdBGb7QSOiXHqJ1FZ4tonuj2Ow3z1R2e6PY7DfPVHU07hNoXIJQwXQem5K9ZqbWwRW0Dji0HH8fV4nNDXX9g&_nc_ohc=b8d3Fum4dLQQ7kNvgHhVfdb&_nc_ht=scontent.fdac22-1.fna&_nc_gid=ADOALqUplYdhTC16bpf_6Oj&oh=00_AYAumW2LqZwqQ_rN4kHndO8o29DeZj8wb7y2STfgIV_RZQ&oe=67073B81'),
              ),
              title: Text(
                "Rasal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'Mess ar samne',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Text('9:19 PM'),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-1/430123883_946744843838500_2708425725697330128_n.jpg?stp=c228.0.912.912a_dst-jpg_s200x200&_nc_cat=107&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeGvqdBGb7QSOiXHqJ1FZ4tonuj2Ow3z1R2e6PY7DfPVHU07hNoXIJQwXQem5K9ZqbWwRW0Dji0HH8fV4nNDXX9g&_nc_ohc=b8d3Fum4dLQQ7kNvgHhVfdb&_nc_ht=scontent.fdac22-1.fna&_nc_gid=ADOALqUplYdhTC16bpf_6Oj&oh=00_AYAumW2LqZwqQ_rN4kHndO8o29DeZj8wb7y2STfgIV_RZQ&oe=67073B81'),
              ),
              title: Text(
                "Rasal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'Mess ar samne',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Text('9:19 PM'),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-1/430123883_946744843838500_2708425725697330128_n.jpg?stp=c228.0.912.912a_dst-jpg_s200x200&_nc_cat=107&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeGvqdBGb7QSOiXHqJ1FZ4tonuj2Ow3z1R2e6PY7DfPVHU07hNoXIJQwXQem5K9ZqbWwRW0Dji0HH8fV4nNDXX9g&_nc_ohc=b8d3Fum4dLQQ7kNvgHhVfdb&_nc_ht=scontent.fdac22-1.fna&_nc_gid=ADOALqUplYdhTC16bpf_6Oj&oh=00_AYAumW2LqZwqQ_rN4kHndO8o29DeZj8wb7y2STfgIV_RZQ&oe=67073B81'),
              ),
              title: Text(
                "Rasal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'Mess ar samne',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Text('9:19 PM'),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-1/430123883_946744843838500_2708425725697330128_n.jpg?stp=c228.0.912.912a_dst-jpg_s200x200&_nc_cat=107&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeGvqdBGb7QSOiXHqJ1FZ4tonuj2Ow3z1R2e6PY7DfPVHU07hNoXIJQwXQem5K9ZqbWwRW0Dji0HH8fV4nNDXX9g&_nc_ohc=b8d3Fum4dLQQ7kNvgHhVfdb&_nc_ht=scontent.fdac22-1.fna&_nc_gid=ADOALqUplYdhTC16bpf_6Oj&oh=00_AYAumW2LqZwqQ_rN4kHndO8o29DeZj8wb7y2STfgIV_RZQ&oe=67073B81'),
              ),
              title: Text(
                "Rasal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'Mess ar samne',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Text('9:19 PM'),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://scontent.fdac22-1.fna.fbcdn.net/v/t39.30808-1/430123883_946744843838500_2708425725697330128_n.jpg?stp=c228.0.912.912a_dst-jpg_s200x200&_nc_cat=107&ccb=1-7&_nc_sid=0ecb9b&_nc_eui2=AeGvqdBGb7QSOiXHqJ1FZ4tonuj2Ow3z1R2e6PY7DfPVHU07hNoXIJQwXQem5K9ZqbWwRW0Dji0HH8fV4nNDXX9g&_nc_ohc=b8d3Fum4dLQQ7kNvgHhVfdb&_nc_ht=scontent.fdac22-1.fna&_nc_gid=ADOALqUplYdhTC16bpf_6Oj&oh=00_AYAumW2LqZwqQ_rN4kHndO8o29DeZj8wb7y2STfgIV_RZQ&oe=67073B81'),
              ),
              title: Text(
                "Rasal",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                'Mess ar samne',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Text('9:19 PM'),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.chat_bubble_outline_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person_2),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => DataTavil()));
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Setting1()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
