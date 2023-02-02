// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class QuizPage extends StatefulWidget{
//   const QuizPage({Key? key}) : super(key: key);

//   @override
//   State<QuizPage> createState() => _QuizPageState();
// }

// class _QuizPageState extends State<QuizPage>{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Welcome to Quiz"),
//         centerTitle: true,
//         ),
//         body: Container(

//         ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// // import '../widgets/appBar.dart';
// // import '../widgets/navigationDrawer.dart';
// // import '../Database/database.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// // void main() => runApp(MaterialApp(
// //   debugShowCheckedModeBanner: false,
// //   home:  bookingPage(),
// // ));

// class bookingPage extends StatelessWidget
// {
//   User? user = FirebaseAuth.instance!.currentUser!;
//   final nameController = TextEditingController();
//   final therapistController = TextEditingController();
//   final contactController = TextEditingController();
//   final cityController = TextEditingController();
//   final countryController = TextEditingController();
//   //const bookingPage({Key? key}) : super(key: key);
//   static const String routeName = '/booking';
//   var flag = false;
//   var _formKey = GlobalKey<FormState>();
//   var isLoading = false;
//   void _submit() {
//     final isValid = _formKey.currentState!.validate();
//     if (!isValid) {
//       return;
//     }
//     _formKey.currentState!.save();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return  WillPopScope(
//         onWillPop: () async
//         {
//           return false;
//         },
//      child: Scaffold(
//       resizeToAvoidBottomInset : false,
//       // appBar: appBar(context),
//       // endDrawer: navigationDrawer(),
//       backgroundColor: Colors.purple[50],
//       body: SingleChildScrollView(
//     child:Center(
//       child:Form(
//         child:Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             SizedBox(height:36),
//             Text(
//               'Book a Therapy Session',
//               style: TextStyle(
//                 color: Colors.purple[700],
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height:5),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical:30),
//               child:Form(
//                 key: _formKey,
//                 child: Column(
//                   children:[
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal:25),
//                       child:TextFormField(
//                           controller: nameController,
//                           keyboardType: TextInputType.emailAddress,
//                           decoration:InputDecoration(
//                             labelText:'Name*',
//                             hintText:'Your Name',
//                           ),
//                           validator: (value) {
//                           if (value!.isEmpty) {
//                             flag = true;
//                           return 'Name cant be empty!';
//                           }
//                           return null;
//                           },
//                       ),
//                     ),
//                     SizedBox(height:30),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal:25),
//                       child:TextFormField(
//                           controller: therapistController,
//                           keyboardType: TextInputType.emailAddress,
//                           decoration:InputDecoration(
//                             labelText:'Preferred Therapist*',
//                             hintText:'Name',
//                           ),
//                           validator: (value) {
//                           if (value!.isEmpty) {
//                             flag = true;
//                           return 'Therapist Name cant be empty!';
//                           }
//                           return null;
//                           },
//                       ),
//                     ),
//                     SizedBox(height:30),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal:25),
//                       child:TextFormField(
//                           controller: contactController,
//                           keyboardType: TextInputType.visiblePassword,
//                           decoration:InputDecoration(
//                             labelText:'Contact*',
//                             hintText:'Your Contact number',
//                           ),
//                           validator: (value) {
//                           if (value!.isEmpty ||
//                           !RegExp(r"^[+][(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]$")
//                               .hasMatch(value)) {
//                             flag=true;
//                           return 'Enter a valid phone number!';
//                           }
//                           return null;
//                           },
//                       ),
//                     ),
//                     SizedBox(height:30),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal:25),
//                       child:TextFormField(
//                           controller: cityController,
//                           keyboardType: TextInputType.visiblePassword,
//                           decoration:InputDecoration(
//                             labelText:'City*',
//                             hintText:'Your City',
//                           ),
//                           validator: (value) {
//                           if (value!.isEmpty) {
//                             flag = true;
//                           return 'City cant be empty!';
//                           }
//                           return null;
//                           },
//                       ),
//                     ),
//                     SizedBox(height:30),
//                     Padding(
//                       padding: EdgeInsets.symmetric(horizontal:25),
//                       child:TextFormField(
//                           controller: countryController,
//                           keyboardType: TextInputType.visiblePassword,
//                           decoration:InputDecoration(
//                             labelText:'Country*',
//                             hintText:'Your Country',
//                           ),
//                           validator: (value) {
//                           if (value!.isEmpty) {
//                             flag=true;
//                           return "Country can't be empty";
//                           }
//                           return null;
//                           },
//                       ),
//                     ),
//                     SizedBox(height:40),
//                     MaterialButton(
//                       onPressed:()
//                       {
//                         if(flag==false)
//                         {
//                           final String name = nameController.text.trim();
//                           final String therapist = therapistController.text
//                               .trim();
//                           final String contact = contactController.text.trim();
//                           final String city = cityController.text.trim();
//                           final String country = countryController.text.trim();
//                           // void add() async
//                           // {
//                           //   await DatabaseService(uid: user!.uid)
//                           //       .updateUserData(
//                           //       name, therapist, contact, city, country);
//                           // };
//                           _submit();
//                           final snackBar = SnackBar(
//                             content: const Text(
//                                 'A session has been booked! An email will be sent soon!'),
//                             action: SnackBarAction(
//                               label: 'Alert',
//                               onPressed: () {
//                                 // Some code to undo the change.
//                               },
//                             ),
//                           );
//                           ScaffoldMessenger.of(context).showSnackBar(snackBar);
//                           // add();
//                           Navigator.pushNamed(context, '/bookings');
//                         }
//                         else
//                           {
//                             final snackBar = SnackBar(
//                               content: const Text(
//                                   'Re-enter correct form values!'),
//                               action: SnackBarAction(
//                                 label: 'Alert',
//                                 onPressed: () {
//                                   // Some code to undo the change.
//                                 },
//                               ),
//                             );
//                             ScaffoldMessenger.of(context).showSnackBar(snackBar);

//                           }
//                       },
//                       child:Text('Book'),
//                       minWidth: 150.0,
//                       color:Colors.purple[100],
//                       textColor:Colors.purple[700],
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(25.0),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       ),
//       ),
//      ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Tell Us Something About Yourself',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // The inital group value
  String _selectedGender = 'male';
  String _selectedCity = 'Mumbai';
  String _selectedStatus = 'College';
  String _selectedNo = '1';
  String _selecteda = 'aesthetic';
  String _selecteds = 'silent';
  final budgetController = TextEditingController();
  final areaController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Tell Us Something About Yourself',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Please let us know your gender:'),
                ListTile(
                  leading: Radio<String>(
                    value: 'male',
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  title: const Text('Male'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'female',
                    groupValue: _selectedGender,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  title: const Text('Female'),
                ),
                const SizedBox(height: 25),
                const Text('Please let us know your city:'),
                ListTile(
                  leading: Radio<String>(
                    value: 'Mumbai',
                    groupValue: _selectedCity,
                    onChanged: (value) {
                      setState(() {
                        _selectedCity = value!;
                      });
                    },
                  ),
                  title: const Text('Mumbai'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Delhi',
                    groupValue: _selectedCity,
                    onChanged: (value) {
                      setState(() {
                        _selectedCity = value!;
                      });
                    },
                  ),
                  title: const Text('Delhi'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Jaipur',
                    groupValue: _selectedCity,
                    onChanged: (value) {
                      setState(() {
                        _selectedCity = value!;
                      });
                    },
                  ),
                  title: const Text('Jaipur'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Bangalore',
                    groupValue: _selectedCity,
                    onChanged: (value) {
                      setState(() {
                        _selectedCity = value!;
                      });
                    },
                  ),
                  title: const Text('Bangalore'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Kolkata',
                    groupValue: _selectedCity,
                    onChanged: (value) {
                      setState(() {
                        _selectedCity = value!;
                      });
                    },
                  ),
                  title: const Text('Kolkata'),
                ),
                const SizedBox(height: 25),
                const Text('Please let us know your Locality:'),
                TextFormField(
                  controller: areaController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration:InputDecoration(
                    labelText:'',
                    hintText:'Your Locality',
                  ),
                ),
                const SizedBox(height: 25),
                const Text('Please let us know your Work Status:'),
                ListTile(
                  leading: Radio<String>(
                    value: 'College',
                    groupValue: _selectedStatus,
                    onChanged: (value) {
                      setState(() {
                        _selectedStatus = value!;
                      });
                    },
                  ),
                  title: const Text('College'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Work',
                    groupValue: _selectedStatus,
                    onChanged: (value) {
                      setState(() {
                        _selectedStatus = value!;
                      });
                    },
                  ),
                  title: const Text('Work'),
                ),
                const SizedBox(height: 25),
                const Text('Please let us know your nature:'),
                ListTile(
                  leading: Radio<String>(
                    value: 'Silent Reader',
                    groupValue: _selecteds,
                    onChanged: (value) {
                      setState(() {
                        _selecteds = value!;
                      });
                    },
                  ),
                  title: const Text('Silent Reader'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Party Person',
                    groupValue: _selecteds,
                    onChanged: (value) {
                      setState(() {
                        _selecteds = value!;
                      });
                    },
                  ),
                  title: const Text('Party Person'),
                ),
                const SizedBox(height: 25),
                const Text('Please let us know your design preferences:'),
                ListTile(
                  leading: Radio<String>(
                    value: 'Aesthetic',
                    groupValue: _selecteda,
                    onChanged: (value) {
                      setState(() {
                        _selecteda = value!;
                      });
                    },
                  ),
                  title: const Text('Aesthetic'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Minimalistic',
                    groupValue: _selecteda,
                    onChanged: (value) {
                      setState(() {
                        _selecteds = value!;
                      });
                    },
                  ),
                  title: const Text('Minimilistic'),
                ),
                const SizedBox(height: 25),
                const Text('Please let us know your Budget:'),
                TextFormField(
                  controller: budgetController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration:InputDecoration(
                    labelText:'',
                    hintText:'Your Budget',
                  ),
                ),
                const SizedBox(height: 25),
                const Text('Please let us know your number of preferred roomates:'),
                ListTile(
                  leading: Radio<String>(
                    value: '1',
                    groupValue: _selectedNo,
                    onChanged: (value) {
                      setState(() {
                        _selectedNo = value!;
                      });
                    },
                  ),
                  title: const Text('1'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: '2',
                    groupValue: _selectedNo,
                    onChanged: (value) {
                      setState(() {
                        _selectedNo = value!;
                      });
                    },
                  ),
                  title: const Text('2'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: '3',
                    groupValue: _selectedNo,
                    onChanged: (value) {
                      setState(() {
                        _selectedNo = value!;
                      });
                    },
                  ),
                  title: const Text('3'),
                ),
                const SizedBox(height: 25),
              ],
            )
        ),
      ),
    );
  }
}
      