import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // #image
            Container(
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://images.unsplash.com/photo-1623018035813-9cfb5b502e04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c3BvdGlmeSUyMGJhY2tncm91bmR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
                  )
              ),
            ),
            // #gradient
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(.5),
                    Colors.black.withOpacity(.3),
                  ]
                )
              ),
            ),
            // #show-case
           Align(
             alignment: Alignment.bottomCenter,
             child:  Container(
               margin: EdgeInsets.only(top: MediaQuery.of(context).size.height /2.9),
               padding: EdgeInsets.all(20),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Container(
                     height: MediaQuery.of(context).size.height/9,
                     width: MediaQuery.of(context).size.width,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                         image: AssetImage("assets/images/ic_logo6.png"),
                       )
                     ),
                   ),
                   const SizedBox(height: 30,),
                   Text("Million of song free on Spotify", style: TextStyle(color: Colors.white, fontSize: 43, fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                   const SizedBox(height: 30,),
                   Container(height: 50, width: double.infinity,
                   margin: EdgeInsets.only(bottom: 10),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(25),
                     color: Colors.green,
                   ),
                     child: Center(
                       child: Text("Sign up free", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                     ),
                   ),
                   // #continue with phone number
                   Container(height: 50, width: double.infinity,
                       margin: EdgeInsets.only(bottom: 10),

                       decoration: BoxDecoration(
                       border: Border.all(width: 2,color: Colors.grey[700]!),
                       borderRadius: BorderRadius.circular(25),
                     ),
                     child: Container(
                       padding: EdgeInsets.symmetric(horizontal: 20),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Icon(CupertinoIcons.device_phone_portrait, color: Colors.white,),
                           Text("Continue with phone number", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),

                         ],
                       ),
                     )

                   ),
                   // #continue with google
                   Container(height: 50, width: double.infinity,
                       margin: EdgeInsets.only(bottom: 10),
                       decoration: BoxDecoration(
                         border: Border.all(width: 2,color: Colors.grey[700]!),
                         borderRadius: BorderRadius.circular(25),
                       ),
                       child: Container(
                         padding: EdgeInsets.symmetric(horizontal: 20),
                         child: Row(
                           children: [
                             Image(image: AssetImage("assets/images/Frame.png")),
                             Expanded(child: Center(child: Text("Continue with Facebook", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),))),

                           ],
                         ),
                       )

                   ),
                   // #continue with facebook
                   Container(height: 50, width: double.infinity,
                       margin: EdgeInsets.only(bottom: 10),

                       decoration: BoxDecoration(
                         border: Border.all(width: 2,color: Colors.grey[700]!),
                         borderRadius: BorderRadius.circular(25),
                       ),
                       child: Container(
                         padding: EdgeInsets.symmetric(horizontal: 20),
                         child: Row(
                         
                           children: [
                             Image(image: AssetImage("assets/images/Vector.png")),

                             Expanded(child: Center(child: Text("Continue with Facebook", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),))),

                           ],
                         ),
                       )

                   ),

                 ],
               ),
             ),
           )

          ],
        ),
      )
    );
  }
}
