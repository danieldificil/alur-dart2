import 'dart:math';

import 'package:alur_dart2/alur_dart2.dart' as alur_dart2;

void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e amarela';
  String sabor = 'Doce e cítrica';
  int diasDeCollheita = 40;
  bool isMadura = funcIsMadura(diasDeCollheita);

  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDeCollheita);
  print(fruta01);
  Fruta fruta02 = Fruta('uva', 40, 'Roxa', 'Doce', 20);
  print(fruta02);
  // List<dynamic> fruta01 = ['Laranja', 100.2, 'verde'];
  // List<dynamic> fruta02 = ['uva', 100.2, 'roxo'];

//   if (diasDeCollheita >= 30) {
//     isMadura = true;
//   } else {
//     isMadura = false;
//   }
//   mostrarMadura('Uva', 40, cor: 'roxa');
//   int quantosDias = funcQuantosDiasMadura(diasDeCollheita);
//   print(quantosDias);
}
class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDeCollheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDeCollheita, {this.isMadura});

  estaMadura(int diasParaMadura){
    isMadura = diasDeCollheita >= diasParaMadura;
    print("A sua $nome foi colhida a $diasDeCollheita dias, e precisa de $diasParaMadura dias para amadurecer");
  }
}

bool funcIsMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
void mostrarMadura(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print('A $nome está madura.');
  } else {
    print('A $nome não está madura.');
  }
  if(cor != null) {
    print('a $nome é $cor');
  }
}
int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = dias -  diasParaMadura;
  return quantosDiasFaltam;
}