import 'package:alur_dart2/alur_dart2.dart' as alur_dart2;

void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = 'Verde e amarela';
  String sabor = 'Doce e cítrica';
  int diasDeCollheita = 40;
  bool isMadura = funcIsMadura(diasDeCollheita);

  if (diasDeCollheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }
 mostrarMadura('Uva', 40, cor: 'roxa');
}

bool funcIsMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

// Posicionais obrigatórios
// Nomeados Opcionais
// Parâmetro "Padrão"
// Modificador "required"

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