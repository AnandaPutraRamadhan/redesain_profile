import 'package:flutter/material.dart';
import 'package:profile_desain/bantuan.dart';
import 'package:profile_desain/profile_ui.dart';

class Lainnya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: <Widget>[
        Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: <Widget>[
            Image(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3.5,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://lh3.googleusercontent.com/Rw4_UHKi_2mAKqHPVvHcwRqm_-LRXaBTXoAw6ON021qsBZ0AltrxEBIR47_fjc2LrhERnfU=s120'),
            ),
            Positioned(
              bottom: -70.0,
              left: 10,
              child: CircleAvatar(
                radius: 68,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://images.detik.com/community/media/detikconnect/document/2018/7/7/37954284251e30a40539a58107f4ae0e.jpeg'),
              ),
            ),
            Positioned(
                bottom: 0.0,
                left: 150,
                child: Text(
                  'Ananda Putra Ramadhan',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
        SizedBox(
          height: 80,
        ),
        Row(children: <Widget>[
          FlatButton(
            onPressed: () {
              Route route =
                  MaterialPageRoute(builder: (context) => ProfileUI());
              Navigator.push(context, route);
            },
            child: Container(
              margin: EdgeInsets.all(2),
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xFFE5E5E5),
                ),
              ),
              child: Center(
                child: Text('Profile'),
              ),
            ),
          ),
          FlatButton(
            onPressed: () {
              Route route = MaterialPageRoute(builder: (context) => Bantuan());
              Navigator.push(context, route);
            },
            child: Container(
              margin: EdgeInsets.all(2),
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xFFE5E5E5),
                ),
              ),
              child: Center(
                child: Text('Bantuan'),
              ),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Container(
              margin: EdgeInsets.all(2),
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xFFE5E5E5),
                ),
              ),
              child: Center(
                child: Text('Lainnya'),
              ),
            ),
          ),
        ]),
        SizedBox(
          height: 10,
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.settings),
            title: Text('Edit Profile'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.sensor_door_outlined),
            title: Text('Keluar'),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ),
      ],
    )));
  }
}
