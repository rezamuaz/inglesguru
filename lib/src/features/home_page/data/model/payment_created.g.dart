// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_created.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentCreatedImpl _$$PaymentCreatedImplFromJson(Map<String, dynamic> json) =>
    _$PaymentCreatedImpl(
      orderId: json['order_id'] as String? ?? "",
      userId: json['user_id'] as String? ?? "",
      paymentUrl: json['payment_url'] as String? ?? "",
      createdAt: (json['created_at'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PaymentCreatedImplToJson(
        _$PaymentCreatedImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'user_id': instance.userId,
      'payment_url': instance.paymentUrl,
      'created_at': instance.createdAt,
    };
