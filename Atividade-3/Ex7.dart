class ComponentesEletronicos {
  String nomeComponente;
  String valor;
  int quantidade;

  ComponentesEletronicos(this.nomeComponente, this.valor, this.quantidade);

  void exibirInformacoes() {
    print('Informações do Componente:');
    print('Nome: $nomeComponente');
    print('Valor: $valor');
    print('Quantidade: $quantidade');
  }

  double calcularValorTotal() {
    return double.parse(valor.replaceAll(RegExp(r'[^0-9.]'), '')) * quantidade;
  }
}

class Resistor extends ComponentesEletronicos {
  Resistor(String nomeComponente, String valor, int quantidade)
      : super(nomeComponente, valor, quantidade);

  // Resistor não precisa de métodos adicionais
}

class Capacitor extends ComponentesEletronicos {
  Capacitor(String nomeComponente, String valor, int quantidade)
      : super(nomeComponente, valor, quantidade);

  // Capacitor não precisa de métodos adicionais
}

class Indutor extends ComponentesEletronicos {
  Indutor(String nomeComponente, String valor, int quantidade)
      : super(nomeComponente, valor, quantidade);

  // Indutor não precisa de métodos adicionais
}

class Diodo extends ComponentesEletronicos {
  Diodo(String nomeComponente, String valor, int quantidade)
      : super(nomeComponente, valor, quantidade);

  // Diodo não precisa de métodos adicionais
}

class Led extends ComponentesEletronicos {
  Led(String nomeComponente, String valor, int quantidade)
      : super(nomeComponente, valor, quantidade);

  // Led não precisa de métodos adicionais
}

void main() {
  var resistor1 = Resistor('Resistor1', '1k', 5);
  var resistor2 = Resistor('Resistor2', '330R', 3);
  var capacitor1 = Capacitor('Capacitor1', '10uF', 2);
  var capacitor2 = Capacitor('Capacitor2', '100uF', 4);

  resistor1.exibirInformacoes();
  resistor2.exibirInformacoes();
  capacitor1.exibirInformacoes();
  capacitor2.exibirInformacoes();

  double totalResistores = resistor1.calcularValorTotal() + resistor2.calcularValorTotal();
  double totalCapacitores = capacitor1.calcularValorTotal() + capacitor2.calcularValorTotal();

  print('\nValor total dos resistores: $totalResistores ohms');
  print('Valor total dos capacitores: $totalCapacitores farads');
}
