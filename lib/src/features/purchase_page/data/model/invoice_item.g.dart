// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceItemImpl _$$InvoiceItemImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceItemImpl(
      invoiceId: json['invoice_id'] as String? ?? "",
      orderId: json['order_id'] as String? ?? "",
      userId: json['user_id'] as String? ?? "",
      invoiceUrl: json['invoice_url'] as String? ?? "",
      paymentMethod: json['payment_method'] as String? ?? "",
      settlement: (json['settlement'] as num?)?.toInt() ?? 0,
      ref: json['ref'] as String? ?? "",
      updatedAt: (json['updated_at'] as num?)?.toInt() ?? 0,
      createdAt: (json['created_at'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$InvoiceItemImplToJson(_$InvoiceItemImpl instance) =>
    <String, dynamic>{
      'invoice_id': instance.invoiceId,
      'order_id': instance.orderId,
      'user_id': instance.userId,
      'invoice_url': instance.invoiceUrl,
      'payment_method': instance.paymentMethod,
      'settlement': instance.settlement,
      'ref': instance.ref,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
    };
