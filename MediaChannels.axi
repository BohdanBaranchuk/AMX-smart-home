PROGRAM_NAME='MediaChannels'




define_variable


integer remoteRoom_TV_Loewe[] =		// controlRoom_2fl_Bedroom
{
1000,	// 1 on
1001,	// 2 off
1002,	// 3 mute
1003,	// 4 Volume-
1004,	// 5 Volume+
1005,	// 6 >
1006,	// 7 <
1007,	// 8 ^
1008,	// 9 v
1009,	// 10 OK
1010,	// 11 key_0
1011,	// 12 key_1
1012,	// 13 key_2
1013,	// 14 key_3
1014,	// 15 key_4
1015,	// 16 key_5
1016,	// 17 key_6
1017,	// 18 key_7
1018,	// 19 key_8
1019,	// 20 key_9
1020,	// 21 PIP
1021,	// 22 Menu
1022,	// 23 EPG
1023,	// 24 P-
1024,	// 25 P+
1025,	// 26 green
1026,	// 27 red
1027,	// 28 blue
1028,	// 29 yellow
1029,	// 30 VCR
1030,	// 31 SAT
1031,	// 32 back
1032,	// 33 Home
1033,	// 34 info
1034,	// 35 PAUSE
1035,	// 36 <<
1036,	// 37 >>
1037,	// 36 PLAY
1038,	// 36 STOP
1039,	// 36 HDMI1
1040,	// 36 HDMI2
1041,	// 36 n_HDMI1
1042,	// 36 n_HDMI2
1043,	// 36 n_HDMI3
1044,	// 36 n_0
1045,	// 36 2650_HDMI
1046,	// 36 2650_Component
1047,	// 36 2650_VGA
1048	// 36 2650_AV1
}

integer AVP550[] = 
{
1100,	// 1 Input BD (BD) 	not!
1101,	// 2 Input SAT		not!
1102,	// 3 Input AV		not!
1103,	// 4 Input PVR		not!
1104,	// 5 Input VCR		not!
1105,	// 6 Input GAme		not!
1106,	// 7 Input STB		not!
1107,	// 8 RC5 Standby
1108,	// 9 RC5 1
1109,	// 10 RC5 2
1110,	// 11 RC5 3
1111,	// 12 RC5 4
1112,	// 13 RC5 5
1113,	// 14 RC5 6
1114,	// 15 RC5 7
1115,	// 16 RC5 8
1116,	// 17 RC5 9
1117,	// 18 RC5 0
1118,	// 19 RC5 Menu
1119,	// 20 RC5 UP
1120,	// 21 RC5 Left
1121,	// 22 RC5 OK
1122,	// 23 RC5 Right
1123,	// 24 RC5 Down
1124,	// 25 RC5 Home
1125,	// 26 RC5 Mute
1126,	// 27 RC5 Volume+
1127,	// 28 RC5 Volume-
1128,	// 29 RC5 Radio
1129,	// 30 RC5 AUX
1130,	// 31 RC5 NET
1131,	// 32 RC5 USB
1132,	// 33 RC5 AV
1133,	// 34 RC5 SAT
1134,	// 35 RC5 PVR
1135,	// 36 RC5 GAme
1136,	// 37 RC5 BD
1137,	// 38 RC5 CD
1138,	// 39 RC5 STB
1139,	// 40 RC5 VCR
1140,	// 41 RC5 Power ON
1141,	// 42 RC5 POwer OFF
1142,	// 43 RC5 Audio mode Multi Channel
1143,	// 44 RC5 Audio mode Stereo
1144,	// 45 RC5 Audio mode Dolby Surround
1145,	// 46 RC5 Audio mode DTS Neo:6 Cinema
1146,	// 47 RC5 Audio mode DTS Neo:6 Music
1147,	// 48 RC5 Audio mode 5/7 Ch Stereo
1148,	// 49 RC5 Audio mode Dolby D EX
1149,	// 50 RC5 Mute On
1150,	// 51 RC5 Mute OFF 
500	// 52 Volume baragraph
}

integer remoteRoom_AuraHD[] =		// 
{
1200,	// 1 power
1201,	// 2 mute
1202,	// 3 mic
1203,	// 4 k_1
1204,	// 5 k_2
1205,	// 6 k_3
1206,	// 7 k_4
1207,	// 8 k_5
1208,	// 9 k_6
1209,	// 10 k_7
1210,	// 11 k_8
1211,	// 12 k_9
1212,	// 13 k_0
1213,	// 14 MENU
1214,	// 15 BACK
1215,	// 16 CH-
1216,	// 17 CH+
1217,	// 18 exit
1218,	// 19 Refresh
1219,	// 20 UP
1220,	// 21 DOWN
1221,	// 22 LEFT
1222,	// 23 RIGHT
1223,	// 24 Page+
1224,	// 25 Page-
1225,	// 26 Volume-
1226,	// 27 Volume+
1227,	// 28 red
1228,	// 29 green
1229,	// 30 yellow
1230,	// 31 blue
1231,	// 32 serv
1232,	// 33 tv
1233,	// 34 phone
1234,	// 35 web
1235,	// 36 <<
1236,	// 37 >>
1237,	// 36 PLAY
1238,	// 36 STOP
1239,	// 36 rec
1240,	// 36 info
1241,	// 36 frame
1242,	// 36 spec
1243,	// 36 OK
1244,	// 36 Mode
1245,	// 36 pip
1246,	// 36 swap
1247	// 36 fav
}

integer remoteRoom_AuraHD_alt[] =		// 
{
1250,	// 1 power
1251,	// 2 set
1252,	// 3 mute
1253,	// 4 music
1254,	// 5 kb
1255,	// 6 app
1256,	// 7 tv
1257,	// 8 red
1258,	// 9 green
1259,	// 10 yellow
1260,	// 11 blue
1261,	// 12 menu
1262,	// 13 back
1263,	// 14 up
1264,	// 15 down
1265,	// 16 left
1266,	// 17 right
1267,	// 18 OK
1268,	// 19 Exit
1269,	// 20 Info
1270,	// 21 CH+
1271,	// 22 CH-
1272,	// 23 Page+
1273,	// 24 Page-
1274,	// 25 Volume+
1275,	// 26 Volume-
1276,	// 27 <<
1277,	// 28 >>
1278,	// 29 pause/play
1279,	// 30 stop
1280,	// 31 1
1281,	// 32 2
1282,	// 33 3
1283,	// 34 4
1284,	// 35 5
1285,	// 36 6
1286,	// 37 7
1287,	// 38 8
1288,	// 39 9
1289,	// 40 0
1290,	// 41 zoom
1291	// 42 del
}


integer sourceRoomPower_2fl_Bedroom[] =
{
2130	// 1
}



integer ChanServiceMedia[] =
{
    2400	// 1 run Service
}