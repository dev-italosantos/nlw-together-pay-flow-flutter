// ignore: camel_case_types
class insertBoleroController {
  String? validateName(String? value) =>
      value?.isEmpty ?? true ? "o nome não pode ser vazio" : null;

  String? validateVencimento(String? value) =>
      value?.isEmpty ?? true ? "A data de vencimento não pode ser vazio" : null;

  String? validateValor(double value) =>
      value == 0 ? "Insira um valor maior que R\$ 0,00" : null;
  String? validateCodigo(String? value) =>
      value?.isEmpty ?? true ? "O códig do boleto não pode ser vazio" : null;
}
