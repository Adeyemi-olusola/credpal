import 'package:flutter/material.dart' ;
import 'package:intl/intl.dart';



String formatToNaira(String amount) {
  try {
    double parsedAmount = double.parse(amount);
    final formatCurrency = NumberFormat.currency(locale: 'en_NG', symbol: '₦',  decimalDigits: 0);
    return formatCurrency.format(parsedAmount);
  } catch (e) {
    return 'Invalid amount';
  }
}
