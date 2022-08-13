import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
 static const String id = 'HomePage';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
            Colors.green.shade900,
              Colors.green.shade500,
              Colors.green.shade500,

          ],

          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 130,
            ),
            Padding(padding:EdgeInsets.all(20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Login',style: TextStyle(color: Colors.white,fontSize: 40,),),
                SizedBox(height: 10,),
                Text('Welcome back',style: TextStyle(color: Colors.white,fontSize: 40),)
              ],
            ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(child: Container(

              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(60),topRight: Radius.circular(60)),color: Colors.white),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [BoxShadow(
                            color: Color.fromRGBO(171, 171, 171,.7),blurRadius: 20,offset:Offset(0,10)
                          )]
                        ),
                        child: Column(
                          children: [

                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none
                                ),
                              )
                            )

                          ],
                        ),
                      ),
                      SizedBox(height: 40,),

                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.green.shade800,
                        ),
                        child: Center(child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.normal),)),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Login with Sns',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),

                      SizedBox(height: 30,),

                      Row(
                        children: [
                          Expanded(child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.blue
                            ),
                            child: Center(
                              child: Text('Facebook',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
                          SizedBox(width: 30),

                          Expanded(
                              child: Container(
                            height: 50,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Colors.black),
                                child: Center(
                                  child: Text('Github',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                ),
                          ),

                          )
                        ],
                      )

                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
