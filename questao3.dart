void main() {
  // Vetor de exemplo com valores de faturamento diário (0 representa dias sem faturamento)
  List<double> faturamentoDiario = [
    100.0, 200.0, 0.0, 150.0, 0.0, 250.0, 300.0, 0.0, 400.0, 350.0, 0.0, 100.0
  ];

 
  List<double> diasComFaturamento = faturamentoDiario.where((f) => f > 0).toList();

  
  double menorFaturamento = diasComFaturamento.reduce((a, b) => a < b ? a : b);
  double maiorFaturamento = diasComFaturamento.reduce((a, b) => a > b ? a : b);

  
  double somaFaturamento = diasComFaturamento.reduce((a, b) => a + b);
  double mediaFaturamento = somaFaturamento / diasComFaturamento.length;

  
  int diasAcimaDaMedia = diasComFaturamento.where((f) => f > mediaFaturamento).length;

  
  print('Menor valor de faturamento: R\$${menorFaturamento}');
  print('Maior valor de faturamento: R\$${maiorFaturamento}');
  print('Número de dias com faturamento superior à média: $diasAcimaDaMedia');
}
