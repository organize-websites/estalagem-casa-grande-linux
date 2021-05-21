import 'dart:io';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'reserve.dart';
import 'pizzaria.dart';
import 'sobre.dart';


void main() {runApp(MaterialApp(
	title: 'Estalagem Casa Grande',
	 theme: ThemeData(),
         home: HomePage(),
      )
    );
}

class HomePage extends StatelessWidget{
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
        Container(
          color: Color.fromRGBO(223, 147, 20, 1.0),
          child: 
          CustomScrollView(
            slivers: [
              SliverList(
                delegate: 
                SliverChildListDelegate(
                  [
                    FadeInUp(
                        child: Padding(
                        padding: const EdgeInsets.all(40),
                        child: Image.asset('imagens/logo.png')
                      ),
                    )
                  ]
                )
              ),
              SliverList(
                delegate: 
                SliverChildListDelegate(
                  [
                    FadeInUp(
                        delay: Duration(milliseconds: 400),
                        child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                          child: 
                          ListTile(
                            title: Text('FAÇA JÁ A SUA RESERVA!', style: TextStyle(fontSize: 20, color: Color.fromRGBO(223, 147, 20, 1.0),),),
                            leading: FaIcon(FontAwesomeIcons.calendarCheck),
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Reserve()));}
                          ),
                        ),
                      ),
                    ),
                    FadeInUp(
                      delay: Duration(milliseconds: 800),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                          child: 
                          ListTile(
                            leading: FaIcon(FontAwesomeIcons.pizzaSlice),
                            title: Text('PEÇA SUA PIZZA!', style: TextStyle(fontSize: 20, color: Color.fromRGBO(223, 147, 20, 1.0),),),
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Pizzaria()));}
                          ),
                        ),
                      ),
                    ),
                    FadeInUp(
                      delay: Duration(milliseconds: 1200),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                          child: 
                          ListTile(
                            leading: FaIcon(FontAwesomeIcons.globe),
                            title: Text('VEJA NOSSO SITE', style: TextStyle(fontSize: 20, color: Color.fromRGBO(223, 147, 20, 1.0),),),
                            onTap: _launchURL4,
                          ),
                        ),
                      ),
                    ),                 
                    FadeInUp(
                      delay: Duration(milliseconds: 1600),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                          child: 
                          ListTile(
                            leading: FaIcon(FontAwesomeIcons.user),
                            title: Text('SOBRE', style: TextStyle(fontSize: 20, color: Color.fromRGBO(223, 147, 20, 1.0),),),
                            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Sobre()));}
                          ),
                        ),
                      ),
                    ),
                    FadeInUp(
                      delay: Duration(milliseconds: 2000),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white),
                          child: 
                          ListTile(
                            leading: FaIcon(FontAwesomeIcons.mapMarked),
                            title: Text('ENCONTRE-NOS', style: TextStyle(fontSize: 20, color: Color.fromRGBO(223, 147, 20, 1.0),),),
                            onTap: _launchURL5
                          ),
                        ),
                      ),
                    ),
                  ]
                )
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
                delegate: SliverChildListDelegate(
                  [
                    Bounce(child: IconButton(icon: FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white), onPressed: _launchURL)),
                    Bounce(child: IconButton(icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white), onPressed: _launchURL2)),
                    Bounce(child: IconButton(icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.white), onPressed: _launchURL3)),
                  ]
                )
              ),
            ],
          ),
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

_launchURL5() async {
  const url = 'https://www.google.com/maps/place/Estalagem+Casa+Grande+Pousada/@-23.4917753,-45.0807038,17z/data=!3m1!4b1!4m8!3m7!1s0x94cd56a95c1d2c85:0x86d3753b87d3e915!5m2!4m1!1i2!8m2!3d-23.4917692!4d-45.0784267';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}