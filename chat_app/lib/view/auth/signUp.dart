// import 'package:chat_app/model/firebaseAuthServices.dart';
// import 'package:chat_app/utils/custom.dart';
// import 'package:chat_app/view/auth/login.dart';
// import 'package:flutter/material.dart';

// import '../../main.dart';

// class Signup extends StatefulWidget {
//   const Signup({super.key});

//   @override
//   State<Signup> createState() => _SignupState();
// }

// class _SignupState extends State<Signup> {
//   TextEditingController email = TextEditingController();
//   TextEditingController password = TextEditingController();
//   TextEditingController conPassword = TextEditingController();
//   final formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Form(
//           key: formKey,
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Icon(
//                   Icons.lock,
//                   size: 80,
//                 ),
//                 SizedBox(
//                   height: mq.height * 0.04,
//                 ),
//                 Text("Lets create an account for you"),
//                 SizedBox(
//                   height: mq.height * 0.04,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 25, right: 25),
//                   child: Customtextfield(
//                     hinttext: "Email",
//                     validator: (val) {
//                       if (email.text.isEmpty) {
//                         return "Enter your email";
//                       }
//                       return null; // Corrected this to return null
//                     },
//                     controller: email,
//                     obsecure: false,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
//                   child: Customtextfield(
//                     hinttext: "Password",
//                     validator: (val) {
//                       if (password.text.isEmpty) {
//                         return "Enter your password";
//                       }
//                       return null;
//                     },
//                     controller: password,
//                     obsecure: true,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
//                   child: Customtextfield(
//                     hinttext: "Confirm Password",
//                     validator: (String? val) {
//                       if (conPassword.text.isEmpty) {
//                         return "Confirm your password";
//                       }
//                       return null;
//                     },
//                     controller: conPassword,
//                     obsecure: true,
//                   ),
//                 ),
//                 SizedBox(
//                   height: mq.height * 0.05,
//                 ),
//                 MaterialButton(
//                   onPressed: () async {
//                     if (formKey.currentState!.validate()) {
//                       if (password.text == conPassword.text) {
//                         await Firebaseauthservices()
//                             .signUp(email.text, password.text, context);
//                       }
//                     }
//                   },
//                   height: mq.height * 0.08,
//                   minWidth: mq.width * 0.9,
//                   child: Text(
//                     "Sign Up",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.w700,
//                         fontSize: 17),
//                   ),
//                   color: Colors.black,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10)),
//                 ),
//                 SizedBox(
//                   height: mq.height * 0.05,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text("Already have an account ?"),
//                     TextButton(
//                         onPressed: () {
//                           Navigator.push(context,
//                               MaterialPageRoute(builder: (_) => Login()));
//                         },
//                         child: Text(
//                           "Login now",
//                           style: TextStyle(color: Colors.blue),
//                         ))
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:chat_app/model/firebaseAuthServices.dart';
import 'package:chat_app/utils/custom.dart';
import 'package:chat_app/view/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../main.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController conPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();

  // Function to check network connectivity
  Future<void> checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      // No internet connection
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text("No Internet Connection"),
          content: const Text("Please check your internet connection."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    // Check for internet connectivity when the screen is initialized
    checkInternetConnection();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.lock,
                  size: 80,
                ),
                SizedBox(
                  height: mq.height * 0.04,
                ),
                const Text("Let's create an account for you"),
                SizedBox(
                  height: mq.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Customtextfield(
                    hinttext: "Email",
                    validator: (val) {
                      if (email.text.isEmpty) {
                        return "Enter your email";
                      }
                      return null;
                    },
                    controller: email,
                    obsecure: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
                  child: Customtextfield(
                    hinttext: "Password",
                    validator: (val) {
                      if (password.text.isEmpty) {
                        return "Enter your password";
                      }
                      return null;
                    },
                    controller: password,
                    obsecure: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
                  child: Customtextfield(
                    hinttext: "Confirm Password",
                    validator: (String? val) {
                      if (conPassword.text.isEmpty) {
                        return "Confirm your password";
                      }
                      return null;
                    },
                    controller: conPassword,
                    obsecure: true,
                  ),
                ),
                SizedBox(
                  height: mq.height * 0.05,
                ),
                MaterialButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      if (password.text == conPassword.text) {
                        // Ensure there's internet connection before proceeding
                        await checkInternetConnection();
                        // Only proceed with signup if there's internet
                        await Firebaseauthservices()
                            .signUp(email.text, password.text, context);
                        Navigator.pop(context);
                      }
                    }
                  },
                  height: mq.height * 0.08,
                  minWidth: mq.width * 0.9,
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
                SizedBox(
                  height: mq.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account ?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const Login()));
                        },
                        child: const Text(
                          "Login now",
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
