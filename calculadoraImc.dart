import 'dart:io';

void main() {
  
  double result = leImc();

  if (result <= 34.5 && result > 30) {
    print("Você está no nivel Obesidade 1.");
  } else if (result < 30 && result >= 25) {
    print("Você está com sobrepeso.");
  } else if (result < 25 && result >= 18.5) {
    print("Você está no peso ideal, parabéns!.");
  } else {
    print("Você está abaixo do peso.");
  }
}

calculaImc(int peso, double altura) {
  double imc = peso / (altura * altura);
  return imc;
}

leImc() {
  print(' === Digite seu peso === \n');
  String text1 = stdin.readLineSync() as String;
  int peso = int.parse(text1);

  print(' === Digite sua altura === \n');
  String text2 = stdin.readLineSync() as String;
  double altura = double.parse(text2);

  double result = calculaImc(peso, altura);

  return result;
}
