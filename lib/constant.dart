import 'package:flutter/material.dart';

const List cardConstant = <Map<String, dynamic>>[
  {
    'color': Color(0xFF1BA37A),
    'balance': 12480209,
    'cardNumber': 1234567891013901
  },
  {
    'color': Color(0xFF5F59E1),
    'balance': 21084902,
    'cardNumber': 1234567891011093
  }
];

const List menuConstant = <Map<String, String>>[
  {'menu': 'Top Up', 'imagePath': 'top_up.png'},
  {'menu': 'Transfer', 'imagePath': 'transfer.png'},
  {'menu': 'Bills', 'imagePath': 'bills.png'},
  {'menu': 'Withdraw', 'imagePath': 'withdraw.png'},
  {'menu': 'Reward', 'imagePath': 'reward.png'},
  {'menu': 'Nearby', 'imagePath': 'nearby.png'}
];

const List bottomNavigationBarItemConstant = <Map<String, String>>[
  {'briefcase': 'fi_briefcase.png'},
  {'calendar': 'fi_calendar.png'},
  {'home': 'fi_home.png'},
  {'settings': 'fi_settings.png'}
];
