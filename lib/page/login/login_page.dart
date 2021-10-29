import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:koffi_dev/page/page.dart';
import 'package:koffi_dev/widget/widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool hidePassword = true;
  String taxNumber = "";
  String password = "";
  String username = "";
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              color: Colors.white70,
              padding: EdgeInsets.only(
                  top: 136.0, left: width * 0.053, right: width * 0.053),
              child: Form(
                key: _formKey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: SvgPicture.asset(
                          "assets/svg/logo_login.svg",
                          width: width * 0.5,
                          height: 0.08 * height,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.098,
                      ),
                      const Text("Mã số thuế",
                          style: TextStyle(
                              color: Color(0xff959595), fontSize: 16.0)),
                      const SizedBox(
                        height: 4.0,
                      ),
                      TextFormField(
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16.0, fontWeight: FontWeight.w400),
                        validator: (value) => (value!.isEmpty || value.length>15) ? "" : null,
                        onSaved: (input) {
                          taxNumber = input!.trim();
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      const Text("Tên đăng nhập",
                          style: TextStyle(
                              color: Color(0xff959595), fontSize: 16.0)),
                      const SizedBox(
                        height: 4.0,
                      ),
                      TextFormField(
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16.0, fontWeight: FontWeight.w400),
                        validator: (value) => (value!.isEmpty) ? "" : null,
                        onSaved: (input) {
                          username = input!.trim();
                        },
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      const Text("Mật khẩu",
                          style: TextStyle(
                              color: Color(0xff959595), fontSize: 16.0)),
                      const SizedBox(
                        height: 4.0,
                      ),
                      Container(
                        child: TextFormField(
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 3.0,
                                  wordSpacing: 3.0),
                          obscureText: hidePassword,
                          cursorColor: Theme.of(context).colorScheme.primary,
                          validator: (value) => (value!.isEmpty) ? "" : null,
                          onSaved: (input) {
                            password = input!.trim();
                          },
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withOpacity(hidePassword ? 0.3 : 1.0),
                            icon: Icon(hidePassword
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                hidePassword = !hidePassword;
                              });
                            },
                          )),
                        ),
                      ),
                      SizedBox(height: height * 0.073),
                      Container(
                        width: double.infinity,
                        height: 50.0,
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Theme.of(context).primaryColor),
                          child: Text(
                            "Đăng nhập",
                            style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith(color: Colors.white, fontSize: 16.0),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushAndRemoveUntil(context,
                                  MaterialPageRoute(
                                builder: (context) {
                                  return HomePage();
                                },
                              ), (route) => false);
                            } else {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return const ErrorDialog(
                                      message:
                                          "Thông tin đăng nhập không đúng");
                                },
                              );
                            }
                          },
                        ),
                      )
                    ]),
              ))
        ],
      ),
    );
  }
}
