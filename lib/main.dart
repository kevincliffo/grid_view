import 'package:flutter/material.dart';

void main() {   runApp(MyApp()); }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> categories = [200,900,300,400,50,600,700,800];
  List<int> featured = [200,900,300,400,100,600,700,800];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child:Container(
              child:Column(
                children: <Widget>[
                  SizedBox(height:10.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal:5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Categories", style:TextStyle(fontSize: 20.0,), textAlign: TextAlign.left,),
                      ],
                    ),
                  ),
                  //SizedBox(height:20.0),
                  Container(
                    padding: EdgeInsets.only(left:5),
                    height:200.0,
                    child: GridView.builder(
                      itemCount: categories.length,
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          padding: EdgeInsets.all(5.0),
                          width:(MediaQuery.of(context).size.width/4) -10,
                          height:(MediaQuery.of(context).size.width/4) -10,
                          color:Colors.red[categories[index]],
                        );
                      },
                    ),
                  ),
                  SizedBox(height:20.0),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal:5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Featured", style:TextStyle(fontSize: 20.0,), textAlign: TextAlign.left,),
                      ],
                    ),
                  ),
                  Container(
                    height:900.0,
                    child: GridView.builder(
                      primary: false,
                      itemCount: featured.length,
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          padding: EdgeInsets.all(5.0),
                          width:(MediaQuery.of(context).size.width/2) - 8,
                          //height:(MediaQuery.of(context).size.width/2) - 8,
                          color:Colors.blue[featured[index]],
                        );
                      },
                    ),                   
                    // child:GridView.count(
                    //   primary:false,
                    //   //scrollDirection: Axis.vertical,
                    //   crossAxisCount: 2,
                    //   mainAxisSpacing: 8.0,
                    //   crossAxisSpacing: 8.0,
                    //   children:List.generate(8, (index){
                    //     return Center(
                    //       child: Container(
                    //         width:(MediaQuery.of(context).size.width/2)-8,
                    //         color:Colors.blue[300],                            
                    //       ),
                    //     );
                    //   })
                    // )
                  ),
                  SizedBox(height:10)                  ,
                  Container(
                    height:200.0,
                    child: ListView(
                      scrollDirection:Axis.horizontal,
                      children:<Widget>[
                        Container(
                          width:200,
                          color:Colors.grey,
                        ),
                        Container(
                          width:200,
                          color:Colors.blue,
                        ),
                        Container(
                          width:200,
                          color:Colors.green,
                        ),
                        Container(
                          width:200,
                          color:Colors.red,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height:10.0),
                  Container(
                    height:200.0,
                    child:ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Container(
                          width: 50.0,
                          height: 100.0,
                          color: Colors.yellowAccent,
                        ),
                        Container(
                          width: 50.0,
                          height: 100.0,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 50.0,
                          height: 100.0,
                          color: Colors.green,
                        ),
                        Container(
                          width: 50.0,
                          height: 100.0,
                          color: Colors.red,
                        ),
                        Container(
                          width: 50.0,
                          height: 100.0,
                          color: Colors.yellowAccent,
                        ),
                        Container(
                          width: 50.0,
                          height: 100.0,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 50.0,
                          height: 100.0,
                          color: Colors.green,
                        ),
                        Container(
                          width: 50.0,
                          height: 100.0,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),                  
                  SizedBox(height:10.0),
                ],
              ),
            )
          )
        ,)
    );
  }
}
