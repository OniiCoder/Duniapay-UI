import 'package:flutter/material.dart';

const deepBlue = Color(0xff03034B);
const lightOrange = Color(0xffFFF9EB);
const orange = Color(0xffF6C34C);
const lightGreen = Color(0xffE9FEF7);
const green = Color(0xff1AF0A0);
const faintWhite = Color(0xff1B1C5C);
const faintBlue = Color(0xff4E4E80);
const iconBg = Color(0xff191A5A);
const dividerColor = Color(0xffF3F2F7);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}



class _HomeState extends State<Home> {

  int selected = 3;




  Container MenuContainer ({String label, IconData icon, Color iconAndLabelColor, Color iconBg}) {
    return Container(
      width: 80,
      height: 100,
      child: Column(
        children: <Widget>[
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Icon(icon, color: iconAndLabelColor, size: 30,),
            ),
          ),
          SizedBox(height: 10,),
          Text(
            label,
            style: TextStyle(
              color: iconAndLabelColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              height: 660,
              decoration: BoxDecoration(
                color: deepBlue,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(40), bottomLeft: Radius.circular(40))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 50,),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border(
                        top: BorderSide(
                          color: Colors.white,

                        ),
                        bottom: BorderSide(
                          color: Colors.white,

                        ),
                        left: BorderSide(
                          color: Colors.white,

                        ),
                        right: BorderSide(
                          color: Colors.white,

                        ),
                      )
                    ),
                    child: Center(
                      child: Icon(Icons.apps, color: Colors.white, size: 40,),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {

                        },
                        color: faintWhite,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'Transfer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 25,),
                      FlatButton(
                        onPressed: () {

                        },
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'Balance',
                            style: TextStyle(
                                color: deepBlue,
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'Unpaid Loans',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '35,880',
                        style: TextStyle(
                          fontSize: 38,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        'FCFA',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 1;
                          });
                        },
                        child: MenuContainer(
                          label: 'Wallet',
                          icon: Icons.account_balance_wallet,
                          iconAndLabelColor: (selected == 1) ? Colors.white : faintBlue,
                          iconBg: (selected == 1) ? faintBlue : faintWhite,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 2;
                          });
                        },
                        child: MenuContainer(
                          label: 'Invest',
                          icon: Icons.track_changes,
                          iconAndLabelColor: (selected == 2) ? Colors.white : faintBlue,
                          iconBg: (selected == 2) ? faintBlue : faintWhite,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = 3;
                          });
                        },
                        child: MenuContainer(
                          label: 'Loan',
                          icon: Icons.attach_money,
                          iconAndLabelColor: (selected == 3) ? Colors.white : faintBlue,
                          iconBg: (selected == 3) ? faintBlue : faintWhite,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      FlatButton(
                        onPressed: () {

                        },
                        color: faintBlue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            (selected == 3) ? 'Apply for a loan' : selected == 2 ? 'Acess Investment' : 'See Wallet',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.select_all, color: Colors.white, size: 28,),
                        SizedBox(width: 15,),
                        Text(
                          'Scan QR Code and Nearby Friends',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //scrollable
            DraggableScrollableSheet(
              initialChildSize: 0.28,
              minChildSize: 0.28,
//              maxChildSize: 0.6,
              builder: (BuildContext context, ScrollController scrollController) {
                return SafeArea(
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 6,
                                decoration: BoxDecoration(
                                  color: Color(0xffCDCCDA),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'History',
                                    style: TextStyle(
                                      fontSize: 30,
                                      color: deepBlue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: deepBlue,
                                    child: Icon(Icons.search),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: ListView.builder(
                              controller: scrollController,
                              itemCount: 25,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  padding: EdgeInsets.symmetric(horizontal: 25),
                                  child: Column(
                                    children: <Widget>[
                                      SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            child: Row(
                                              children: <Widget>[
                                                Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    color: (index == 1) ? lightGreen : lightOrange,
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  child: Center(
                                                    child: Icon((index == 1) ? Icons.check : Icons.access_alarm, color: (index == 1) ? green : orange,),
                                                  ),
                                                ),
                                                SizedBox(width: 20,),
                                                Container(
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                      Text(
                                                        (index == 1) ? 'Office Loan' : 'Car Loan',
                                                        style: TextStyle(
                                                          color: deepBlue,
                                                          fontWeight: FontWeight.bold,
                                                          fontSize: 20,
                                                        ),
                                                      ),
                                                      SizedBox(height: 5,),
                                                      Text(
                                                        (index == 1) ? 'Fully Paid: June 17' : 'Next Due: June 17',
                                                        style: TextStyle(
                                                          color: deepBlue,
                                                          fontSize: 15,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Text(
                                                  '\$3588',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: deepBlue,
                                                  ),
                                                ),
                                                SizedBox(height: 5,),
                                                Text(
                                                  (index == 1) ? 'Paid' :'Pending',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: (index == 1) ? green : orange,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Divider(height: 15, color: dividerColor, thickness: 3,),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
