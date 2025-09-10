import 'dart:math';
import 'dart:async';
import 'dart:io';

void main() {
  final Map<String, num> powerKeeper = {
    'tensao': 110.0, // Volts (fixo)
    'tarifa': 0.85, // R$/kWh
    'consumoTotal': 0.0, // Wh
  };

  final List<Map<String, dynamic>> historico = [];

  Timer.periodic(Duration(seconds: 3), (timer) {
    // Amperagem aleatória entre 0.2A e 10A
    final amperagem = 0.2 + Random().nextDouble() * 10;

    // Potência instantânea
    final potencia = amperagem * powerKeeper['tensao']!; // W

    // Incremento do consumo (Wh)
    // (potência em W * tempo em horas)
    final consumoIncremento = potencia * (3 / 3600);
    powerKeeper['consumoTotal'] =
        powerKeeper['consumoTotal']! + consumoIncremento;

    // Gasto em R$ baseado no consumo total (convertendo Wh → kWh)
    final gasto =
        (powerKeeper['consumoTotal']! / 1000) * powerKeeper['tarifa']!;

    historico.add({
      'amperagem': amperagem,
      'potencia': potencia,
      'consumoTotal': powerKeeper['consumoTotal']!,
      'gasto': gasto,
      'timestamp': DateTime.now(),
    });

    if (historico.length > 10) {
      historico.removeAt(0);
    }

    // Limpa a tela
    stdout.write("\x1B[2J\x1B[0;0H");

    // Interface simulada
    stdout.writeln("---------------------------------");
    stdout.writeln(" ");
    stdout.writeln("~~~~~~~~~~ POWERKEEPER ~~~~~~~~~~");
    stdout.writeln(" ");
    stdout.writeln("Amperagem: ${amperagem.toStringAsFixed(2)} A");
    stdout.writeln("Potência: ${potencia.toStringAsFixed(2)} W");
    stdout.writeln(
      "Consumo Total: ${powerKeeper['consumoTotal']!.toStringAsFixed(2)} Wh",
    );
    stdout.writeln("Gasto Elétrico: R\$ ${gasto.toStringAsFixed(2)}");
    stdout.writeln(" ");
    stdout.writeln("---------------------------------");
  });
}
