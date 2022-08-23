import 'package:flutter/material.dart';
import 'package:icbapps/models/ModelUser.dart';
import 'package:icbapps/screens/withdraw/withdraw_report.dart';
import 'package:icbapps/screens/withdraw/withdraw_request.dart';


class WithdrawCashScreen extends StatefulWidget {
  WithdrawCashScreen({Key? key, required this.modelUser}) : super(key: key);
  ModelUser modelUser;

  @override
  State<WithdrawCashScreen> createState() => _WithdrawCashScreenState();
}

class _WithdrawCashScreenState extends State<WithdrawCashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Withdraw Cash"),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WithDrawRequest(modelUser: widget.modelUser)));
              }, child: Text("Withdraw Request")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WithdrawReport(modelUser: widget.modelUser)));

              }, child: Text("Withdraw Report")),
            ),
          ],
        ),
      ),
    );
  }
}