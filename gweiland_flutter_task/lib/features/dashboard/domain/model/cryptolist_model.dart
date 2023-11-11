class CryptoListModel {
  Status? status;
  List<CryptoItem>? data;

  CryptoListModel({this.status, this.data});

  CryptoListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'] != null ? new Status.fromJson(json['status']) : null;
    if (json['data'] != null) {
      data = <CryptoItem>[];
      json['data'].forEach((v) {
        data!.add(new CryptoItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.status != null) {
      data['status'] = this.status!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Status {
  String? timestamp;
  int? errorCode;
  Null? errorMessage;
  int? elapsed;
  int? creditCount;
  Null? notice;
  int? totalCount;

  Status(
      {this.timestamp,
      this.errorCode,
      this.errorMessage,
      this.elapsed,
      this.creditCount,
      this.notice,
      this.totalCount});

  Status.fromJson(Map<String, dynamic> json) {
    timestamp = json['timestamp'];
    errorCode = json['error_code'];
    errorMessage = json['error_message'];
    elapsed = json['elapsed'];
    creditCount = json['credit_count'];
    notice = json['notice'];
    totalCount = json['total_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['timestamp'] = this.timestamp;
    data['error_code'] = this.errorCode;
    data['error_message'] = this.errorMessage;
    data['elapsed'] = this.elapsed;
    data['credit_count'] = this.creditCount;
    data['notice'] = this.notice;
    data['total_count'] = this.totalCount;
    return data;
  }
}

class CryptoItem {
  int? id;
  String? name;
  String? symbol;
  String? slug;
  double? numMarketPairs;
  double? maxSupply;
  double? totalSupply;
  String? cryptoIconUrl;

  int? cmcRank;
  Quote? quote;

  CryptoItem(
      {this.id,
      this.name,
      this.symbol,
      this.slug,
      this.numMarketPairs,
      this.maxSupply,
      this.totalSupply,
      this.cmcRank,
      this.cryptoIconUrl,
      this.quote});

  CryptoItem.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    cryptoIconUrl = json['cryptoIconUrl'];
    numMarketPairs =
        json['num_market_pairs'] != null ? double.parse(json['num_market_pairs'].toString()) : 0.0;
    maxSupply = json['max_supply'] != null ? double.parse(json['max_supply'].toString()) : 0.0;
    totalSupply =
        json['total_supply'] != null ? double.parse(json['total_supply'].toString()) : 0.0;

    cmcRank = json['cmc_rank'];
    quote = json['quote'] != null ? new Quote.fromJson(json['quote']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['symbol'] = this.symbol;
    data['slug'] = this.slug;
    data['num_market_pairs'] = this.numMarketPairs;
    data['max_supply'] = this.maxSupply;
    data['total_supply'] = this.totalSupply;

    data['cmc_rank'] = this.cmcRank;
    data['cryptoIconUrl'] = this.cryptoIconUrl;

    if (this.quote != null) {
      data['quote'] = this.quote!.toJson();
    }
    return data;
  }
}

class Quote {
  USD? uSD;

  Quote({this.uSD});

  Quote.fromJson(Map<String, dynamic> json) {
    uSD = json['USD'] != null ? new USD.fromJson(json['USD']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.uSD != null) {
      data['USD'] = this.uSD!.toJson();
    }
    return data;
  }
}

class USD {
  double? price;
  double? volume24h;

  USD({this.price, this.volume24h});

  USD.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    volume24h = json['volume_change_24h'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['price'] = this.price;
    data['volume_change_24h'] = this.volume24h;
    return data;
  }
}
