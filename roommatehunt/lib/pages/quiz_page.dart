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
  final budgetController = TextEditingController();
  final areaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();

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
                                gender, city, locality, status, nature, design, budget);
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
      