class MyApp extends StatelessWidget {
// This widget is the root of your aplication.
@override
Widget build(BuildContext context){
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner : false,
        theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
        ), // ThemeData
        initialRoute: LoginPage.id,
        routes: {
         LoginPage.id : (context) => LoginPage(),
        },
    );//MaterialApp
  }
}