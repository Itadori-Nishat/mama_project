import 'package:flutter/material.dart';
import 'package:masud_project/Intro%20slash%20screen%20ui/Final%20Intro.dart';
import 'package:masud_project/Intro%20slash%20screen%20ui/Intro%201.dart';

class FloatingDialougeBox extends StatefulWidget {
  const FloatingDialougeBox({Key? key}) : super(key: key);

  @override
  State<FloatingDialougeBox> createState() => _FloatingDialougeBoxState();
}

class _FloatingDialougeBoxState extends State<FloatingDialougeBox> {

  final _formKey = GlobalKey<FormState>();

  get houseForm => null;
  void _saveHouse() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                insetPadding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Text('Add House',style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal
                            ),),
                          ),
                        ),
                        Text("Fill the information below to save your address:",style: TextStyle(
                          color: Colors.grey.shade600
                        ),),
                        SizedBox(height: 5,),
                        Form(
                          key: _formKey,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                TextFormField(
                                  maxLines: 2,
                                  minLines: 1,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    prefixIcon: Icon(Icons.house),
                                    border: OutlineInputBorder(),
                                    labelText: 'House Name',
                                  ),
                                  onChanged: (val) {
                                    setState(() {
                                      houseForm['name'] = val;
                                    });
                                  },
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Enter house name';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 15),
                                TextFormField(
                                  maxLines: 2,
                                  minLines: 1,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    prefixIcon: Icon(Icons.location_history),
                                    border: OutlineInputBorder(),
                                    labelText: 'Address',
                                  ),
                                  onChanged: (val) {
                                    setState(() {
                                      houseForm['address'] = val;
                                    });
                                  },
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Enter your address';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 15),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    prefixIcon: Icon(Icons.location_city),
                                    border: OutlineInputBorder(),
                                    labelText: 'City',
                                  ),
                                  onChanged: (val) {
                                    setState(() {
                                      houseForm['city'] = val;
                                    });
                                  },
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'City name';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 15),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    prefixIcon: Icon(Icons.location_city_rounded),
                                    border: OutlineInputBorder(),
                                    labelText: 'State',
                                  ),
                                  onChanged: (val) {
                                    setState(() {
                                      houseForm['state'] = val;
                                    });
                                  },
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Your state';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 15),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    prefixIcon: Icon(Icons.mark_email_unread_outlined),
                                    border: OutlineInputBorder(),
                                    labelText: 'Zip code',
                                  ),
                                  onChanged: (val) {
                                    setState(() {
                                      houseForm['zip_code'] = val;
                                    });
                                  },
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'zip code is required';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 15),
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    prefixIcon: Icon(Icons.call),
                                    border: OutlineInputBorder(),
                                    labelText: 'Caretaker Number',
                                  ),
                                  onChanged: (val) {
                                    setState(() {
                                      houseForm['care_taker_phone'] = val;
                                    });
                                  },
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Enter phone number';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      child: const Text('Cancel'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    ElevatedButton(
                                      child: const Text('Submit'),
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          _saveHouse();
                                          Navigator.of(context).pop();
                                        }
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Intro_1()));
            },
                child: Text("Intro Page 1",style: TextStyle(
            ),)),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => FinalIntroHomePage()));
            },
                child: Text("Final Intro",style: TextStyle(
                ),))
            ,
          ],
        ),
      ),
    );
  }
}


