import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'homescreen.dart';
import 'pizzaria.dart';



class Reserve extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estalagem Casa Grande',
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: 
        WebView(
          initialUrl: 'https://hbook.hsystem.com.br/Booking?companyId=5d002b6aab41d412ac7a00ef',
          javascriptMode: JavascriptMode.unrestricted,
        ),
        drawer: ClipRRect(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
          child: Drawer(
            child: Container(
              color: Color.fromRGBO(223, 147, 20, 1.0),
              child: ListView(
                children: [
                  DrawerHeader(
                    child: 
                    Center(
                      child: 
                      TextButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));}, 
                        child: Image.asset('imagens/logo.png')
                      ),
                    )
                  ),
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.white,),
                    title: Text('HOME', style: TextStyle(color: Colors.white),),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
                  ),
                  ListTile(
                    leading: Icon(Icons.check, color: Colors.white,),
                    title: Text('RESERVE', style: TextStyle(color: Colors.white),),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Reserve()));},
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.pizzaSlice, color: Colors.white,),
                    title: Text('PIZZARIA', style: TextStyle(color: Colors.white),),
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Pizzaria()));},
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white,),
                    title: Text('WHATSAPP', style: TextStyle(color: Colors.white),),
                    onTap: _launchURL
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.facebook, color: Colors.white,),
                    title: Text('FACEBOOK', style: TextStyle(color: Colors.white),),
                    onTap: _launchURL2
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.instagram, color: Colors.white,),
                    title: Text('INSTAGRAM', style: TextStyle(color: Colors.white),),
                    onTap: _launchURL3
                  ),
                  ListTile(
                    leading: FaIcon(FontAwesomeIcons.globe, color: Colors.white,),
                    title: Text('NOSSO SITE', style: TextStyle(color: Colors.white),),
                    onTap: _launchURL4
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: 
        BottomNavigationBar(
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: 
              IconButton(
                  icon: Icon(Icons.home, color: Colors.white,), 
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));}
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: 
              IconButton(
                  icon: FaIcon(FontAwesomeIcons.globe, color: Colors.white,), 
                  onPressed: _launchURL4
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: 
              IconButton(
                  icon: Icon(Icons.exit_to_app, color: Colors.white,), 
                  onPressed: (){exit(0);},
              ),
              label: '',
            ),
          ]
        )
      ),
    );
  }
}


_launchURL() async {
  const url = 'http://wa.me/5512988782332&text=';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL2() async {
  const url = 'fb://page/135886499810313/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL3() async {
  const url = 'instagram://user?username=pizzariadaestalagem';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL4() async {
  const url = 'https://estalagemcasagrande.com.br/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}