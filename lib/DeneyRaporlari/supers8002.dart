import 'package:flutter/material.dart';
import 'package:first_app/main.dart';
import 'package:first_app/constants.dart';

import '../utility.dart';

class DeneyRaporlariSuper8002 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NewDrawer(),
      appBar: NewAppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                 _textS8002(ktextSuper8002),
                pdfbutton( kPdfAssetS8002_1, kButton1TextSuper8002),
                pdfbutton( kPdfAssetS8002_2, kButton2TextSuper8002,),
                pdfbutton( kPdfAssetS8002_3 , kButton3TextSuper8002,),
                pdfbutton( kPdfAssetS8002_4, kButton4TextSuper8002,),
                pdfbutton( kPdfAssetS8002_5, kButton5TextSuper8002,),
                pdfbutton( kPdfAssetS8002_6, kButton6TextSuper8002,),    

              ],
            ),
          ),
        ),
      ),
    );
  }


  Container _textS8002(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      color: Colors.white,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 32,
        ),
      ),
    );
  }
}
