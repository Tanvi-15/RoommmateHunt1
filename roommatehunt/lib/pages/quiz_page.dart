import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../service/database.dart';
import 'profiles.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // The inital group value
  User? user = FirebaseAuth.instance.currentUser!;
  String _selectedGender = 'male';
  String _selectedCity = 'Mumbai';
  String _selectedStatus = 'College';
  String _selectedNo = '1';
  String _selecteda = 'aesthetic';
  String _selecteds = 'silent';
  String _selectedf = 'Veg';
  String _selectedalc = 'Alcoholic';
  final budgetController = TextEditingController();
  final areaController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();
  bool? check1 = false, check2 = true, check3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Help us know you',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Please let us know your name:'),
                TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration:InputDecoration(
                    labelText:'',
                    hintText:'Your Name',
                  ),
                ),
                const SizedBox(height: 25),
                const Text('Please let us know your phone number:'),
                TextFormField(
                  controller: phoneController,
                  keyboardType: TextInputType.visiblePassword,
                  decoration:InputDecoration(
                    labelText:'',
                    hintText:'Your Phone Number',
                  ),
                ),
                const SizedBox(height: 25),
                const Text('Please let us know your food preferences:'),
                ListTile(
                  leading: Radio<String>(
                    value: 'Veg',
                    groupValue: _selectedf,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  title: const Text('Veg'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Non Veg',
                    groupValue: _selectedf,
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  title: const Text('Non Veg'),
                ),
                const SizedBox(height: 25),            
                const Text('Are you a:'),
                ListTile(
                  leading: Radio<String>(
                    value: 'Alcoholic',
                    groupValue: _selectedalc,
                    onChanged: (value) {
                      setState(() {
                        _selectedalc = value!;
                      });
                    },
                  ),
                  title: const Text('Alcoholic'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'Smoker',
                    groupValue: _selectedalc,
                    onChanged: (value) {
                      setState(() {
                        _selectedalc = value!;
                      });
                    },
                  ),
                  title: const Text('Smoking'),
                ),
                ListTile(
                  leading: Radio<String>(
                    value: 'None',
                    groupValue: _selectedalc,
                    onChanged: (value) {
                      setState(() {
                        _selectedalc = value!;
                      });
                    },
                  ),
                  title: const Text('None'),
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
                        _selecteda = value!;
                      });
                    },
                  ),
                  title: const Text('Minimalistic'),
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
                MaterialButton(
                  onPressed: ()
                {
                     final String name = nameController.text.trim();
                     final String phone = phoneController.text.trim();
                     final String food = _selectedf;
                     final String alcohol = _selectedalc;
                     final String gender = _selectedGender;
                     final String city = _selectedCity;
                     final String locality = areaController.text.trim();
                     final String status = _selectedStatus;
                     final String nature =_selecteds;
                     final String design =_selecteda;
                     final String budget =budgetController.text.trim();
                     void add() async
                          {
                            await DatabaseService(uid: user!.uid)
                                .updateUserData(
                                name,phone,food,alcohol,gender, city, locality, status, nature, design, budget);
                          };                  
                          final snackBar = SnackBar(
                            content: const Text(
                                'Your interests were recorded'),
                            action: SnackBarAction(
                              label: 'Alert',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          add();
                           Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Profiles()),
                          );
                        },
                  // submit();
                child: Text("Submit"))
              ],
            ),
        ),
      ),
    );
  }
}