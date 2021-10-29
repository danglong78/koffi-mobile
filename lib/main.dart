import 'package:flutter/material.dart';
import 'package:koffi_dev/page/splash/splash_page.dart';
import 'package:koffi_dev/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.theme,
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//
//       bottomSheet: Container(height:70,color: Colors.red,child: Row(children:[Text("Text"),SizedBox(width: 10.0,),Text("Text")]),),
//       appBar: AppBar(
//         leading: Container(
//           padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 0.0),
//           child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [Expanded(child: Text("Tạo Hóa đơn")), Text("Test")]),
//         ),
//         leadingWidth: 200,
//       ),
//       body: Stack(
//         children: [
//           Positioned(bottom: 100.0,right: 20.0,child: Container(color:Colors.yellowAccent,child: IconButton(onPressed: (){}, icon: Icon(Icons.add),color: Colors.purpleAccent,))),
//           Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 const Text(
//                   'You have pushed the button this many times:',
//                 ),
//                 Text(
//                   '$_counter',
//                   style: Theme.of(context).textTheme.headline4,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//  // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
