PROGRAM_NAME='EngineeringChannels'
/*
    TS3 buttons
    fanCoil buttons
    underfloor heating
*/


DEFINE_VARIABLE



integer navigat_selectRoom_air[] =
{
    40,	// Room1
    41,	// Room2
    42, // Room3
    43, // Room4
    44, // Room5
    45  // Room6
}

integer navigat_selectRoom_windows[] =
{
    50,	// Room1
    51,	// Room2
    52, // Room3
    53, // Room4
    54, // Room5
    55, // Room6
    56,	// Room7
    57,	// Room8
    58, // Room9
    59, // Room10
    60, // Room11
    61, // Room12
    62,	// Room13
    63,	// Room14
    64, // Room15
    65, // Room16
    66, // Room17
    67, // Room18
    68,	// Room19
    69,	// Room20
    70, // Room21
    71, // Room22
    72, // Room23
    73  // Room24
}

integer navigat_selectRoom_floor[] =
{
    76,	// Room1
    77,	// Room2
    78, // Room3
    79, // Room4
    80, // Room5
    81, // Room6
    82	// Room7
}

integer navigat_selectRoom_radiator[] =
{
    86,	// Room1
    87,	// Room2
    88, // Room3
    89, // Room4
    90, // Room5
    91, // Room6
    92,	// Room7
    93,	// Room8
    94, // Room9
    95, // Room10
    96, // Room11
    97, // Room12
    98	// Room13
}

integer navigat_selectSource[] =
{
    100,	// 1 media
    101,	// 2 air
    102,	// 3 floor
    103,	// 4 radiator
    104,	// 5 windows
    105,	// 6 light
    106		// 7 Map
}

integer navigat_selectRoom_light[] =
{
    111,	// Room1
    112,	// Room2
    113,	// Room3
    114,	// Room4
    115,	// Room5
    116,	// Room6
    117,	// Room7
    118,	// Room8
    119,	// Room9
    120,	// Room10
    121,	// Room11
    122,	// Room12
    123,	// Room13
    124,	// Room14
    125,	// Room15
    126,	// Room16
    127 	// Room17
}

integer navigat_selectRoom_media[] =
{
    130,	// Room1	2fl Bedroom
    131,	// Room2	2fl Kinder
    132, 	// Room3	2fl Guest
    133, 	// Room4	1fl Cinema
    134, 	// Room5	1fl Kitchen
    135 	// Room6	1fl Kabinet
}


integer TS3_setMode_rooms[24][4] = 
{
    {201,202,203,204},	//1 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #1
    {207,208,209,210},	//2 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #2
    {213,214,215,216},	//3 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #3
    {219,220,221,222},	//4 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #4
    {225,226,227,228},	//5 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #5
    {231,232,233,234},	//6 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #6
    {237,238,239,240},	//7 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #7
    {243,244,245,246},	//8 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #8
    {249,250,251,252},	//9 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #9
    {255,256,257,258},	//10 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #10
    {261,262,263,264},	//11 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #11
    {267,268,269,270},	//12 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #12
    {273,274,275,276},	//13 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #13
    {279,280,281,282},	//14 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #14
    {285,286,287,288},	//15 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #15
    {291,292,293,294},	//16 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #16
    {297,298,299,300},	//17 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #17
    {303,304,305,306},	//18 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #18
    {309,310,311,312},	//19 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #19
    {315,316,317,318},	//20 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #20
    {321,322,323,324},	//21 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #21
    {327,328,329,330},	//22 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #22
    {333,334,335,336},	//23 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #23
    {339,340,341,342}	//24 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Room #24
}

integer TS3_setTemp_rooms[24][4] = 
{
    {401,402,403,404},	//1 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #1
    {406,407,408,409},	//2 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #2
    {412,413,414,415},	//3 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #3
    {418,419,420,421},	//4 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #4
    {424,425,426,427},	//5 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #5
    {430,431,432,433},	//6 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #6
    {436,437,438,439},	//7 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #7
    {442,443,444,445},	//8 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #8
    {448,449,450,451},	//9 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #9
    {454,455,456,457},	//10 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #10
    {460,461,462,463},	//11 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #11
    {466,467,468,469},	//12 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #12
    {472,473,474,475},	//13 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #13
    {478,479,480,481},	//14 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #14
    {484,485,486,487},	//15 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #15
    {490,491,492,493},	//16 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #16
    {496,497,498,499},	//17 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #17
    {508,509,510,511},	//18 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #18
    {514,515,516,517},	//19 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #19
    {520,521,522,523},	//20 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #20
    {526,527,528,529},	//21 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #21
    {532,533,534,535},	//22 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #22
    {538,539,540,541},	//23 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #23
    {544,545,546,547}	//24 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Room #24
}

integer TS3_showInfo_rooms[24][3] = 
{
    {601,602,603},	//1 1-on mode,2-setted temp,3-current temp; Room #1
    {606,607,608},	//2 1-on mode,2-setted temp,3-current temp; Room #2
    {611,612,613},	//3 1-on mode,2-setted temp,3-current temp; Room #3
    {616,617,618},	//4 1-on mode,2-setted temp,3-current temp; Room #4
    {621,622,623},	//5 1-on mode,2-setted temp,3-current temp; Room #5
    {626,627,628},	//6 1-on mode,2-setted temp,3-current temp; Room #6
    {631,632,633},	//7 1-on mode,2-setted temp,3-current temp; Room #7
    {636,637,638},	//8 1-on mode,2-setted temp,3-current temp; Room #8
    {641,642,643},	//9 1-on mode,2-setted temp,3-current temp; Room #9
    {646,647,648},	//10 1-on mode,2-setted temp,3-current temp; Room #10
    {651,652,653},	//11 1-on mode,2-setted temp,3-current temp; Room #11
    {656,657,658},	//12 1-on mode,2-setted temp,3-current temp; Room #12
    {661,662,663},	//13 1-on mode,2-setted temp,3-current temp; Room #13
    {666,667,668},	//14 1-on mode,2-setted temp,3-current temp; Room #14
    {671,672,673},	//15 1-on mode,2-setted temp,3-current temp; Room #15
    {676,677,678},	//16 1-on mode,2-setted temp,3-current temp; Room #16
    {681,682,683},	//17 1-on mode,2-setted temp,3-current temp; Room #17
    {686,687,688},	//18 1-on mode,2-setted temp,3-current temp; Room #18
    {691,692,693},	//19 1-on mode,2-setted temp,3-current temp; Room #19
    {696,697,698},	//20 1-on mode,2-setted temp,3-current temp; Room #20
    {701,702,703},	//21 1-on mode,2-setted temp,3-current temp; Room #21
    {706,707,708},	//22 1-on mode,2-setted temp,3-current temp; Room #22
    {711,712,713},	//23 1-on mode,2-setted temp,3-current temp; Room #23
    {716,717,718}	//24 1-on mode,2-setted temp,3-current temp; Room #24
}

integer fanCoils_temps [6][2] = 
{
    {801,802},		//1 1-currentTemp, 2 - setted temp; Room #1
    {804,805},		//2 1-currentTemp, 2 - setted temp; Room #2
    {807,808},		//3 1-currentTemp, 2 - setted temp; Room #3
    {810,811},		//4 1-currentTemp, 2 - setted temp; Room #4
    {813,814},		//5 1-currentTemp, 2 - setted temp; Room #5
    {816,817}		//6 1-currentTemp, 2 - setted temp; Room #6
}

integer fanCoils_ChangeTemps [6][2] = 
{
    {840,841},		//1 1-UPTemp, 2 - Down temp; Room #1
    {843,844},		//2 1-UPTemp, 2 - Down temp; Room #2
    {846,847},		//3 1-UPTemp, 2 - Down temp; Room #3
    {849,850},		//4 1-UPTemp, 2 - Down temp; Room #4
    {852,853},		//5 1-UPTemp, 2 - Down temp; Room #5
    {855,856}		//6 1-UPTemp, 2 - Down temp; Room #6
}

integer fanCoils_ChangeMode [6][3] = 
{
    {870,871,872},		//1 1-AUTO, 2-OFF, 3-ON; Room #1
    {874,875,876},		//2 1-AUTO, 2-OFF, 3-ON; Room #2
    {878,879,880},		//3 1-AUTO, 2-OFF, 3-ON; Room #3
    {882,883,884},		//4 1-AUTO, 2-OFF, 3-ON; Room #4
    {886,887,888},		//5 1-AUTO, 2-OFF, 3-ON; Room #5
    {890,891,892}		//6 1-AUTO, 2-OFF, 3-ON; Room #6
}

integer fanCoils_ChangeSpeed [6][5] = 
{
    {900,901,902,3,4},		//1 1-Low, 2-Mid, 3-Hig, 4-barShow, 5-barControl; Room #1
    {906,907,908,9,10},		//2 1-Low, 2-Mid, 3-Hig, 4-barShow, 5-barControl; Room #2
    {912,913,914,15,16},		//3 1-Low, 2-Mid, 3-Hig, 4-barShow, 5-barControl; Room #3
    {918,919,920,21,22},		//4 1-Low, 2-Mid, 3-Hig, 4-barShow, 5-barControl; Room #4
    {924,925,926,27,28},		//5 1-Low, 2-Mid, 3-Hig, 4-barShow, 5-barControl; Room #5
    {930,931,932,33,34}		//6 1-Low, 2-Mid, 3-Hig, 4-barShow, 5-barControl; Room #6
}

integer fanCoils_ChangeWinSum [] =
{
    950				// change between winter and summer
} 

integer fanCoils_infoSpeed [6] = 
{
    960,			// 1 Room#1
    961,			// 2 Room#2
    962,			// 3 Room#3
    963,			// 4 Room#4
    964,			// 5 Room#5
    965				// 6 Room#6
}

integer fanCoils_infoTempCurrent [6] = 
{
    970,			// 1 Room#1
    971,			// 2 Room#2
    972,			// 3 Room#3
    973,			// 4 Room#4
    974,			// 5 Room#5
    975				// 6 Room#6
}

integer fanCoils_infoTempNeeded [6] = 
{
    980,			// 1 Room#1
    981,			// 2 Room#2
    982,			// 3 Room#3
    983,			// 4 Room#4
    984,			// 5 Room#5
    985				// 6 Room#6
}

integer fanCoils_infoMode [6] = 
{
    990,			// 1 Room#1
    991,			// 2 Room#2
    992,			// 3 Room#3
    993,			// 4 Room#4
    994,			// 5 Room#5
    995				// 6 Room#6
}


integer floorHeating_ChangeMode [8][3] = 
{
    {1000,1001,1002},		//1 1-AUTO, 2-OFF, 3-ON; Room #1
    {1005,1006,1007},		//2 1-AUTO, 2-OFF, 3-ON; Room #2
    {1010,1011,1012},		//3 1-AUTO, 2-OFF, 3-ON; Room #3
    {1015,1016,1017},		//4 1-AUTO, 2-OFF, 3-ON; Room #4
    {1020,1021,1022},		//5 1-AUTO, 2-OFF, 3-ON; Room #5
    {1025,1026,1027},		//6 1-AUTO, 2-OFF, 3-ON; Room #6
    {1030,1031,1032},		//7 1-AUTO, 2-OFF, 3-ON; Room #7
    {1035,1036,1037}		// for garaj second area
}

integer floorHeating_ChangeTemp [8][4] = 
{
    {1050,1051,1052,1053},		//1 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #1
    {1056,1057,1058,1059},		//2 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #2
    {1062,1063,1064,1065},		//3 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #3
    {1068,1069,1070,1071},		//4 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #4
    {1074,1075,1076,1077},		//5 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #5
    {1080,1081,1082,1083},		//6 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #6
    {1086,1087,1088,1089},		//7 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #7
    {1092,1093,1094,1095}		// for garaj second area
}

integer floorHeating_infoButtons [8][3] = 
{
    {1100,1101,1102},		//1 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #1
    {1105,1106,1107},		//2 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #2
    {1110,1111,1112},		//3 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #3
    {1115,1116,1117},		//4 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #4
    {1120,1121,1122},		//5 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #5
    {1125,1126,1127},		//6 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #6
    {1130,1131,1132},		//7 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #7
    {1135,1136,1137}		// for garaj second area
}


integer radiator_ChangeMode [13][3] = 
{
    {1200,1201,1202},		//1 1-AUTO, 2-OFF, 3-ON; Room #1
    {1205,1206,1207},		//2 1-AUTO, 2-OFF, 3-ON; Room #2
    {1210,1211,1212},		//3 1-AUTO, 2-OFF, 3-ON; Room #3
    {1215,1216,1217},		//4 1-AUTO, 2-OFF, 3-ON; Room #4
    {1220,1221,1222},		//5 1-AUTO, 2-OFF, 3-ON; Room #5
    {1225,1226,1227},		//6 1-AUTO, 2-OFF, 3-ON; Room #6
    {1230,1231,1232},		//7 1-AUTO, 2-OFF, 3-ON; Room #7
    {1235,1236,1237},		//8 1-AUTO, 2-OFF, 3-ON; Room #8
    {1240,1241,1242},		//9 1-AUTO, 2-OFF, 3-ON; Room #9
    {1245,1246,1247},		//10 1-AUTO, 2-OFF, 3-ON; Room #10
    {1250,1251,1252},		//11 1-AUTO, 2-OFF, 3-ON; Room #11
    {1255,1256,1257},		//12 1-AUTO, 2-OFF, 3-ON; Room #12
    {1260,1261,1262}		//13 1-AUTO, 2-OFF, 3-ON; Room #13
}

integer radiator_ChangeTemp [13][4] = 
{
    {1300,1301,1302,1303},		//1 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #1
    {1306,1307,1308,1309},		//2 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #2
    {1312,1313,1314,1315},		//3 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #3
    {1318,1319,1320,1321},		//4 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #4
    {1324,1325,1326,1327},		//5 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #5
    {1330,1331,1332,1333},		//6 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #6
    {1336,1337,1338,1339},		//7 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #7
    {1342,1343,1344,1345},		//8 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #8
    {1348,1349,1350,1351},		//9 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #9
    {1354,1355,1356,1357},		//10 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #10
    {1360,1361,1362,1363},		//11 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #11
    {1366,1367,1368,1369},		//12 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #12
    {1372,1373,1374,1375}		//13 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Room #13
}

integer radiator_infoButtons [13][3] = 
{
    {1400,1401,1402},		//1 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #1
    {1405,1406,1407},		//2 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #2
    {1410,1411,1412},		//3 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #3
    {1415,1416,1417},		//4 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #4
    {1420,1421,1422},		//5 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #5
    {1425,1426,1427},		//6 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #6
    {1430,1431,1432},		//7 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #7
    {1435,1436,1437},		//8 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #8
    {1440,1441,1442},		//9 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #9
    {1445,1446,1447},		//10 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #10
    {1450,1451,1452},		//11 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #11
    {1455,1456,1457},		//12 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #12
    {1460,1461,1462}		//13 1-getted temp, 2-setted temp, 3-ON/OFF state; Room #13
}


integer macros_selectRoom_air[] =
{
    1500,	// Room1
    1501,	// Room2
    1502, 	// Room3
    1503, 	// Room4
    1504, 	// Room5
    1505  	// Room6
}

integer macros_selectRoom_windows[] =
{
    1510,	// Room1
    1511,	// Room2
    1512, 	// Room3
    1513, 	// Room4
    1514, 	// Room5
    1515, 	// Room6
    1516,	// Room7
    1517,	// Room8
    1518, 	// Room9
    1519, 	// Room10
    1520, 	// Room11
    1521, 	// Room12
    1522,	// Room13
    1523,	// Room14
    1524, 	// Room15
    1525, 	// Room16
    1526, 	// Room17
    1527, 	// Room18
    1528,	// Room19
    1529,	// Room20
    1530, 	// Room21
    1531, 	// Room22
    1532, 	// Room23
    1533  	// Room24
}

integer macros_selectRoom_floor[] =
{
    1540,	// Room1
    1541,	// Room2
    1542, 	// Room3
    1543, 	// Room4
    1544, 	// Room5
    1545, 	// Room6
    1546	// Room7
}

integer macros_selectRoom_radiator[] =
{
    1550,	// Room1
    1551,	// Room2
    1552, 	// Room3
    1553, 	// Room4
    1554, 	// Room5
    1555, 	// Room6
    1556,	// Room7
    1557,	// Room8
    1558, 	// Room9
    1559, 	// Room10
    1560, 	// Room11
    1561, 	// Room12
    1562	// Room13
}

integer macros_TS3_setMode_rooms[][] = 
{
    {1570,1571,1572,1573}	//1 1-OFF,2-AUTO,3-ForcedOFF,4-ForcedON; Rooms
}

integer macros_TS3_setTemp_rooms[][] = 
{
    {1580,1581,1582,1583}	//1 1-getted temp,2-setted temp,3-UpTemp,4-DownTemp; Rooms
}

integer macros_TS3_showInfo_rooms[][] = 
{
    {1590,1591,1592}	//1 1-on mode,2-setted temp,3-current temp; Rooms
}

integer macros_fanCoils_temps [][] = 
{
    {1600,1601}		//1 1-currentTemp, 2 - setted temp; Rooms
}

integer macros_fanCoils_ChangeTemps [][] = 
{
    {1605,1606}		//1 1-UPTemp, 2 - Down temp; Rooms
}

integer macros_fanCoils_ChangeMode [][] = 
{
    {1610,1611,1612}		//1 1-AUTO, 2-OFF, 3-ON; Rooms
}

integer macros_fanCoils_ChangeSpeed [][] = 
{

    {1620,1621,1622,37,38}		//1 1-Low, 2-Mid, 3-Hig, 4-barShow, 5-barControl; Rooms
}

integer macros_floorHeating_ChangeMode [][] = 
{
    {1630,1631,1632}		//1 1-AUTO, 2-OFF, 3-ON; Rooms
}

integer macros_floorHeating_ChangeTemp [][] = 
{
    {1635,1636,1637,1638}		//1 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Rooms
}

integer macros_floorHeating_infoButtons [][] = 
{
    {1640,1641,1642}		//1 1-getted temp, 2-setted temp, 3-ON/OFF state; Rooms
}


integer macros_radiator_ChangeMode [][] = 
{
    {1645,1646,1647}		//1 1-AUTO, 2-OFF, 3-ON; Rooms
}

integer macros_radiator_ChangeTemp [][] = 
{
    {1650,1651,1652,1653}		//1 1-getted temp, 2-settedtemp, 3-Up temp,4-Down temp; Rooms
}

integer macros_radiator_infoButtons [][] = 
{
    {1660,1661,1662}		//1 1-getted temp, 2-setted temp, 3-ON/OFF state; Rooms
}


integer macros_AllSystems [][] = 
{
    {1680,1681,1682},		//1 1-air ON,2-air OFF,3-air group
    {1685,1686,1687},		//2 1-floor ON,2-floor OFF,3-floor group
    {1690,1691,1692},		//3 1-radiator ON,2-radiator OFF,3-radiator group
    {1695,1696,1697}		//4 1-windows ON,2-windows OFF,3-windows group
}

integer globalMacroses[] =
{
    1700	// All systems OFF
}

integer macros_AllSystems_start [] = 
{
    1705,		//1 1-air start
    1706,		//2 1-floor start
    1707,		//3 1-radiator start
    1708		//4 1-windows start
}

integer sourceMedia_2fl_Bedroom[] =
{
1801,	// 1	TV
1802,	// 2	AuraHD
1803,	// 3	
1804,	// 4	
1805,	// 5	
1806,	// 6	
1807,	// 7	
1808,	// 8	
1809,	// 9	
1810	// 10	
}

integer sourceMedia_2fl_Kinder[] =
{
1811,	// 1	
1812,	// 2	
1813,	// 3	
1814,	// 4	
1815,	// 5	
1816,	// 6	
1817,	// 7	
1818,	// 8	
1819,	// 9	
1820	// 10	
}

integer sourceMedia_2fl_Guest[] =
{
1831,	// 1	
1832,	// 2	
1833,	// 3	
1834,	// 4	
1835,	// 5	
1836,	// 6	
1837,	// 7	
1838,	// 8	
1839,	// 9	
1840	// 10	
}

integer sourceMedia_1fl_Cinema[] =
{
1841,	// 1	
1842,	// 2	
1843,	// 3	
1844,	// 4	
1845,	// 5	
1846,	// 6	
1847,	// 7	
1848,	// 8	
1849,	// 9	
1850	// 10	
}

integer sourceMedia_1fl_Kitchen[] =
{
1851,	// 1	
1852,	// 2	
1853,	// 3	
1854,	// 4	
1855,	// 5	
1856,	// 6	
1857,	// 7	
1858,	// 8	
1859,	// 9	
1860	// 10	
}

integer sourceMedia_1fl_Kabinet[] =
{
1861,	// 1	
1862,	// 2	
1863,	// 3	
1864,	// 4	
1865,	// 5	
1866,	// 6	
1867,	// 7	
1868,	// 8	
1869,	// 9	
1870	// 10	
}

integer media_RoomPower[] =
{
    1900,	// Room1	2fl Bedroom
    1901,	// Room2	2fl Kinder
    1902, 	// Room3	2fl Guest
    1903, 	// Room4	1fl Cinema
    1904, 	// Room5	1fl Kitchen
    1905 	// Room6	1fl Kabinet
}

integer media_RoomInfoPower[] =	// show music icon on selectRoom buttons
{
    1910,	// Room1	2fl Bedroom
    1911,	// Room2	2fl Kinder
    1912, 	// Room3	2fl Guest
    1913, 	// Room4	1fl Cinema
    1914, 	// Room5	1fl Kitchen
    1915 	// Room6	1fl Kabinet
}

integer media_RoomInfoSource[] =	// show name of source on buttons
{
    1920,	// Room1	2fl Bedroom
    1921,	// Room2	2fl Kinder
    1922, 	// Room3	2fl Guest
    1923, 	// Room4	1fl Cinema
    1924, 	// Room5	1fl Kitchen
    1925 	// Room6	1fl Kabinet
}

integer media_checkSources[] =	// press left button
{
    1950	// 
}
