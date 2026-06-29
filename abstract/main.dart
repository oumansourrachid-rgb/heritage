abstract class Appareil {
  String _marque;
  Appareil(this._marque);
  void allumer();
  void eteindre() => print("$_marque est éteint");
}

class Connectabe {
  void connecterWifi() {}
}

class Imprimable {
  void imprimer() {}
}

class ImprimanteWifi extends Appareil implements Connectabe, Imprimable {
  ImprimanteWifi(String marque) : super(marque);
  allumer() => print("$_marque est allumé");
  connecterWifi() => print("$_marque est connecté au wifi");
  imprimer() => print("$_marque est en train d'imprimer");
}

void main() {
  var impr1 = ImprimanteWifi("Canon");
  impr1.allumer();
  impr1.connecterWifi();
  impr1.imprimer();
  impr1.eteindre();
}
