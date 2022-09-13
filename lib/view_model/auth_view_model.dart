import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ["email"]);
  FirebaseAuth _auth = FirebaseAuth.instance;
  FacebookLogin _facebookLogin = FacebookLogin();
  late String email, password;
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void GoogleSignInMethod() async {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    print(googleUser);
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser!.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );

    UserCredential userCredential =
        await _auth.signInWithCredential(credential);
    print(userCredential.user);
  }

  void facebookSignInInMethod() async {
    FacebookLoginResult result =
        await _facebookLogin.logIn(customPermissions: ["email"]);
    final accessToken = result.accessToken?.token;

    if (result.status == FacebookLoginStatus.values) {
      final faceCredential = FacebookAuthProvider.credential(accessToken!);

      await _auth.signInWithCredential(faceCredential);
    }
  }

  void signInWithEmailAndPassword() {}
}
