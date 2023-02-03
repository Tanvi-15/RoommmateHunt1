import 'package:flutter/material.dart';
import '../Database/Forms.dart';
import 'package:intl/intl.dart';

import '../pages/home_page.dart';
import '../widgets/widgets.dart';

class FormCard extends StatelessWidget {
  final Forms _forms;
  FormCard(this._forms);
  @override
  Widget build(BuildContext context)
  {
    return Container(
      child:GestureDetector(
          onTap: () {
            nextScreen(context, const HomePage());
          },
      child:Card(
          color:Colors.blue,
          margin: EdgeInsets.all(15),
          child: SizedBox(
              width: 50,
              height: 158,
              child:Padding(
                padding:const EdgeInsets.all(11.0),
                child:Column(
                  children:[
                    Row(
                      children:[
                        Text('Gender:   '+_forms.gender,
                        style: TextStyle(
                          color: Colors.white,
                        ),)
                      ],
                    ),
                    Row(
                      children:[
                        Text('City:   '+_forms.city,
                        style: TextStyle(
                          color: Colors.white,
                        ))
                      ],
                    ),
                    Row(
                      children:[
                        Text('Locality:   '+_forms.locality,
                        style: TextStyle(
                          color: Colors.white,
                        ))
                      ],
                    ),
                    Row(
                      children:[
                        Text('Status:   '+_forms.status,
                        style: TextStyle(
                          color: Colors.white,
                        ))
                      ],
                    ),
                    Row(
                      children:[
                        Text('Nature:   '+_forms.nature,
                        style: TextStyle(
                          color: Colors.white,
                        ))
                      ],
                    ),
                     Row(
                      children:[
                        Text('Design:   '+_forms.nature,
                        style: TextStyle(
                          color: Colors.white,
                        ))
                      ],
                    ),
                    Row(
                      children:[
                        Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child:Text('Budget: '+_forms.budget,
                            style: TextStyle(
                          color: Colors.white,
                        ))
                        ),
                      ],
                    )
                  ],
                ),
              )
          )
      ),
      ),
    );
  }
}