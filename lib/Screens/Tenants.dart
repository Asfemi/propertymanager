import 'package:flutter/material.dart';
import 'package:propertymanager/Components/RoundIconButton.dart';
import 'package:propertymanager/Screens/AddTenants.dart';

class Tenants extends StatefulWidget {
  static String id = 'tenants';

  @override
  _TenantsState createState() => _TenantsState();
}

class _TenantsState extends State<Tenants> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Tenants'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Hero(
                tag: '4',
                child: Container(
                  height: 400,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/104.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      //height: 335, //size.height * 0.5,
                      width: size.width - 16,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.23),
                              blurRadius: 10,
                              offset: Offset(0, 5))
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Add Tenants:',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                            Align(
                                alignment: Alignment.topRight,
                                child: RoundIconButton(
                                  onpressed: () {
                                    Navigator.pushNamed(context, AddTenants.id);
                                  },
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //Todo: tenant moving in
              //Tenant refrencing
              //negotiate and agree rent
              //property inventory
              //handle security deposits
              //comply with property safety standard
              //Todo: planned or unplanned tenant exit
              //check inventory
              //negotiate deport return
              //check out move out
              //evict tenant
              //arrange end of tenancy cleaning
            ],
          ),
        ),
      ),
    );
  }
}
