import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isRememberMe = false;
  bool isHiddenPassword = true;
  late String email, password;

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Details",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      
                    ],
                  ),
                  SizedBox(height: 30),
                  _buildNamer(),
                  SizedBox(height: 20),
                  _buildSurname(),
                  SizedBox(height: 20),
                  _buildGender(),
                  _buildDivider(),
                  SizedBox(height: 20),
                  _buildEmail(),
                  SizedBox(height: 20),
                  _buildPassworder(),
                  SizedBox(height: 20),
                  _buildPassworder2(),
                  
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sign Up',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget _buildProfile() {
    return Container(
        width: 180.0, height: 140.0, child: Icon(Icons.add_a_photo, size: 80));
  }

  Widget _buildNamer() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: InputDecoration(
            //border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.person, color: Color(0xFF1F68AC)),
            hintText: "Name",
            hintStyle: TextStyle(color: Colors.black38)),
      ),
    );
  }

  Widget _buildSurname() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: InputDecoration(
            //border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.person, color: Color(0xFF1F68AC)),
            hintText: "Surname",
            hintStyle: TextStyle(color: Colors.black38)),
      ),
    );
  }

  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: InputDecoration(
            //border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.email, color: Color(0xFF1F68AC)),
            hintText: "Email",
            hintStyle: TextStyle(color: Colors.black38)),
      ),
    );
  }

  Widget _buildGender() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 130),
          child: Text(
            'Gender',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Transform.scale(
              scale: 1.0,
              child: Theme(
                  data: ThemeData(unselectedWidgetColor: Colors.blue),
                  child: Checkbox(
                    value: isRememberMe,
                    checkColor: Colors.white,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        isRememberMe = value!;
                      });
                    },
                  )),
            ),
            Icon(Icons.male, size: 30),
            SizedBox(width: 170),
            Transform.scale(
              scale: 1.0,
              child: Theme(
                data: ThemeData(unselectedWidgetColor: Colors.blue),
                child: Checkbox(
                  value: isRememberMe,
                  checkColor: Colors.white,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    setState(() {
                      isRememberMe = value!;
                    });
                  },
                ),
              ),
            ),
            Icon(Icons.female, size: 30),
          ],
        )
      ],
    );
  }

  Widget _buildPassworder() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
            //border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.lock, color: Color(0xFF1F68AC)),
            suffixIcon: InkWell(
                onTap: _togglePasswordView,
                child: Icon(Icons.visibility, color: Color(0xFF1F68AC))),
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.black38)),
      ),
    );
  }

  Widget _buildPassworder2() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
            //border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(Icons.lock, color: Color(0xFF1F68AC)),
            suffixIcon: InkWell(
                onTap: _togglePasswordView,
                child: Icon(Icons.visibility, color: Color(0xFF1F68AC))),
            hintText: "Password Confirm",
            hintStyle: TextStyle(color: Colors.black38)),
      ),
    );
  }

   Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 45,
          width: 160,
          margin: EdgeInsets.only(bottom: 20),
          child:RaisedButton(
            elevation: 5.0,
            color: Colors.blue,
            onPressed: (){}, child: Text('SignUp', style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5
            ),))
        )
      ],

    );
  }

  Widget _buildSignInButton() {
    return GestureDetector(
        onTap: () => print("Sign In Pressed"),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Already have an Account?',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextSpan(
                text: ' Sign Up',
                style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 18,
                fontWeight: FontWeight.bold
                )
              ),
            ],
          ),
        ));
  }

  Widget _buildDivider() {
    return Divider(
      color: Colors.grey,
      thickness: 1.2,
      indent: 5,
      endIndent: 5,
    );
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(40),
                      bottomRight: const Radius.circular(40),
                    ))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildLogo(),
              SizedBox(height: 10),
              _buildProfile(),
              SizedBox(height: 10),
              _buildContainer(),
              SizedBox(height: 20),
              _buildLoginButton(),
              _buildSignInButton()
            ],
          )
        ],
      ),
    ));
  }
   void _togglePasswordView() {
    isHiddenPassword = !isHiddenPassword;

    setState(() {});
  }
}
