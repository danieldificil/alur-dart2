import 'dart:math';
import 'package:alur_dart2/alur_dart2.dart' as alur_dart2;

void main() {
  Legumes mandioca = Legumes("Mandioca", 77.77, "marrom", true);
  Fruta banana = Fruta("Banana", 100, "amarela", "Doce", 12);
  Nozes macadamia = Nozes("Macadâmia", 2, "branco amarelado", "Doce", 20, 30);
  Citricas limao = Citricas("Limão", 12, "verde", "Azedo", 20, 80);

  mandioca.printAlimento();
  banana.printAlimento();
  macadamia.printAlimento();
  limao.printAlimento();

}

void mostrarMadura(String nome, int dias, {String? cor}) {
  if (dias >= 30) {
    print('A $nome está madura.');
  } else {
    print('A $nome não está madura.');
  }
  if (cor != null) {
    print('a $nome é $cor');
  }
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = dias - diasParaMadura;
  return quantosDiasFaltam;
}

class Fruta extends Alimento {
  String sabor;
  int diasDeCollheita;
  bool? isMadura;

  Fruta(String nome, double peso, String cor, this.sabor, this.diasDeCollheita,
      {this.isMadura}) : super(nome, peso, cor);

  void estaMadura(int diasParaMadura) {
    isMadura = diasDeCollheita >= diasParaMadura;
    print(
        "A sua $nome foi colhida a $diasDeCollheita dias, e precisa de $diasParaMadura dias para amadurecer"
            "Está madura? $isMadura");
  }
  void fazerSuco(){
    print("Você fez um ótimo suco de $nome");
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print("Este(a) $nome pesa $peso gramas e é $cor");
  }
}

class Legumes extends Alimento {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print("Pronto, o $nome est'a cozinhando");
    } else {
      print("Não precisa cozinhar");
    }
  }
}

class Citricas extends Fruta{
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor, int diasDeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDeColheita);

  void existeRefri(bool, existe){
    if (existe) {
      print("Existe Refrigerante de $nome");
    } else {
      print("Não existe refrigerante de $nome");
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

      Nozes(String nome, double peso, String cor, String sabor, int diasDeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDeColheita);
}
