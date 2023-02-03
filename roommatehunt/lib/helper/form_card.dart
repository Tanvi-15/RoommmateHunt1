import 'package:flutter/material.dart';
import '../Database/Forms.dart';
import 'package:intl/intl.dart';

class FormCard extends StatelessWidget {
  final Forms _forms;
  FormCard(this._forms);
  @override
  Widget build(BuildContext context)
  {
    return Container(
      child:GestureDetector(
          onTap: () {
            print("Click event on Container");
          },
      child:Card(
          color:Colors.purple[100],
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
                        Text('Gender:   '+_forms.gender)
                      ],
                    ),
                    Row(
                      children:[
                        Text('City:   '+_forms.city)
                      ],
                    ),
                    Row(
                      children:[
                        Text('Locality:   '+_forms.locality)
                      ],
                    ),
                    Row(
                      children:[
                        Text('Status:   '+_forms.status)
                      ],
                    ),
                    Row(
                      children:[
                        Text('Nature:   '+_forms.nature)
                      ],
                    ),
                     Row(
                      children:[
                        Text('Design:   '+_forms.nature)
                      ],
                    ),
                    Row(
                      children:[
                        Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child:Text('Budget: '+_forms.budget)
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