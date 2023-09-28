import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Practis extends StatelessWidget {
  const Practis({super.key});

  @override
  Widget build(BuildContext context) {
    final  positive =  BoxShadow(
      blurRadius: 19,
      spreadRadius: 1.4,
      color: Colors.grey.shade700,
      offset: Offset(5,5),
    );
    final negitive =  BoxShadow(
      color: Colors.white,
      blurRadius: 19,
      spreadRadius: 1.4,
      offset: Offset(-5,-5),
    );
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.orange[100],
          ),
          Positioned(
            top: 400,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height*0.7,
             decoration: BoxDecoration(
               color: Colors.grey[300],
               borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
             ),
            ),
          ),
          Positioned(
            top: 200,
            left: 40,
            right: 40,
            child: Container(
              height: 525,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  positive,
                  negitive
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10,left: 15,right: 15),
                child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                positive,
                                negitive,
                              ]
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: (){},
                              icon:FaIcon(FontAwesomeIcons.connectdevelop)
                            )
                          ),
                        ),
                        const SizedBox(height: 20,),

                      TextInputFileds(tittle: 'Enter username', icon: Icons.person),
                        const SizedBox(height: 25,),
                        TextInputFileds(tittle: 'Enter email', icon: Icons.alternate_email),
                        const SizedBox(height: 25,),
                        TextInputFileds(tittle: 'Enter password', icon: Icons.password,obsecuretext: true,),
                        const SizedBox(height: 35,),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                positive,
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 30,
                                  spreadRadius: 1,
                                  offset: Offset(-5,-5),
                                )
                              ],
                            ),
                            child: Center(
                             child: Text('Sign up',style: TextStyle(color: Colors.white,fontSize: 19),),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  positive,
                                  negitive,
                                ]
                              ),
                              child: Center(
                                child: IconButton(
                                  onPressed: (){},
                                  icon: FaIcon(FontAwesomeIcons.googlePlusG),
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    positive,
                                    negitive,
                                  ]
                              ),
                              child: Center(
                                child: IconButton(
                                  onPressed: (){},
                                  icon: FaIcon(FontAwesomeIcons.facebookF),
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    positive,
                                    negitive,
                                  ]
                              ),
                              child: Center(
                                child: IconButton(
                                  onPressed: (){},
                                  icon: FaIcon(FontAwesomeIcons.twitter),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TextInputFileds extends StatelessWidget {
  final String tittle;
  final bool obsecuretext ;
  final IconData icon;
  const TextInputFileds({super.key,required this.tittle,required this.icon,this.obsecuretext=false});

  @override
  Widget build(BuildContext context) {
    final  positive =  BoxShadow(
      blurRadius: 19,
      spreadRadius: 1.4,
      color: Colors.grey.shade700,
      offset: Offset(5,5),
    );
    final negitive =  BoxShadow(
      color: Colors.white,
      blurRadius: 19,
      spreadRadius: 1.4,
      offset: Offset(-5,-5),
    );
    final borders=OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.transparent)
    );
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          positive,
          negitive
        ],
      ),
      child: Center(
        child: TextField(
          obscureText: obsecuretext,
          decoration: InputDecoration(
            hintText: tittle,
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(icon,color: Colors.grey,),
            enabledBorder: borders,
            focusedBorder: borders,
          ),
        ),
      ),
    );
  }
}

