import 'package:flutter/material.dart';
import 'package:roommatehunt/helper/form_card.dart';
import '../Database/Forms.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home:  Profiles(),
));

User? user = FirebaseAuth.instance.currentUser!;
final String uid=user!.uid;



class Profiles extends StatefulWidget {
  //const Booking ({Key? key}) : super(key: key);

  @override
  _ProfilesState createState() => _ProfilesState();
}

class _ProfilesState extends State<Profiles> {

  List<Object> _profileList = [];
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getUsersProfileList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        resizeToAvoidBottomInset : false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child:Column(
                children: <Widget>[
                const SizedBox(height:40),
            Text(
              'Profiles',
              style: TextStyle(
                fontFamily: 'Parisienne',
                color: Colors.blue[700],
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:15),
            SafeArea(
            child:ListView.builder(
            shrinkWrap: true,
            itemCount:_profileList.length,
            itemBuilder: (context,index)
              {
                return FormCard(_profileList[index] as Forms);
              }
          )
        )
        ],
            ),
        )
    );
  }

  Future getUsersProfileList() async
  {
    User? user = FirebaseAuth.instance.currentUser!;
    final String uid = user.uid;
    var data = await FirebaseFirestore.instance
        .collection('interests')
        .doc(uid)
        .collection('user interests')
        .get();

    setState(() {
      _profileList = List.from(data.docs.map((doc) => Forms.fromSnapshot(doc)));
    });
  }
}
