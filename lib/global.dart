import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_1/login.dart';

final FirebaseAuth fAuth = FirebaseAuth.instance;

User? currentfirebaseUser;

Future<void> signOut(BuildContext context) async {
  await FirebaseAuth.instance.signOut();
  // ignore: use_build_context_synchronously
  await Navigator.pushAndRemoveUntil<void>(
    context,
    MaterialPageRoute<void>(
        builder: (BuildContext context) => const login_page()),
    ModalRoute.withName('/'),
  );
}
