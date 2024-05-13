import 'package:flutter/material.dart';

Color getColor(int value) {
  switch (value) {
    case -1:
      return Color.fromRGBO(0, 0, 255, 1);
    case 131:
    case 111:
    case 117:
    case 148:
    case 832:
    case 88:
    case 42:
    case 11:
    case 27:
    case 18:
      return const Color.fromARGB(255, 255, 0, 0);
    case 133:
    case 151:
    case 132:
    case 103:
    case 136:
    case 107:
    case 140:
    case 113:
    case 150:
    case 112:
    case 80:
    case 01:
    case 50:
    case 13:
    case 19:
    case 60:
    case 64:
    case 2:
    case 12:
    case 16:
    case 24:
      return Colors.amber;
    case 54:
    case 43:
    case 17:
    case 14:
    case 28:
      return const Color.fromARGB(255, 137, 127, 39);
    case 135:
    case 143:
    case 145:
    case 149:
    case 153:
    case 130:
    case 134:
    case 105:
    case 123:
    case 72:
    case 78:
    case 61:
    case 7:
    case 20:
    case 26:
      return Color.fromARGB(255, 255, 80, 179);
    case 137:
    case 142:
    case 71:
    case 102:
    case 75:
    case 110:
    case 85:
    case 114:
    case 86:
    case 9:
    case 56:
    case 23:
      return Colors.green;
    case 139:
    case 101:
    case 73:
    case 106:
    case 47:
    case 74:
    case 76:
    case 82:
    case 46:
    case 52:
    case 21:
    case 25:
    case 62:
    case 4:
      return Colors.black;
    case 138:
    case 59:
    case 141:
    case 146:
    case 5:
    case 40:
      return Color.fromARGB(255, 53, 48, 48);
    case 147:
    case 159:
    case 119:
    case 108:
    case 51:
    case 63:
    case 6:
      return Colors.purple;
    case 155:
    case 144:
    case 49:
      return Colors.brown;
    case 127:
    case 70:
      return const Color.fromARGB(255, 64, 33, 22);
    case 161:
    case 152:
    case 87:
      return Colors.lime;
    case 157:
    case 109:
    case 121:
    case 41:
    case 44:
    case 48:
    case 15:
    case 10:
      return Colors.cyan;
    case 115:
    case 100:
    case 104:
    case 77:
    case 81:
    case 116:
    case 45:
    case 84:
    case 57:
    case 3:
    case 58:
      return Color.fromRGBO(255, 145, 160, 1);
    case 79:
    case 831:
    case 90:
      return Color.fromARGB(255, 12, 130, 81);
    case 89:
    case 91:
    case 8:
    case 22:
      return Color.fromARGB(255, 250, 134, 211);
    case 53:
      return Color.fromARGB(255, 210, 161, 194);
    case 125:
    case 55:
      return Color.fromARGB(255, 113, 51, 92);
    default:
      return Colors.transparent;
  }
}

class MapGenerator {
  List<List<int>> populateMap() {
    List<List<int>> map = List.generate(30, (_) => List.filled(60, 0));
    
    //vazio
    for (int i = 22; i <= 25; i++) {
      for (int j = 50; j <= 52; j++) {
        map[i][j] = -1;
      }
    }
    for (int i = 16; i <= 19; i++) {
      for (int j = 39; j <= 52; j++) {
        map[i][j] = -1;
      }
    }
    // Estande 131
    int standNumber = 131;
    for (int i = 29; i >= 28; i--) {
      for (int j = 53; j >= 52; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 133
    standNumber = 133;
    for (int i = 29; i >= 28; i--) {
      for (int j = 51; j >= 49; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 135
    standNumber = 135;
    for (int i = 29; i >= 28; i--) {
      for (int j = 48; j >= 46; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 137
    standNumber = 137;
    for (int i = 29; i >= 28; i--) {
      for (int j = 45; j >= 43; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 139
    standNumber = 139;
    for (int i = 29; i >= 28; i--) {
      for (int j = 42; j >= 41; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 141
    standNumber = 141;
    for (int i = 29; i >= 28; i--) {
      for (int j = 40; j >= 39; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 143
    standNumber = 143;
    for (int i = 29; i >= 28; i--) {
      for (int j = 38; j >= 36; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 145
    standNumber = 145;
    for (int i = 29; i >= 28; i--) {
      for (int j = 35; j >= 33; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 147
    standNumber = 147;
    for (int i = 29; i >= 28; i--) {
      for (int j = 32; j >= 31; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 149
    standNumber = 149;
    for (int i = 29; i >= 28; i--) {
      for (int j = 30; j >= 23; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 151
    standNumber = 151;
    for (int i = 29; i >= 28; i--) {
      for (int j = 22; j >= 20; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 153
    standNumber = 153;
    for (int i = 29; i >= 28; i--) {
      for (int j = 19; j >= 17; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 155
    standNumber = 155;
    for (int i = 29; i >= 28; i--) {
      for (int j = 16; j >= 15; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 157
    standNumber = 157;
    for (int i = 29; i >= 28; i--) {
      for (int j = 14; j >= 12; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 159
    standNumber = 159;
    for (int i = 29; i >= 28; i--) {
      for (int j = 11; j >= 8; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 161
    standNumber = 161;
    for (int i = 29; i >= 28; i--) {
      for (int j = 7; j >= 3; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 130
    standNumber = 130;
    for (int i = 25; i >= 24; i--) {
      for (int j = 49; j >= 47; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 101
    standNumber = 101;
    for (int i = 23; i >= 22; i--) {
      for (int j = 49; j >= 47; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 132
    standNumber = 132;
    for (int i = 25; i >= 24; i--) {
      for (int j = 46; j >= 44; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 103
    standNumber = 103;
    for (int i = 23; i >= 22; i--) {
      for (int j = 46; j >= 44; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 134
    standNumber = 134;
    for (int i = 25; i >= 24; i--) {
      for (int j = 43; j >= 41; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 105
    standNumber = 105;
    for (int i = 23; i >= 22; i--) {
      for (int j = 43; j >= 41; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 136
    standNumber = 136;
    for (int i = 25; i >= 24; i--) {
      for (int j = 40; j >= 39; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 107
    standNumber = 107;
    for (int i = 23; i >= 22; i--) {
      for (int j = 40; j >= 39; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 109
    standNumber = 109;
    for (int i = 25; i >= 22; i--) {
      for (int j = 35; j >= 32; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 138
    standNumber = 138;
    for (int i = 25; i >= 24; i--) {
      for (int j = 31; j >= 30; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 111
    standNumber = 111;
    for (int i = 23; i >= 22; i--) {
      for (int j = 31; j >= 30; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 140
    standNumber = 140;
    for (int i = 25; i >= 24; i--) {
      for (int j = 29; j >= 27; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 113
    standNumber = 113;
    for (int i = 23; i >= 22; i--) {
      for (int j = 29; j >= 27; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 142
    standNumber = 142;
    for (int i = 25; i >= 24; i--) {
      for (int j = 26; j >= 24; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 115
    standNumber = 115;
    for (int i = 23; i >= 22; i--) {
      for (int j = 26; j >= 24; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 144
    standNumber = 144;
    for (int i = 25; i >= 24; i--) {
      for (int j = 23; j >= 21; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 117
    standNumber = 117;
    for (int i = 23; i >= 22; i--) {
      for (int j = 23; j >= 21; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 146
    standNumber = 146;
    for (int i = 25; i >= 24; i--) {
      for (int j = 17; j >= 16; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 119
    standNumber = 119;
    for (int i = 23; i >= 22; i--) {
      for (int j = 17; j >= 16; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 148
    standNumber = 148;
    for (int i = 25; i >= 24; i--) {
      for (int j = 15; j >= 13; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 121
    standNumber = 121;
    for (int i = 23; i >= 22; i--) {
      for (int j = 15; j >= 13; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 150
    standNumber = 150;
    for (int i = 25; i >= 24; i--) {
      for (int j = 12; j >= 10; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 123
    standNumber = 123;
    for (int i = 23; i >= 22; i--) {
      for (int j = 12; j >= 10; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 152
    standNumber = 152;
    for (int i = 25; i >= 24; i--) {
      for (int j = 9; j >= 7; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 125
    standNumber = 125;
    for (int i = 23; i >= 22; i--) {
      for (int j = 9; j >= 7; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 127
    standNumber = 127;
    for (int i = 25; i >= 22; i--) {
      for (int j = 6; j >= 3; j--) {
        map[i][j] = standNumber;
      }
    }

    // Estande 91
    standNumber = 91;
    for (int i = 19; i >= 16; i--) {
      for (int j = 6; j >= 3; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 71
    standNumber = 71;
    for (int i = 17; i >= 16; i--) {
      for (int j = 35; j >= 33; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 100
    standNumber = 100;
    for (int i = 19; i >= 18; i--) {
      for (int j = 35; j >= 33; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 73
    standNumber = 73;
    for (int i = 17; i >= 16; i--) {
      for (int j = 32; j >= 31; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 102
    standNumber = 102;
    for (int i = 19; i >= 18; i--) {
      for (int j = 32; j >= 31; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 75
    standNumber = 75;
    for (int i = 17; i >= 16; i--) {
      for (int j = 30; j >= 29; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 104
    standNumber = 104;
    for (int i = 19; i >= 18; i--) {
      for (int j = 30; j >= 29; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 77
    standNumber = 77;
    for (int i = 17; i >= 16; i--) {
      for (int j = 28; j >= 27; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 106
    standNumber = 106;
    for (int i = 19; i >= 18; i--) {
      for (int j = 28; j >= 27; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 79
    standNumber = 79;
    for (int i = 17; i >= 16; i--) {
      for (int j = 26; j >= 24; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 108
    standNumber = 108;
    for (int i = 19; i >= 18; i--) {
      for (int j = 26; j >= 24; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 81
    standNumber = 81;
    for (int i = 17; i >= 16; i--) {
      for (int j = 23; j >= 21; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 110
    standNumber = 110;
    for (int i = 19; i >= 18; i--) {
      for (int j = 23; j >= 21; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 83
    for (int i = 19; i >= 16; i--) {
      for (int j = 17; j >= 15; j--) {
        if ((i + j) % 2 == 0) {
          map[i][j] = 831;
        } else {
          map[i][j] = 832;
        }
      }
    }
    // Estande 85
    standNumber = 85;
    for (int i = 17; i >= 16; i--) {
      for (int j = 14; j >= 12; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 112
    standNumber = 112;
    for (int i = 19; i >= 18; i--) {
      for (int j = 14; j >= 12; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 87
    standNumber = 87;
    for (int i = 17; i >= 16; i--) {
      for (int j = 11; j >= 9; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 114
    standNumber = 114;
    for (int i = 19; i >= 18; i--) {
      for (int j = 11; j >= 9; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 89
    standNumber = 89;
    for (int i = 17; i >= 16; i--) {
      for (int j = 8; j >= 6; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 116
    standNumber = 116;
    for (int i = 19; i >= 18; i--) {
      for (int j = 8; j >= 6; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 91
    standNumber = 91;
    for (int i = 19; i >= 16; i--) {
      for (int j = 5; j >= 3; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 41
    standNumber = 41;
    for (int i = 13; i >= 10; i--) {
      for (int j = 52; j >= 41; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 43
    standNumber = 43;
    for (int i = 11; i >= 10; i--) {
      for (int j = 40; j >= 39; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 70
    standNumber = 70;
    for (int i = 13; i >= 12; i--) {
      for (int j = 40; j >= 39; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 45
    standNumber = 45;
    for (int i = 11; i >= 10; i--) {
      for (int j = 35; j >= 33; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 72
    standNumber = 72;
    for (int i = 13; i >= 12; i--) {
      for (int j = 35; j >= 34; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 47
    standNumber = 47;
    for (int i = 11; i >= 10; i--) {
      for (int j = 32; j >= 30; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 74
    standNumber = 74;
    for (int i = 13; i >= 12; i--) {
      for (int j = 33; j >= 31; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 49
    standNumber = 49;
    for (int i = 11; i >= 10; i--) {
      for (int j = 29; j >= 28; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 76
    standNumber = 76;
    for (int i = 13; i >= 12; i--) {
      for (int j = 30; j >= 28; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 51
    standNumber = 51;
    for (int i = 11; i >= 10; i--) {
      for (int j = 27; j >= 24; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 78
    standNumber = 78;
    for (int i = 13; i >= 12; i--) {
      for (int j = 27; j >= 26; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 80
    standNumber = 80;
    for (int i = 13; i >= 12; i--) {
      for (int j = 25; j >= 24; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 53
    standNumber = 53;
    for (int i = 11; i >= 10; i--) {
      for (int j = 23; j >= 21; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 82
    standNumber = 82;
    for (int i = 13; i >= 12; i--) {
      for (int j = 23; j >= 21; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 55
    standNumber = 55;
    for (int i = 11; i >= 10; i--) {
      for (int j = 17; j >= 15; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 84
    standNumber = 84;
    for (int i = 13; i >= 12; i--) {
      for (int j = 17; j >= 14; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 57
    standNumber = 57;
    for (int i = 11; i >= 10; i--) {
      for (int j = 14; j >= 12; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 86
    standNumber = 86;
    for (int i = 13; i >= 12; i--) {
      for (int j = 13; j >= 12; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 59
    standNumber = 59;
    for (int i = 11; i >= 10; i--) {
      for (int j = 11; j >= 9; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 88
    standNumber = 88;
    for (int i = 13; i >= 12; i--) {
      for (int j = 11; j >= 9; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 61
    standNumber = 61;
    for (int i = 11; i >= 10; i--) {
      for (int j = 8; j >= 6; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 90
    standNumber = 90;
    for (int i = 13; i >= 12; i--) {
      for (int j = 8; j >= 6; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 63
    standNumber = 63;
    for (int i = 13; i >= 10; i--) {
      for (int j = 5; j >= 3; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 1
    standNumber = 1;
    for (int i = 7; i >= 4; i--) {
      for (int j = 52; j >= 51; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 3
    standNumber = 3;
    for (int i = 5; i >= 4; i--) {
      for (int j = 50; j >= 48; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 40
    standNumber = 40;
    for (int i = 7; i >= 6; i--) {
      for (int j = 50; j >= 48; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 5
    standNumber = 5;
    for (int i = 5; i >= 4; i--) {
      for (int j = 47; j >= 45; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 42
    standNumber = 42;
    for (int i = 7; i >= 6; i--) {
      for (int j = 47; j >= 45; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 7
    standNumber = 7;
    for (int i = 5; i >= 4; i--) {
      for (int j = 44; j >= 42; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 44
    standNumber = 44;
    for (int i = 7; i >= 6; i--) {
      for (int j = 44; j >= 42; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 9
    standNumber = 9;
    for (int i = 5; i >= 4; i--) {
      for (int j = 41; j >= 39; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 46
    standNumber = 46;
    for (int i = 7; i >= 6; i--) {
      for (int j = 41; j >= 39; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 11
    standNumber = 11;
    for (int i = 5; i >= 4; i--) {
      for (int j = 35; j >= 33; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 48
    standNumber = 48;
    for (int i = 7; i >= 6; i--) {
      for (int j = 35; j >= 33; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 13
    standNumber = 13;
    for (int i = 5; i >= 4; i--) {
      for (int j = 32; j >= 30; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 50
    standNumber = 50;
    for (int i = 7; i >= 6; i--) {
      for (int j = 32; j >= 30; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 15
    standNumber = 15;
    for (int i = 5; i >= 4; i--) {
      for (int j = 29; j >= 27; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 52
    standNumber = 52;
    for (int i = 7; i >= 6; i--) {
      for (int j = 29; j >= 27; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 17
    standNumber = 17;
    for (int i = 5; i >= 4; i--) {
      for (int j = 26; j >= 24; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 54
    standNumber = 54;
    for (int i = 7; i >= 6; i--) {
      for (int j = 26; j >= 24; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 19
    standNumber = 19;
    for (int i = 5; i >= 4; i--) {
      for (int j = 23; j >= 21; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 56
    standNumber = 56;
    for (int i = 7; i >= 6; i--) {
      for (int j = 23; j >= 21; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 21
    standNumber = 21;
    for (int i = 5; i >= 4; i--) {
      for (int j = 16; j >= 13; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 58
    standNumber = 58;
    for (int i = 7; i >= 6; i--) {
      for (int j = 16; j >= 13; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 23
    standNumber = 23;
    for (int i = 5; i >= 4; i--) {
      for (int j = 12; j >= 10; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 60
    standNumber = 60;
    for (int i = 7; i >= 6; i--) {
      for (int j = 12; j >= 10; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 25
    standNumber = 25;
    for (int i = 5; i >= 4; i--) {
      for (int j = 9; j >= 7; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 62
    standNumber = 62;
    for (int i = 7; i >= 6; i--) {
      for (int j = 9; j >= 7; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 27
    standNumber = 27;
    for (int i = 5; i >= 4; i--) {
      for (int j = 6; j >= 4; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 64
    standNumber = 64;
    for (int i = 7; i >= 6; i--) {
      for (int j = 6; j >= 4; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 2
    standNumber = 2;
    for (int i = 1; i >= 0; i--) {
      for (int j = 50; j >= 48; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 4
    standNumber = 4;
    for (int i = 1; i >= 0; i--) {
      for (int j = 47; j >= 45; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 6
    standNumber = 6;
    for (int i = 1; i >= 0; i--) {
      for (int j = 44; j >= 42; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 8
    standNumber = 8;
    for (int i = 1; i >= 0; i--) {
      for (int j = 41; j >= 39; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 10
    standNumber = 10;
    for (int i = 1; i >= 0; i--) {
      for (int j = 35; j >= 33; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 12
    standNumber = 12;
    for (int i = 1; i >= 0; i--) {
      for (int j = 32; j >= 30; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 14
    standNumber = 14;
    for (int i = 1; i >= 0; i--) {
      for (int j = 29; j >= 27; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 16
    standNumber = 16;
    for (int i = 1; i >= 0; i--) {
      for (int j = 26; j >= 24; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 18
    standNumber = 18;
    for (int i = 1; i >= 0; i--) {
      for (int j = 23; j >= 21; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 20
    standNumber = 20;
    for (int i = 1; i >= 0; i--) {
      for (int j = 17; j >= 15; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 22
    standNumber = 22;
    for (int i = 1; i >= 0; i--) {
      for (int j = 14; j >= 12; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 24
    standNumber = 24;
    for (int i = 1; i >= 0; i--) {
      for (int j = 11; j >= 9; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 26
    standNumber = 26;
    for (int i = 1; i >= 0; i--) {
      for (int j = 8; j >= 6; j--) {
        map[i][j] = standNumber;
      }
    }
    // Estande 28
    standNumber = 28;
    for (int i = 1; i >= 0; i--) {
      for (int j = 5; j >= 3; j--) {
        map[i][j] = standNumber;
      }
    }
    return map;
  }
}
List<Point> findPath(List<List<int>> map) {
  final openSet = <Point>[];
  final closedSet = <Point>{};

  final start = Point(0, 0);
  final goal = Point(30 - 1, 60 - 1);

  final cameFrom = <Point, Point>{};
  final gScore = <Point, int>{};
  final fScore = <Point, int>{};

  gScore[start] = 0;
  fScore[start] = heuristicCostEstimate(start, goal);

  openSet.add(start);

  while (openSet.isNotEmpty) {
    openSet.sort((a, b) =>
        (fScore[a] ?? double.infinity).compareTo(fScore[b] ?? double.infinity));
    final current = openSet.removeAt(0);

    if (current == goal) {
      return reconstructPath(cameFrom, current);
    }

    closedSet.add(current);

    for (final neighbor in getNeighbors(current, map)) {
      if (closedSet.contains(neighbor)) continue;

      final tentativeGScore = (gScore[current] ?? 0) + 1;

      if (!openSet.contains(neighbor) ||
          tentativeGScore < (gScore[neighbor] ?? double.infinity)) {
        cameFrom[neighbor] = current;
        gScore[neighbor] = tentativeGScore;
        fScore[neighbor] =
            tentativeGScore + heuristicCostEstimate(neighbor, goal);
        if (!openSet.contains(neighbor)) {
          openSet.add(neighbor);
        }
      }
    }
  }

  // If no path found, return an empty list
  return [];
}

List<Point> getNeighbors(Point point, List<List<int>> map) {
  final neighbors = <Point>[];

  if (point.x > 0 && map[point.x - 1][point.y] == 0) {
    neighbors.add(Point(point.x - 1, point.y));
  }
  if (point.x < map.length - 1 && map[point.x + 1][point.y] == 0) {
    neighbors.add(Point(point.x + 1, point.y));
  }
  if (point.y > 0 && map[point.x][point.y - 1] == 0) {
    neighbors.add(Point(point.x, point.y - 1));
  }
  if (point.y < map[0].length - 1 && map[point.x][point.y + 1] == 0) {
    neighbors.add(Point(point.x, point.y + 1));
  }

  return neighbors;
}

int heuristicCostEstimate(Point start, Point goal) {
  return (start.x - goal.x).abs() + (start.y - goal.y).abs();
}

List<Point> reconstructPath(Map<Point, Point> cameFrom, Point current) {
  final List<Point> totalPath = [current];
  while (cameFrom.containsKey(current)) {
    current = cameFrom[current]!;
    totalPath.add(current);
  }
  return totalPath.reversed.toList();
}

class Point {
  final int x;
  final int y;

  Point(this.x, this.y);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Point &&
          runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y;

  @override
  int get hashCode => x.hashCode ^ y.hashCode;

  @override
  String toString() {
    return '($x, $y)';
  }
}

class GridPainter extends CustomPainter {
  final List<List<int>> map;
  final List<Point> path;

  GridPainter(this.map, this.path);

  @override
  void paint(Canvas canvas, Size size) {
    final cellWidth = size.width / map[0].length;
    final cellHeight = size.height / map.length;
    final pathPaint = Paint()..color = Colors.blue;
    for (var point in path) {
      canvas.drawRect(
        Rect.fromLTWH(
          point.y * cellWidth,
          point.x * cellHeight,
          cellWidth,
          cellHeight,
        ),
        pathPaint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
