import 'package:flutter/material.dart';

class ProviderController extends ChangeNotifier {

  String name = '';
  String imgAvatar = 'https://upload.wikimedia.org/wikipedia/commons/8/88/Chevro'
      'let_Opala_SS_19744.jpg';
  String birthDate = '00/00/0000';


  Future<void> alterarDados() async {

    name = 'Leonardo';
    imgAvatar = 'https://upload.wikimedia.org/wikipedia/commons/8/88/Chevro'
        'let_Opala_SS_19744.jpg';
    birthDate = '(29/12/1995)';
    notifyListeners();
  }
}