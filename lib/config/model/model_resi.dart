class ResiModel {
  Express21 express21;

  ResiModel({
    required this.express21,
  });

  factory ResiModel.fromJson(Map<String, dynamic> json) => ResiModel(
        express21: Express21.fromJson(json["express21"]),
      );

  Map<String, dynamic> toJson() => {
        "express21": express21.toJson(),
      };
}

class Express21 {
  Results results;
  Status status;

  Express21({
    required this.results,
    required this.status,
  });

  factory Express21.fromJson(Map<String, dynamic> json) => Express21(
        results: Results.fromJson(json["results"]),
        status: Status.fromJson(json["status"]),
      );

  Map<String, dynamic> toJson() => {
        "results": results.toJson(),
        "status": status.toJson(),
      };
}

class Results {
  List<ResiInfo> resiInfo;
  ShipmentDetail shipmentDetail;
  int totalRecords;
  List<TrackingStatusDetail> trackingStatusDetail;

  Results({
    required this.resiInfo,
    required this.shipmentDetail,
    required this.totalRecords,
    required this.trackingStatusDetail,
  });

  factory Results.fromJson(Map<String, dynamic> json) => Results(
        resiInfo: List<ResiInfo>.from(
            json["resi_info"].map((x) => ResiInfo.fromJson(x))),
        shipmentDetail: ShipmentDetail.fromJson(json["shipment_detail"]),
        totalRecords: json["total_records"],
        trackingStatusDetail: List<TrackingStatusDetail>.from(
            json["tracking_status_detail"]
                .map((x) => TrackingStatusDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "resi_info": List<dynamic>.from(resiInfo.map((x) => x.toJson())),
        "shipment_detail": shipmentDetail.toJson(),
        "total_records": totalRecords,
        "tracking_status_detail":
            List<dynamic>.from(trackingStatusDetail.map((x) => x.toJson())),
      };
}

class ResiInfo {
  String? cityDest;
  String? cityOrigin;
  String? consigneeName;
  String? lastStatusCode;
  String? resiNo;
  String? serviceType;
  String? shipperName;
  String? voided;

  ResiInfo({
    this.cityDest,
    this.cityOrigin,
    this.consigneeName,
    this.lastStatusCode,
    this.resiNo,
    this.serviceType,
    this.shipperName,
    this.voided,
  });

  factory ResiInfo.fromJson(Map<String, dynamic> json) => ResiInfo(
        cityDest: json["city_dest"],
        cityOrigin: json["city_origin"],
        consigneeName: json["consignee_name"],
        lastStatusCode: json["last_status_code"],
        resiNo: json["resi_no"],
        serviceType: json["service_type"],
        shipperName: json["shipper_name"],
        voided: json["voided"],
      );

  Map<String, dynamic> toJson() => {
        "city_dest": cityDest,
        "city_origin": cityOrigin,
        "consignee_name": consigneeName,
        "last_status_code": lastStatusCode,
        "resi_no": resiNo,
        "service_type": serviceType,
        "shipper_name": shipperName,
        "voided": voided,
      };
}

class ShipmentDetail {
  String? consigneeAddress;
  String? consigneeName;
  String? consigneePhone;
  String? customerName;
  String? dateprocess;
  String? destCity;
  String? fulfilment;
  double? goodsValue;
  String? isi;
  String? natureOfGoods;
  String? note;
  String? originCity;
  String? paymentMethod;
  String? resiNo;
  String? serviceType;
  String? status;
  double? totalCod;
  double? ttlChargeableWeight;
  int? ttlPiece;

  ShipmentDetail({
    this.consigneeAddress,
    this.consigneeName,
    this.consigneePhone,
    this.customerName,
    this.dateprocess,
    this.destCity,
    this.fulfilment,
    this.goodsValue,
    this.isi,
    this.natureOfGoods,
    this.note,
    this.originCity,
    this.paymentMethod,
    this.resiNo,
    this.serviceType,
    this.status,
    this.totalCod,
    this.ttlChargeableWeight,
    this.ttlPiece,
  });

  factory ShipmentDetail.fromJson(Map<String, dynamic> json) => ShipmentDetail(
        consigneeAddress: json["consignee_address"],
        consigneeName: json["consignee_name"],
        consigneePhone: json["consignee_phone"],
        customerName: json["customer_name"],
        dateprocess: json["dateprocess"],
        destCity: json["dest_city"],
        fulfilment: json["fulfilment"],
        goodsValue: json["goods_value"] != null
            ? double.parse(json["goods_value"].toString())
            : null,
        isi: json["isi"],
        natureOfGoods: json["nature_of_goods"],
        note: json["note"],
        originCity: json["origin_city"],
        paymentMethod: json["payment_method"],
        resiNo: json["resi_no"],
        serviceType: json["service_type"],
        status: json["status"],
        totalCod: json["total_cod"] != null
            ? double.parse(json["total_cod"].toString())
            : null,
        ttlChargeableWeight: json["ttl_chargeable_weight"] != null
            ? double.parse(json["ttl_chargeable_weight"].toString())
            : null,
        ttlPiece: json["ttl_piece"] != null
            ? int.parse(json["ttl_piece"].toString())
            : null,
      );

  Map<String, dynamic> toJson() => {
        "consignee_address": consigneeAddress,
        "consignee_name": consigneeName,
        "consignee_phone": consigneePhone,
        "customer_name": customerName,
        "dateprocess": dateprocess,
        "dest_city": destCity,
        "fulfilment": fulfilment,
        "goods_value": goodsValue,
        "isi": isi,
        "nature_of_goods": natureOfGoods,
        "note": note,
        "origin_city": originCity,
        "payment_method": paymentMethod,
        "resi_no": resiNo,
        "service_type": serviceType,
        "status": status,
        "total_cod": totalCod,
        "ttl_chargeable_weight": ttlChargeableWeight,
        "ttl_piece": ttlPiece,
      };
}

class TrackingStatusDetail {
  String? branchCode;
  String? branchName;
  String? dateprocess;
  String? status;
  String? statusBy;
  String? statusNote;

  TrackingStatusDetail({
    this.branchCode,
    this.branchName,
    this.dateprocess,
    this.status,
    this.statusBy,
    this.statusNote,
  });

  factory TrackingStatusDetail.fromJson(Map<String, dynamic> json) =>
      TrackingStatusDetail(
        branchCode: json["branch_code"],
        branchName: json["branch_name"],
        dateprocess: json["dateprocess"],
        status: json["status"],
        statusBy: json["status_by"],
        statusNote: json["status_note"],
      );

  Map<String, dynamic> toJson() => {
        "branch_code": branchCode,
        "branch_name": branchName,
        "dateprocess": dateprocess,
        "status": status,
        "status_by": statusBy,
        "status_note": statusNote,
      };
}

class Status {
  int? errorCode;
  String? errorMessage;
  String? message;
  int? statusCode;

  Status({
    this.errorCode,
    this.errorMessage,
    this.message,
    this.statusCode,
  });

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        errorCode: json["error_code"] != null
            ? int.parse(json["error_code"].toString())
            : null,
        errorMessage: json["error_message"],
        message: json["message"],
        statusCode: json["status_code"] != null
            ? int.parse(json["status_code"].toString())
            : null,
      );

  Map<String, dynamic> toJson() => {
        "error_code": errorCode,
        "error_message": errorMessage,
        "message": message,
        "status_code": statusCode,
      };
}
