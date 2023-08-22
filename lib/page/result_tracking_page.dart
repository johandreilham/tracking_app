import 'package:flutter/material.dart';
import 'package:tracking_app/config/model/model_resi.dart';

class ResultTrackingPage extends StatefulWidget {
  const ResultTrackingPage({super.key, this.resiDetail});

  final ResiModel? resiDetail;

  @override
  State<ResultTrackingPage> createState() => _ResultTrackingPageState();
}

class _ResultTrackingPageState extends State<ResultTrackingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil Pelacakan Resi'),
        backgroundColor: Color(0xFF154aa5),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Status Pengiriman :',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.black,
              ),
              const SizedBox(height: 8),
              ListView.builder(
                shrinkWrap: true,
                itemCount: widget
                    .resiDetail!.express21.results.trackingStatusDetail.length,
                itemBuilder: (context, index) {
                  TrackingStatusDetail detail = widget.resiDetail!.express21
                      .results.trackingStatusDetail[index];
                  return ListTile(
                    leading: Text(
                      detail.dateprocess ?? '',
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    title: Text(detail.status ?? '',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green)),
                    subtitle: Text(detail.statusBy ?? '',
                        style: const TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14)),
                  );
                },
              ),
              const SizedBox(height: 16),
              const Text(
                'Informasi Pengiriman :',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.black,
              ),
              const SizedBox(height: 16),
              Text(
                'Consignee Address: ${widget.resiDetail!.express21.results.shipmentDetail.consigneeAddress}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Consignee Name: ${widget.resiDetail!.express21.results.shipmentDetail.consigneeName}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Consignee Phone: ${widget.resiDetail!.express21.results.shipmentDetail.consigneePhone}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Customer Name: ${widget.resiDetail!.express21.results.shipmentDetail.customerName}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Date Process: ${widget.resiDetail!.express21.results.shipmentDetail.dateprocess}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Dest City: ${widget.resiDetail!.express21.results.shipmentDetail.destCity}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Fulfilment: ${widget.resiDetail!.express21.results.shipmentDetail.fulfilment}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Goods Value: ${widget.resiDetail!.express21.results.shipmentDetail.goodsValue}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Isi: ${widget.resiDetail!.express21.results.shipmentDetail.isi}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Nature of Goods: ${widget.resiDetail!.express21.results.shipmentDetail.natureOfGoods}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Note: ${widget.resiDetail!.express21.results.shipmentDetail.note}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Origin City: ${widget.resiDetail!.express21.results.shipmentDetail.originCity}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Payment Method: ${widget.resiDetail!.express21.results.shipmentDetail.paymentMethod}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Resi No: ${widget.resiDetail!.express21.results.shipmentDetail.resiNo}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Service Type: ${widget.resiDetail!.express21.results.shipmentDetail.serviceType}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Status: ${widget.resiDetail!.express21.results.shipmentDetail.status}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Total COD: ${widget.resiDetail!.express21.results.shipmentDetail.totalCod}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Total Chargeable Weight: ${widget.resiDetail!.express21.results.shipmentDetail.ttlChargeableWeight}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Total Piece: ${widget.resiDetail!.express21.results.shipmentDetail.ttlPiece}',
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }
}
