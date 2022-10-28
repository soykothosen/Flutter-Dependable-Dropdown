import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List ?data1;
  String ?upazilla, union;
  String? upazilla_id;

 List data = [
  {
  "id": 7,
  "name": "শিবগঞ্জ উপজেলা",
  "zilla_id": 3
  },
  {
  "id": 8,
  "name": "সোনাতলা উপজেলা",
  "zilla_id": 3
  },
  {
  "id": 44,
  "name": "sherpur",
  "zilla_id": 3
  }
  ];


 Allunion(val){
    data1 = [
     {
       "id": 15,
       "name": "গোকুল",
       "upazilla": 8
     }
   ];
 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Color(0xFF198754),
          centerTitle: true,
          title: Text('Drop Down'),
        ),


        body: Column(
          children: [

            SizedBox(
              height: 15.0,
            ),


            //Upazilla
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF0F0909),),
                borderRadius: BorderRadius.circular(5.00),
              ),
              child: DropdownButtonHideUnderline(
                child: Container(
                  height: 55.0,
                  child: DropdownButton<String>(



                    hint: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Upazilla Name", style: TextStyle(
                          color: Colors.grey,
                        ),


                        )),
                    icon: Icon(Icons.arrow_drop_down, color: Colors.grey,),
                    value: upazilla,
                    isExpanded: true,
                    items: data?.map<DropdownMenuItem<String>>((item) {

                      return new DropdownMenuItem(
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(item['name'], style: TextStyle(
                            color: Color(0xFF0F0909),
                          ),

                          ),
                        ),
                        value: item['id'].toString(),
                      );
                    }).toList(),
                    //items: allUniversityList.toString().map(buildMenuItem).toString(),
                    // items: universities.map(buildMenuItem).toList(),
                    onChanged: (value) => setState(() {

                      this.upazilla = value;
                      print(value);

                      upazilla_id = value;


                      Allunion(value);


                    }),
                  ),
                ),
              ),
            ) ,



            SizedBox(
              height: 15.0,
            ),

            //Union
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFF0F0909),),
                borderRadius: BorderRadius.circular(5.00),
              ),
              child: DropdownButtonHideUnderline(
                child: Container(
                  height: 55.0,
                  child: DropdownButton<String>(



                    hint: Container(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Union Name", style: TextStyle(
                          color: Colors.grey,
                        ),


                        )),
                    icon: Icon(Icons.arrow_drop_down, color: Colors.grey,),
                    value: union,
                    isExpanded: true,
                    items: data1?.map<DropdownMenuItem<String>>((item) {

                      return new DropdownMenuItem(
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          child: Text(item['name'], style: TextStyle(
                            color: Color(0xFF0F0909),
                          ),

                          ),
                        ),
                        value: item['id'].toString(),
                      );
                    }).toList(),
                    //items: allUniversityList.toString().map(buildMenuItem).toString(),
                    // items: universities.map(buildMenuItem).toList(),
                    onChanged: (value) => setState(() {

                      this.union = value;
                      print(value);

                      //upazilla_id = value;


                      //Allunion(value);


                    }),
                  ),
                ),
              ),
            ) ,


          ],
        ),

      ),
    );
  }
}

