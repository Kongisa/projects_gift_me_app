import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FoodItems extends StatefulWidget {
  @override
  _FoodItemsState createState() => _FoodItemsState();
}

class _FoodItemsState extends State<FoodItems> {
  bool isRememberMe = false;
  bool isHiddenPassword = true;
  late String email, password;

  late String valueChoose;
  String? value;

  final items = ['Excellent', 'Very Good ', 'Good', 'Bad', 'Very Bad'];

  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 800),
          child: Text(
            'Food Items',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget _buildContainer2() {
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
                    children: [],
                  ),
                  SizedBox(height: 30),
                  _buildNamer(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(500))),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 25), child: _buildImage()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
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
            prefixIcon: Icon(Icons.keyboard, color: Color(0xFF1F68AC)),
            hintText: "Item Name",
            hintStyle: TextStyle(color: Colors.black38)),
      ),
    );
  }

  Widget _buildNamer2() {
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
            prefixIcon: Icon(Icons.description, color: Color(0xFF1F68AC)),
            hintText: "Description",
            hintStyle: TextStyle(color: Colors.black38)),
      ),
    );
  }

  Widget _buildNamer3() {
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
            prefixIcon: Icon(Icons.lock_clock, color: Color(0xFF1F68AC)),
            hintText: "Drop Off Time",
            hintStyle: TextStyle(color: Colors.black38)),
      ),
    );
  }

  Widget _buildNamer4() {
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
            prefixIcon: Icon(Icons.hourglass_bottom, color: Color(0xFF1F68AC)),
            hintText: "Use Before",
            hintStyle: TextStyle(color: Colors.black38)),
      ),
    );
  }

  Widget _buildImage() {
    return Icon(Icons.add_a_photo_rounded, size: 80);
  }

  Widget _buildItems() {
    return DropdownButton<String>(
      value: value,
      isExpanded: true,
      items: items.map(buildMenuItem).toList(),
      onChanged: (value) {
        setState(() {
          this.value = value;
        });
      },
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
            onPressed: (){}, child: Text('Submit', style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5
            ),))
        )
      ],

    );
  }

  Widget _buildText() {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Text(
        'Quality',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _buildText2() {
    return Padding(
      padding: EdgeInsets.only(right: 180),
      child: Text(
        'Anonymous',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _buildCheckBox() {
    return Padding(
      padding: EdgeInsets.only(right: 1),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        Container(
          height: 250,
          width: MediaQuery.of(context).size.width,
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(40),
                    bottomRight: const Radius.circular(40),
                  ))),
        ),
        Padding(
            padding: EdgeInsets.only(left: 140, top: 40),
            child: Text(
              'Food Item',
              style: TextStyle(color: Colors.white, fontSize: 25),
            )),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Padding(padding: EdgeInsets.only(top: 20), child: _buildLogo()),
            SizedBox(height: 10),
            //_buildImage(),
            Padding(
                padding: EdgeInsets.only(bottom: 400),
                child: _buildContainer()),
            SizedBox(height: 10),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 320),
            _buildNamer(),
            SizedBox(height: 20),
            _buildNamer2(),
            SizedBox(height: 10),
            _buildText(),
            SizedBox(height: 10),
            _buildItems(),
            SizedBox(height: 20),
            _buildNamer3(),
            SizedBox(height: 20),
            _buildNamer4(),
            SizedBox(height: 5),
            Row(
              children: [
                
                _buildCheckBox(),
                _buildText2()
                
               
              
              ],
            ),
            SizedBox(height: 5),
             _buildLoginButton(),
          ],
        )
      ],
    )));
  }

  DropdownMenuItem<String> buildMenuItem(String item) {
    return DropdownMenuItem(
      value: item,
      child: Padding(
        padding: EdgeInsets.only(left: 12),
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
