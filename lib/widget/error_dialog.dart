import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({Key? key,required this.message}) : super(key: key);
  final String message;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * 0.22;
    var width = MediaQuery.of(context).size.height * 0.786;
    return Dialog(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
        child: Container(
          height: height,
          width: width,
          child: Padding(
            padding: EdgeInsets.fromLTRB(11, 12, 11, 16),
            child: Column(
              children: [
                Icon(
                  Icons.info,
                  color: Color(0xffEFB041),
                  size: height * 0.3,
                ),
                SizedBox(height: 8.0,),
                Text(
                  '$message',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },

                  child: Text(
                    'Nhập lại',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ));  }
}
