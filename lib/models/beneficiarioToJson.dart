// To parse this JSON data, do
//
//     final beneficiario = beneficiarioFromJson(jsonString);

import 'dart:convert';

Beneficiario beneficiarioFromJson(String str) => Beneficiario.fromJson(json.decode(str));

String beneficiarioToJson(Beneficiario data) => json.encode(data.toJson());

class Beneficiario {
  String codibene;
  String nomebene;
  String sexobene;
  String tipobene;
  DateTime dataadmi;
  DateTime datacare;
  String rgbene;
  String cpfbene;
  String coditilo;
  String codilogr;
  String numebene;
  String compbene;
  String codibair;
  String codicida;
  String cepbene;
  String fonebene;
  String celubene;
  String faxbene;
  String codiplan;
  String codifunc;
  dynamic codiempr;
  String codicobr;
  String diapgto;
  String pgtomes;
  String tipovend;
  String tipocobr;
  DateTime datavenc;
  String tipoclie;
  dynamic analcomi;
  String origbene;
  String pagaades;
  String valoades;
  String motiades;
  String obsesupe;
  String paibene;
  String maebene;
  DateTime datanasc;
  dynamic datafale;
  String emaibene;
  String codiprof;
  String codireli;
  String codiesci;
  String numeinte;
  String obsebene;
  dynamic dataades;
  String cnpjbene;
  String inscbene;
  String refebene;
  String mesvenc;
  String espeatua;
  String espeanti;
  String modecobr;
  String coditibe;
  String numeorde;
  dynamic codifili;
  DateTime datacada;
  String redubene;
  dynamic ordevend;
  DateTime dataalte;
  String logialte;
  String nacionalidade;
  String codigonaturalidade;
  dynamic vencimentoadesao;
  String orgaoexpedidor;
  String distritoid;
  String verobservacao;
  String tipoSanguineo;
  dynamic codiag;
  dynamic matricula;
  String gerarNotaFiscalObrigatoria;
  dynamic canalAdesaoId;
  dynamic supervisorId;
  dynamic id;
  dynamic idpassword;

  Beneficiario({
    this.codibene,
    this.nomebene,
    this.sexobene,
    this.tipobene,
    this.dataadmi,
    this.datacare,
    this.rgbene,
    this.cpfbene,
    this.coditilo,
    this.codilogr,
    this.numebene,
    this.compbene,
    this.codibair,
    this.codicida,
    this.cepbene,
    this.fonebene,
    this.celubene,
    this.faxbene,
    this.codiplan,
    this.codifunc,
    this.codiempr,
    this.codicobr,
    this.diapgto,
    this.pgtomes,
    this.tipovend,
    this.tipocobr,
    this.datavenc,
    this.tipoclie,
    this.analcomi,
    this.origbene,
    this.pagaades,
    this.valoades,
    this.motiades,
    this.obsesupe,
    this.paibene,
    this.maebene,
    this.datanasc,
    this.datafale,
    this.emaibene,
    this.codiprof,
    this.codireli,
    this.codiesci,
    this.numeinte,
    this.obsebene,
    this.dataades,
    this.cnpjbene,
    this.inscbene,
    this.refebene,
    this.mesvenc,
    this.espeatua,
    this.espeanti,
    this.modecobr,
    this.coditibe,
    this.numeorde,
    this.codifili,
    this.datacada,
    this.redubene,
    this.ordevend,
    this.dataalte,
    this.logialte,
    this.nacionalidade,
    this.codigonaturalidade,
    this.vencimentoadesao,
    this.orgaoexpedidor,
    this.distritoid,
    this.verobservacao,
    this.tipoSanguineo,
    this.codiag,
    this.matricula,
    this.gerarNotaFiscalObrigatoria,
    this.canalAdesaoId,
    this.supervisorId,
    this.id,
    this.idpassword,
  });

  factory Beneficiario.fromJson(Map<String, dynamic> json) => Beneficiario(
    codibene: json["codibene"],
    nomebene: json["nomebene"],
    sexobene: json["sexobene"],
    tipobene: json["tipobene"],
    dataadmi: DateTime.parse(json["dataadmi"]),
    datacare: DateTime.parse(json["datacare"]),
    rgbene: json["rgbene"],
    cpfbene: json["cpfbene"],
    coditilo: json["coditilo"],
    codilogr: json["codilogr"],
    numebene: json["numebene"],
    compbene: json["compbene"],
    codibair: json["codibair"],
    codicida: json["codicida"],
    cepbene: json["cepbene"],
    fonebene: json["fonebene"],
    celubene: json["celubene"],
    faxbene: json["faxbene"],
    codiplan: json["codiplan"],
    codifunc: json["codifunc"],
    codiempr: json["codiempr"],
    codicobr: json["codicobr"],
    diapgto: json["diapgto"],
    pgtomes: json["pgtomes"],
    tipovend: json["tipovend"],
    tipocobr: json["tipocobr"],
    datavenc: DateTime.parse(json["datavenc"]),
    tipoclie: json["tipoclie"],
    analcomi: json["analcomi"],
    origbene: json["origbene"],
    pagaades: json["pagaades"],
    valoades: json["valoades"],
    motiades: json["motiades"],
    obsesupe: json["obsesupe"],
    paibene: json["paibene"],
    maebene: json["maebene"],
    datanasc: DateTime.parse(json["datanasc"]),
    datafale: json["datafale"],
    emaibene: json["emaibene"],
    codiprof: json["codiprof"],
    codireli: json["codireli"],
    codiesci: json["codiesci"],
    numeinte: json["numeinte"],
    obsebene: json["obsebene"],
    dataades: json["dataades"],
    cnpjbene: json["cnpjbene"],
    inscbene: json["inscbene"],
    refebene: json["refebene"],
    mesvenc: json["mesvenc"],
    espeatua: json["espeatua"],
    espeanti: json["espeanti"],
    modecobr: json["modecobr"],
    coditibe: json["coditibe"],
    numeorde: json["numeorde"],
    codifili: json["codifili"],
    datacada: DateTime.parse(json["datacada"]),
    redubene: json["redubene"],
    ordevend: json["ordevend"],
    dataalte: DateTime.parse(json["dataalte"]),
    logialte: json["logialte"],
    nacionalidade: json["nacionalidade"],
    codigonaturalidade: json["codigonaturalidade"],
    vencimentoadesao: json["vencimentoadesao"],
    orgaoexpedidor: json["orgaoexpedidor"],
    distritoid: json["distritoid"],
    verobservacao: json["verobservacao"],
    tipoSanguineo: json["tipoSanguineo"],
    codiag: json["codiag"],
    matricula: json["matricula"],
    gerarNotaFiscalObrigatoria: json["GerarNotaFiscalObrigatoria"],
    canalAdesaoId: json["CanalAdesaoId"],
    supervisorId: json["SUPERVISOR_ID"],
    id: json["_ID"],
    idpassword: json["IDPASSWORD"],
  );

  Map<String, dynamic> toJson() => {
    "codibene": codibene,
    "nomebene": nomebene,
    "sexobene": sexobene,
    "tipobene": tipobene,
    "dataadmi": dataadmi.toIso8601String(),
    "datacare": datacare.toIso8601String(),
    "rgbene": rgbene,
    "cpfbene": cpfbene,
    "coditilo": coditilo,
    "codilogr": codilogr,
    "numebene": numebene,
    "compbene": compbene,
    "codibair": codibair,
    "codicida": codicida,
    "cepbene": cepbene,
    "fonebene": fonebene,
    "celubene": celubene,
    "faxbene": faxbene,
    "codiplan": codiplan,
    "codifunc": codifunc,
    "codiempr": codiempr,
    "codicobr": codicobr,
    "diapgto": diapgto,
    "pgtomes": pgtomes,
    "tipovend": tipovend,
    "tipocobr": tipocobr,
    "datavenc": datavenc.toIso8601String(),
    "tipoclie": tipoclie,
    "analcomi": analcomi,
    "origbene": origbene,
    "pagaades": pagaades,
    "valoades": valoades,
    "motiades": motiades,
    "obsesupe": obsesupe,
    "paibene": paibene,
    "maebene": maebene,
    "datanasc": datanasc.toIso8601String(),
    "datafale": datafale,
    "emaibene": emaibene,
    "codiprof": codiprof,
    "codireli": codireli,
    "codiesci": codiesci,
    "numeinte": numeinte,
    "obsebene": obsebene,
    "dataades": dataades,
    "cnpjbene": cnpjbene,
    "inscbene": inscbene,
    "refebene": refebene,
    "mesvenc": mesvenc,
    "espeatua": espeatua,
    "espeanti": espeanti,
    "modecobr": modecobr,
    "coditibe": coditibe,
    "numeorde": numeorde,
    "codifili": codifili,
    "datacada": datacada.toIso8601String(),
    "redubene": redubene,
    "ordevend": ordevend,
    "dataalte": dataalte.toIso8601String(),
    "logialte": logialte,
    "nacionalidade": nacionalidade,
    "codigonaturalidade": codigonaturalidade,
    "vencimentoadesao": vencimentoadesao,
    "orgaoexpedidor": orgaoexpedidor,
    "distritoid": distritoid,
    "verobservacao": verobservacao,
    "tipoSanguineo": tipoSanguineo,
    "codiag": codiag,
    "matricula": matricula,
    "GerarNotaFiscalObrigatoria": gerarNotaFiscalObrigatoria,
    "CanalAdesaoId": canalAdesaoId,
    "SUPERVISOR_ID": supervisorId,
    "_ID": id,
    "IDPASSWORD": idpassword,
  };
}
