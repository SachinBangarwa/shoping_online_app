import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_online_app/page/root_app.dart';
import 'package:shoping_online_app/provider/root_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
           providers: [
             ChangeNotifierProvider(create: (context){
               return RootProvider();
             })
           ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:RootApp(),
      ),
    );
  }
}

