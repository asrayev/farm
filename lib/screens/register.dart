import 'package:farm/screens/homepage.dart';
import 'package:farm/utils/myimages.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

var formKey = GlobalKey<FormState>();
TextEditingController emailcontroller = new TextEditingController();
TextEditingController parolcontroller = new TextEditingController();
TextEditingController numbercontroller = new TextEditingController();

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(right: 20, left: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(Icons.arrow_back_ios_new_outlined)
                  ],
                ),
                SizedBox(height: 29,),
                Center(child: Image.asset(MyImages.registerimg)),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        TextFormField(
                          validator: (value){
                            if (value!.length < 1)
                              return "Email adress is wrong";},
                          controller: emailcontroller,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.emailAddress,
                          decoration:  InputDecoration(
                              hintText: "Email",
                              border:  OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              )
                          ),
                        ),
                        SizedBox(height: 15,),
                        TextFormField(
                          validator: (value){
                            if (value!.length < 1)
                              return "Parol xato";},
                          controller: parolcontroller,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          decoration:  InputDecoration(
                              hintText: "Parol",
                              border:  OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              )
                          ),
                        ),
                        SizedBox(height: 15,),
                        TextFormField(
                          validator: (value){
                            if (value!.length < 1)
                              return "Telefon raqam xato";},
                          controller: numbercontroller,
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.phone,
                          decoration:  InputDecoration(
                              hintText: "Telefon raqami",
                              border:  OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.all(Radius.circular(10))
                              )
                          ),
                        ),
                        SizedBox(height: 40,),
                        Row(
                          children: [
                            Image.asset(MyImages.line, width: 158,),
                            Text("      yoki      ", style: GoogleFonts.amiko().copyWith(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.normal)),
                            Image.asset(MyImages.line, width: 158,),
                          ],
                        )
                      ],
                    )
                ),
                SizedBox(height: 40,),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Color(0xFFCEE8F8),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(MyImages.facebook, height: 18, width: 18,),
                          Text(" Facebook")
                        ],
                      ),

                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 60,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Color(0xFFCEE8F8),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(MyImages.google, height: 18, width: 18,),
                          Text(" Google")
                        ],
                      ),

                    ),
                  ],
                ),
                SizedBox(height: 70,),
                Center(
                  child: InkWell(
                    onTap: ((){
                      formKey.currentState?.validate();
                      formKey.currentState?.validate() == true ?{ Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage())),}: 2==2;
                    }),
                    child: Container(
                      height: 60,
                      width: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFF8843),
                      ),
                      child: Center(
                        child: Text("Ro'yhatdan o'tish", style: GoogleFonts.openSans().copyWith(color: Colors.white, fontSize: 20)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
