import 'package:flutter/material.dart';

void main() => runApp(
      Column(
        children: <Widget>[
          Text('Deliver features faster', textDirection: TextDirection.ltr,),
          Text('Craft beautiful UIs', textDirection: TextDirection.ltr,),
          Text('Testando outro text', textDirection: TextDirection.ltr,),

          Expanded(
            child:	FittedBox(
              fit:	BoxFit.contain,	//	otherwise	the	logo	will	be	tiny
              child:	const	FlutterLogo(),
            ),
          ),
      Column(
            children : <Widget>[
             Text('Outro Texto', textDirection: TextDirection.ltr,),


    ],
   ),
  ],
 ),
);