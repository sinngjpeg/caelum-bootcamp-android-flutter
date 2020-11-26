class Transferencia {
  int conta;
  double valor;
  Transferencia(this.conta, this.valor);

  @override
  String toString() {
    return 'Transferencia{conta: $conta, valor: $valor}';
  }
}
