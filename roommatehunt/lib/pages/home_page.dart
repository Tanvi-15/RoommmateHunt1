import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Injuries"),
        actions: [
          IconButton(onPressed: () {  
            showSearch(context: context, delegate: CustomSearchDelegate(),);
          }, icon: const Icon(Icons.search))
        ],),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10,
          children: [
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Burns 🔥'),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Dog Bite'),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Road Accident'),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Sprained Leg'),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Lorem'),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Ipsum'),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Lorem'),
              ),
            ),Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Ipsum'),
              ),
            ),

          ],
        ),
      )
      // body: Container(
      //   child: Padding(
      //     padding: const EdgeInsets.all(10.0),
      //     child: GridView(
      //       children:[
      //         Container(decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20),
      //           color: Colors.red,),
      //           ),
                
      //         Container(decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20),
      //           color: Colors.yellow,),
      //           ),
      //         Container(decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20),
      //           color: Colors.green,),
      //           ),
      //         Container(decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(20),
      //           color: Colors.blue,),
      //           ),
      //       ],
      //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 2,
      //         mainAxisSpacing: 10,
      //         crossAxisSpacing: 10 ),
      //     ),
      //   ),
      // ),
      

    );
  }
}

class CustomSearchDelegate extends SearchDelegate{
  List<String> searchTerms =[
    'Apple',
    'Banana',
    'Pear',
    'Watermelons',
    'Oranges',
    'Blueberries',
    'Strawberries',
    'Raspberries',
  ];
  @override
  List<Widget> buildActions(BuildContext context){
    return[
      IconButton(
        onPressed: (){

        }, 
      icon: const Icon(Icons.clear),),
    ];
  }

  @override 
  Widget buildLeading(BuildContext context){
    return IconButton(onPressed:(){
      close(context, null);
      }, 
      icon: Icon(Icons.arrow_back),);
  }

  @override 
  Widget buildResults(BuildContext context){
    List<String> matchQuery=[];
    for (var fruit in searchTerms){
      if(fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    }

    return ListView.builder(itemCount: matchQuery.length,
    itemBuilder: (context, index) {
      var result = matchQuery[index];
      return ListTile(
        title: Text(result),
      );
    });
  }

  @override 
  Widget buildSuggestions(BuildContext context){
    List<String> matchQuery=[];
    for (var fruit in searchTerms){
      if(fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    }

    return ListView.builder(itemCount: matchQuery.length,
    itemBuilder: (context, index) {
      var result = matchQuery[index];
      return ListTile(
        title: Text(result),
      );
    });
  }
}