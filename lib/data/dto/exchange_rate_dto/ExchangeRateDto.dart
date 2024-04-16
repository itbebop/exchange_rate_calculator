import 'ConversionRates.dart';

/// result : "success"
/// documentation : "https://www.exchangerate-api.com/docs"
/// terms_of_use : "https://www.exchangerate-api.com/terms"
/// time_last_update_unix : 1713225601
/// time_last_update_utc : "Tue, 16 Apr 2024 00:00:01 +0000"
/// time_next_update_unix : 1713312001
/// time_next_update_utc : "Wed, 17 Apr 2024 00:00:01 +0000"
/// base_code : "USD"
/// conversion_rates : {"USD":1,"AED":3.6725,"AFN":71.3305,"ALL":94.8926,"AMD":395.1172,"ANG":1.79,"AOA":843.9804,"ARS":864.75,"AUD":1.5484,"AWG":1.79,"AZN":1.7004,"BAM":1.8392,"BBD":2,"BDT":109.7305,"BGN":1.8388,"BHD":0.376,"BIF":2863.741,"BMD":1,"BND":1.362,"BOB":6.9323,"BRL":5.1255,"BSD":1,"BTN":83.5103,"BWP":13.7991,"BYN":3.2663,"BZD":2,"CAD":1.3767,"CDF":2748.3339,"CHF":0.9124,"CLP":963.3561,"CNY":7.2506,"COP":3853.1035,"CRC":501.1963,"CUP":24,"CVE":103.6908,"CZK":23.7841,"DJF":177.721,"DKK":7.017,"DOP":59.149,"DZD":134.5425,"EGP":48.2752,"ERN":15,"ETB":56.8641,"EUR":0.9404,"FJD":2.2668,"FKP":0.8028,"FOK":7.017,"GBP":0.8028,"GEL":2.669,"GGP":0.8028,"GHS":13.5204,"GIP":0.8028,"GMD":66.0793,"GNF":8576.863,"GTQ":7.7842,"GYD":209.2361,"HKD":7.8296,"HNL":24.6792,"HRK":7.0853,"HTG":132.5414,"HUF":370.2661,"IDR":16001.3582,"ILS":3.7408,"IMP":0.8028,"INR":83.5116,"IQD":1310.542,"IRR":42045.127,"ISK":141.4365,"JEP":0.8028,"JMD":154.9463,"JOD":0.709,"JPY":154.0846,"KES":130.3081,"KGS":89.2651,"KHR":4051.9321,"KID":1.5484,"KMF":462.6358,"KRW":1385.1241,"KWD":0.3081,"KYD":0.8333,"KZT":449.1188,"LAK":20921.7778,"LBP":89500,"LKR":298.7014,"LRD":193.963,"LSL":18.9831,"LYD":4.8335,"MAD":10.1392,"MDL":17.6453,"MGA":4358.9753,"MKD":57.481,"MMK":2097.2672,"MNT":3385.3193,"MOP":8.0646,"MRU":39.7391,"MUR":47.0948,"MVR":15.4359,"MWK":1741.7795,"MXN":16.6899,"MYR":4.7788,"MZN":64.0401,"NAD":18.9831,"NGN":1143.8914,"NIO":36.7992,"NOK":10.9352,"NPR":133.6165,"NZD":1.6906,"OMR":0.3845,"PAB":1,"PEN":3.6995,"PGK":3.7813,"PHP":56.8958,"PKR":278.1672,"PLN":4.0415,"PYG":7363.1894,"QAR":3.64,"RON":4.6702,"RSD":109.9923,"RUB":93.552,"RWF":1300.8457,"SAR":3.75,"SBD":8.5103,"SCR":13.9109,"SDG":454.0078,"SEK":10.8817,"SGD":1.3621,"SHP":0.8028,"SLE":22.5923,"SLL":22592.3183,"SOS":571.4039,"SRD":34.9392,"SSP":1560.1044,"STN":23.0393,"SYP":12914.47,"SZL":18.9831,"THB":36.7431,"TJS":10.9354,"TMT":3.4998,"TND":3.1433,"TOP":2.3463,"TRY":32.4265,"TTD":6.764,"TVD":1.5484,"TWD":32.4135,"TZS":2581.8298,"UAH":39.5925,"UGX":3804.8654,"UYU":38.7394,"UZS":12752.7754,"VES":36.2889,"VND":25180.8809,"VUV":120.1495,"WST":2.7684,"XAF":616.8477,"XCD":2.7,"XDR":0.7596,"XOF":616.8477,"XPF":112.2172,"YER":250.248,"ZAR":18.9835,"ZMW":24.9932,"ZWL":13.4027}

class ExchangeRateDto {
  ExchangeRateDto({
    this.result,
    this.documentation,
    this.termsOfUse,
    this.timeLastUpdateUnix,
    this.timeLastUpdateUtc,
    this.timeNextUpdateUnix,
    this.timeNextUpdateUtc,
    this.baseCode,
    this.conversionRates,
  });

  ExchangeRateDto.fromJson(dynamic json) {
    result = json['result'];
    documentation = json['documentation'];
    termsOfUse = json['terms_of_use'];
    timeLastUpdateUnix = json['time_last_update_unix'];
    timeLastUpdateUtc = json['time_last_update_utc'];
    timeNextUpdateUnix = json['time_next_update_unix'];
    timeNextUpdateUtc = json['time_next_update_utc'];
    baseCode = json['base_code'];
    conversionRates = json['conversion_rates'] != null
        ? conversionRates.fromJson(json['conversion_rates'])
        : null;
  }
  String? result;
  String? documentation;
  String? termsOfUse;
  num? timeLastUpdateUnix;
  String? timeLastUpdateUtc;
  num? timeNextUpdateUnix;
  String? timeNextUpdateUtc;
  String? baseCode;
  dynamic? conversionRates;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['result'] = result;
    map['documentation'] = documentation;
    map['terms_of_use'] = termsOfUse;
    map['time_last_update_unix'] = timeLastUpdateUnix;
    map['time_last_update_utc'] = timeLastUpdateUtc;
    map['time_next_update_unix'] = timeNextUpdateUnix;
    map['time_next_update_utc'] = timeNextUpdateUtc;
    map['base_code'] = baseCode;
    if (conversionRates != null) {
      map['conversion_rates'] = conversionRates?.toJson();
    }
    return map;
  }
}
