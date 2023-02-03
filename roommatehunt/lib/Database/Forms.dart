class Forms {
  String name;
  String phone;
  String food;
  String gender;
  String alcohol;
  String city;
  String locality;
  String status;
  String nature;
  String design;
  String budget;


  Map<String, dynamic> toJson() => {'name':name,'phone':phone,'food':food,'alcohol':alcohol,'gender': gender, 'city': city, 'locality':locality,'status':status,
  'nature': nature, 'design': design, 'budget': budget};

  Forms.fromSnapshot(snapshot)
      : name = snapshot.data()['name'],
      phone = snapshot.data()['phone'],
      food = snapshot.data()['food'],
      gender = snapshot.data()['gender'],
      alcohol = snapshot.data()['alcohol'],
      city = snapshot.data()['city'],
      locality = snapshot.data()['locality'],
      status = snapshot.data()['status'],
      nature = snapshot.data()['nature'],
      design = snapshot.data()['design'],
      budget = snapshot.data()['budget'];
}
        
