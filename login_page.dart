import 'package:flutter/material.dart';

class LoginPage extends Statefulwidget {
    static String id = 'login_page';
    
    @override
    _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
    @override
    Widget build(BuildContext context){
      return SafeArea(
        child: Scaffold(
         body: Center(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
               child:Image.asset('login.png',
                height: 300.0,
              ),// Image.asset
             ), // Flexible
             SizedBox(height: 15.0,),
              _usertextField(),
              SizedBox(height: 15,),
              _passwordTextField(),
              SizedBox(height: 20.0,),
              _bottonLogin(),
            ],
          ),//COLUMN
        ), //CENTER
      ), //SCAFOLD
     ), //SafeArea
    }
    Widget _userTextField(){
        return StreamBuilder(
            builder:(BuildContext context, AsyncSnapshot snapshot){
             return Container(
                padding: EdgeInsets.symmetric(horizontal: 35.0),
                child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                     icon : Icon(Icons.email),
                     hintText: 'ejemplocorreo,',
                     labelText: 'Correo electrónico',
                    ), // InputDecoration
                    onChanged: (value){
                      
                    }
                ), // TextField
             ); // Container
            }; // StreamBuilder
        )
    }

    Widget _passwordTextField(){
        return StreamBuilder(
            builder:(BuildContext context, AsyncSnapshot snapshot){
             return Container(
                padding: EdgeInsets.symetric(horizontal: 35.0),
                child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: InputDecoration(
                     icon : Icon(Icons.lock),
                     hintText: 'contraseña,',
                     labelText: 'contraseña',
                    ), // InputDecoration
                    onChanged: (value){
                      
                    },
                ), // TextField
             ); // Container
            }
        ); // StreamBuilder
    }

    Widget _bottonLogin(){
       return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return RaisedButton(
            child: Container(
              padding: EdgeInsets.symetric(horizontal: 80.0, vertical: 15.0),
              child: Text('Iniciar Sesion',
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
               ), // TextStyle
              ), // Text
            ), // CONTAINER
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ), // RoundedRectangleBorder
            elevation: 10.0,
            color: colors.amber,
            onPressed: (){}
          ); // RaisedButton
        }
       ); //StreamBuilder
     }
   }
  