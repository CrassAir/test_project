import 'package:flutter/material.dart';

Map<int, dynamic> statusChoices = {
  1: {'title': 'В работе', 'color': Colors.green, 'bgcolor': Colors.green.shade50},
  2: {'title': 'Ремонт', 'color': Colors.amber, 'bgcolor': Colors.amber.shade100},
  3: {'title': 'Подготовка к запуску', 'color': Colors.yellow, 'bgcolor': Colors.yellow.shade100},
  4: {'title': 'Не в работе', 'color': Colors.red, 'bgcolor': Colors.red.shade100},
  5: {'title': 'Автономный режим', 'color': Colors.red, 'bgcolor': Colors.red.shade100},
};

Map<int, dynamic> connectorTypeChoices = {
  1: {'title': 'CHAdeMO'},
  7: {'title': 'CSS 2'},
  8: {'title': 'TYPE 2'},
  9: {'title': 'TYPE 1'},
  10: {'title': 'CSS 1'},
  12: {'title': 'GB/T DC'},
  14: {'title': 'Euro 220V'},
};