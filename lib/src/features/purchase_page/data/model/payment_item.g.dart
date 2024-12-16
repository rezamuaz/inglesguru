// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentItemImpl _$$PaymentItemImplFromJson(Map<String, dynamic> json) =>
    _$PaymentItemImpl(
      orderId: json['order_id'] as String? ?? "",
      userId: json['user_id'] as String? ?? "",
      status: json['status'] as String? ?? "",
      paymentUrl: json['payment_url'] as String? ?? "",
      paymentMethod: json['payment_method'] as String? ?? "",
      settlement: (json['settlement'] as num?)?.toInt() ?? 0,
      expiredAt: (json['expired_at'] as num?)?.toInt() ?? 0,
      updatedAt: (json['updated_at'] as num?)?.toInt() ?? 0,
      createdAt: (json['created_at'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PaymentItemImplToJson(_$PaymentItemImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'user_id': instance.userId,
      'status': instance.status,
      'payment_url': instance.paymentUrl,
      'payment_method': instance.paymentMethod,
      'settlement': instance.settlement,
      'expired_at': instance.expiredAt,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
    };

_$PurchaseModImpl _$$PurchaseModImplFromJson(Map<String, dynamic> json) =>
    _$PurchaseModImpl(
      result: (json['result'] as List<dynamic>?)
              ?.map((e) => PaymentItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PurchaseModImplToJson(_$PurchaseModImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
