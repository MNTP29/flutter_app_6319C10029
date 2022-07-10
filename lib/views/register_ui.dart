import 'package:flutter/material.dart';
import 'package:flutter_app_6319c10029/views/login_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class RegisterUI extends StatefulWidget {
  const RegisterUI({Key? key}) : super(key: key);

  @override
  State<RegisterUI> createState() => _RegisterUIState();
}

class _RegisterUIState extends State<RegisterUI> {
   Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }
 
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 215, 219, 211),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 215, 219, 211),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: Center(
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Let's Get Started!",
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Creat new account for Flutter Dev.',
                      style: TextStyle(fontSize: 17.0, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'ป้อนรหัสนักศึกษา',
                        prefixIcon: Icon(
                          FontAwesomeIcons.user,
                          color: Colors.blue,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          gapPadding: 5,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          gapPadding: 5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'ป้อนอีเมล์',
                        prefixIcon: Icon(
                          FontAwesomeIcons.envelope,
                          color: Colors.blue,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          gapPadding: 5,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          gapPadding: 5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'ป้อนเบอร์โทรศํพท์',
                        prefixIcon: Icon(
                          FontAwesomeIcons.phone,
                          color: Colors.blue,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          gapPadding: 5,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          gapPadding: 5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'ป้อนรหัสผ่าน',
                        prefixIcon: Icon(
                          FontAwesomeIcons.lock,
                          color: Colors.blue,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          gapPadding: 5,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          gapPadding: 5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'ป้อนรหัสยืนยัน',
                        prefixIcon: Icon(
                          FontAwesomeIcons.lock,
                          color: Colors.blue,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          gapPadding: 5,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                          gapPadding: 5,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                onPressed: () {},
                child: Text(
                  'REGISTER',
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 13, 33, 84),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                  fixedSize: Size(
                    250.0,
                    60.0,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  TextButton(onPressed: () {
                            var rount = MaterialPageRoute(
                              builder: (context) => LoginUI(),
                            );
                            Navigator.of(context).push(rount);
                          },
                  child: const Text(
                    'Login here',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Color.fromARGB(255, 4, 148, 251),
                  ),
                   ),
                  ),
                ],
              ),
                  ],
                ))));
  }
}
