class teste {
  String codibene;
  String nomebene;

  teste({this.codibene, this.nomebene});

  teste.fromJson(Map<String, dynamic> json) {
    codibene = json['codibene'];
    nomebene = json['nomebene'];
  }
}