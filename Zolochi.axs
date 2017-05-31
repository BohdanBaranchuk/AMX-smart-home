PROGRAM_NAME='Zolochi'
include 'EngineeringChannels'


DEFINE_DEVICE

IR1			= 5001:11:1
IR2			= 5001:12:1
RS485			= 5001:1:1
Rs232			= 5001:2:1
IO_digital		= 5001:22:1

// TP panels
TP1_Engineering		= 10001:1:1	// for all Engeneering systems
TP1_Engineering_3	= 10001:3:1	// for Light
TP1_Engineering_4	= 10001:4:1	// for media in 2fl Bedroom
TP1_Engineering_5	= 10001:5:1	// for media in 2fl Kinder
TP1_Engineering_6	= 10001:6:1	// for media in 2fl Guest
TP1_Engineering_7	= 10001:7:1	// for media in 1fl Cinema
TP1_Engineering_8	= 10001:8:1	// for media in 1fl Kitchen
TP1_Engineering_9	= 10001:9:1	// for media in 1fl Kabinet

TP2_Engineering		= 11001:1:1	// for all Engeneering systems
TP2_Engineering_3	= 11001:3:1	// for light
TP2_Engineering_4	= 11001:4:1	// for media in 2fl Bedroom
TP2_Engineering_5	= 11001:5:1	// for media in 2fl Kinder
TP2_Engineering_6	= 11001:6:1	// for media in 2fl Guest
TP2_Engineering_7	= 11001:7:1	// for media in 1fl Cinema
TP2_Engineering_8	= 11001:8:1	// for media in 1fl Kitchen
TP2_Engineering_9	= 11001:9:1	// for media in 1fl Kabinet

TP3_Engineering		= 12001:1:1	// for all Engeneering systems
TP3_Engineering_3	= 12001:3:1	// for light
TP3_Engineering_4	= 12001:4:1	// for media in 2fl Bedroom
TP3_Engineering_5	= 12001:5:1	// for media in 2fl Kinder
TP3_Engineering_6	= 12001:6:1	// for media in 2fl Guest
TP3_Engineering_7	= 12001:7:1	// for media in 1fl Cinema
TP3_Engineering_8	= 12001:8:1	// for media in 1fl Kitchen
TP3_Engineering_9	= 12001:9:1	// for media in 1fl Kabinet

TP4_Engineering		= 14001:1:1	// for all Engeneering systems
TP4_Engineering_3	= 14001:3:1	// for light
TP4_Engineering_4	= 14001:4:1	// for media in 2fl Bedroom
TP4_Engineering_5	= 14001:5:1	// for media in 2fl Kinder
TP4_Engineering_6	= 14001:6:1	// for media in 2fl Guest
TP4_Engineering_7	= 14001:7:1	// for media in 1fl Cinema
TP4_Engineering_8	= 14001:8:1	// for media in 1fl Kitchen
TP4_Engineering_9	= 14001:9:1	// for media in 1fl Kabinet

// TS3 Modules
TS3_1_P1	= 7001:1:1	// 192.168.1.40
TS3_1_P2	= 7001:2:1
TS3_1_P3 	= 7001:3:1
TS3_1_P4	= 7001:4:1

TS3_2_P1	= 7002:1:1	// 192.168.1.41
TS3_2_P2	= 7002:2:1
TS3_2_P3	= 7002:3:1
TS3_2_P4	= 7002:4:1

TS3_3_P1	= 7003:1:1	// 192.168.1.42
TS3_3_P2	= 7003:2:1
TS3_3_P3	= 7003:3:1
TS3_3_P4	= 7003:4:1

TS3_4_P1	= 7004:1:1	// 192.168.1.43
TS3_4_P2	= 7004:2:1
TS3_4_P3	= 7004:3:1
TS3_4_P4	= 7004:4:1

TS3_5_P1	= 7005:1:1	// 192.168.1.44
TS3_5_P2	= 7005:2:1
TS3_5_P3	= 7005:3:1
TS3_5_P4	= 7005:4:1

TS3_6_P1	= 7006:1:1	// 192.168.1.45
TS3_6_P2	= 7006:2:1
TS3_6_P3	= 7006:3:1
TS3_6_P4	= 7006:4:1

// DS8 Modules
DS8_1		= 7021:1:1	// 192.168.1.20
DS8_2		= 7022:1:1	// 192.168.1.21
DS8_3		= 7023:1:1	// 192.168.1.22

// VO4 Modules
VO4_1		= 7031:1:1	// 192.168.1.30	
VO4_2		= 7032:1:1	// 192.168.1.31
VO4_3		= 7033:1:1	// 192.168.1.32
VO4_4		= 7034:1:1	// 192.168.1.33
VO4_5		= 7035:1:1	// 192.168.1.34
VO4_6		= 7036:1:1	// 192.168.1.35	
VO4_7		= 7037:1:1	// 192.168.1.36

IRS_1_p1	= 7041:1:1	// 192.168.1.19
IRS_1_p2	= 7041:2:1	//
IRS_1_p3	= 7041:3:1	//
IRS_1_p4	= 7041:4:1	//

vdv_Macros	= 35000:1:1	// for climate macroces


DEFINE_CONSTANT


DEFINE_TYPE


DEFINE_VARIABLE

volatile integer ID[] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30}
volatile integer outpVo4Levels[] = {1,2,3,4}
(******************* for TS3 variables ***************************)
PERSISTENT SINTEGER ts3GettedValue [6][4]	// 6 modules TS3 (with 4 device each module)
PERSISTENT INTEGER ts3SettedValue [6][4]	// 6 modules TS3 (with 4 device each module)
PERSISTENT INTEGER ts3ThermostatMode [24] 	// 1-OFF,2-AUTO,3-ForcedOFF,4-FocedON
PERSISTENT SINTEGER ds8_values[3][8]		// values of temp
PERSISTENT integer VO4_values[7][4]		// values of output


PERSISTENT sinteger fanCoilNeededtemp[24]	// needed temp in any room; 
PERSISTENT integer fanCoilMode[24]		// mode in any room; 1-AUTO,2-OFF,3-ON
PERSISTENT integer fanCoilSpeed[24]		// speed in any room; 1-low,2-mid,3-hig
PERSISTENT integer fanCoilSumWinter		// 0-summer,1-winter

PERSISTENT sinteger floorNeededtemp[7]		// needed temp in any room; 
PERSISTENT integer floorMode[7]			// mode in any room; 1-AUTO,2-OFF,3-ON

PERSISTENT sinteger radiatorNeededtemp[13]	// needed temp in any room; 
PERSISTENT integer radiatorMode[13]		// mode in any room; 1-AUTO,2-OFF,3-ON

PERSISTENT sinteger windowNeededtemp[7]		// needed temp in any room; 
PERSISTENT integer windowMode[7]		// mode in any room; 1-AUTO,2-OFF,3-ON

PERSISTENT integer selectedSystem[10]		// selected system on TP
PERSISTENT integer selectedRoomAir[10]		// selected room in Air system
PERSISTENT integer selectedRoomLight[10]	// selected room in Light system
PERSISTENT integer selectedRoomFloor[10]	// selected room in Floor system
PERSISTENT integer selectedRoomRadiator[10]	// selected room in Radiator system
PERSISTENT integer selectedRoomWindows[10]	// selected room in Windows system

PERSISTENT sinteger macros_AirNeedTemp			// for group macros Air
PERSISTENT integer macros_AirMode
PERSISTENT integer macros_AirSpeed
PERSISTENT integer macros_AirSavedSelectedRoom[6]

PERSISTENT sinteger macros_FloorNeedTemp		// for group macros Floor
PERSISTENT integer macros_FloorMode
PERSISTENT integer macros_FloorSavedSelectedRoom[7]

PERSISTENT sinteger macros_RadiatorNeedTemp		// for group macros Radiator
PERSISTENT integer macros_RadiatorMode
PERSISTENT integer macros_RadiatorSavedSelectedRoom[13]

PERSISTENT sinteger macros_WindowsNeedTemp		// for group macros Windows
PERSISTENT integer macros_WindowsMode
PERSISTENT integer macros_WindowsSavedSelectedRoom[24]

PERSISTENT integer savedSelectedRoom[4]			// for every TPs (media)
PERSISTENT integer powerStateRoom[6]			// for every Rooms (media)
PERSISTENT integer selectedSourceInRoom[6]		// for every Rooms (media)



DEV TPS_Engineering[] = {TP1_Engineering,TP2_Engineering,TP3_Engineering,TP4_Engineering }
dev MVP_ALL_03 [] = {TP1_Engineering_3, TP2_Engineering_3, TP3_Engineering_3,TP4_Engineering_3} // all light Tablets
DEV TPS_ALL_Media[][] =
{
    {TP1_Engineering_4,TP2_Engineering_4,TP3_Engineering_4,TP4_Engineering_4},	// for media in 2fl Bedroom
    {TP1_Engineering_5,TP2_Engineering_5,TP3_Engineering_5,TP4_Engineering_5},	// for media in 2fl Kinder
    {TP1_Engineering_6,TP2_Engineering_6,TP3_Engineering_6,TP4_Engineering_6},	// for media in 2fl Guest
    {TP1_Engineering_7,TP2_Engineering_7,TP3_Engineering_7,TP4_Engineering_7},	// for media in 1fl Cinema
    {TP1_Engineering_8,TP2_Engineering_8,TP3_Engineering_8,TP4_Engineering_8},	// for media in 1fl Kitchen
    {TP1_Engineering_9,TP2_Engineering_9,TP3_Engineering_9,TP4_Engineering_9}	// for media in 1fl Kabinet
}

DEV DS8_All[]	= {DS8_1,DS8_2,DS8_3 }
DEV VO4_All[]	= {VO4_1,VO4_2,VO4_3,VO4_4,VO4_5,VO4_6,VO4_7 }

DEFINE_LATCHING


DEFINE_MUTUALLY_EXCLUSIVE


DEFINE_MODULE 'DS8' tempRooms (DS8_All,TPS_Engineering,ds8_values)	// save readed values in variable
DEFINE_MODULE 'VO4' LevelsRooms (VO4_All,TPS_Engineering,VO4_values)	// save readed values in variable
DEFINE_MODULE 'ServiceClimate' ServiceClimateRooms (TPS_Engineering, fanCoils_ChangeWinSum, 
						    fanCoilSumWinter)
DEFINE_MODULE 'MainGUI' TP_Memory1 (TP1_Engineering, selectedSystem[1],selectedRoomAir[1],selectedRoomLight[1],selectedRoomFloor[1],selectedRoomRadiator[1],selectedRoomWindows[1])	// create memory for every TP

DEFINE_MODULE 'LightStart' LightSt (MVP_ALL_03)


(******************************************************* Air ***********************************************************)
// кабинет 1 эт
DEFINE_MODULE 'FanCoile' fanRooms1 (vdv_Macros,ID[1],
			ds8_values[1][8], VO4_All[7],outpVo4Levels[1], TPS_Engineering,VO4_values[7][1],
			fanCoilNeededtemp[1],fanCoilMode[1],fanCoilSpeed[1], fanCoilSumWinter,
			fanCoils_temps[1],fanCoils_ChangeTemps[1],fanCoils_ChangeMode[1],
			fanCoils_ChangeSpeed[1],fanCoils_ChangeWinSum[1], 
			fanCoils_infoSpeed[1],fanCoils_infoTempCurrent[1],fanCoils_infoTempNeeded[1], fanCoils_infoMode[1])
// кухня 1 эт
DEFINE_MODULE 'FanCoile' fanRooms2 (vdv_Macros,ID[2],
			ds8_values[1][4], VO4_All[6],outpVo4Levels[3], TPS_Engineering,VO4_values[6][3],
			fanCoilNeededtemp[2],fanCoilMode[2],fanCoilSpeed[2], fanCoilSumWinter,
			fanCoils_temps[2],fanCoils_ChangeTemps[2],fanCoils_ChangeMode[2],
			fanCoils_ChangeSpeed[2],fanCoils_ChangeWinSum[2], 
			fanCoils_infoSpeed[2],fanCoils_infoTempCurrent[2],fanCoils_infoTempNeeded[2], fanCoils_infoMode[2])

// зал 1эт
DEFINE_MODULE 'FanCoile' fanRooms3 (vdv_Macros,ID[3],
			ds8_values[1][6], VO4_All[6],outpVo4Levels[4], TPS_Engineering,VO4_values[6][4],
			fanCoilNeededtemp[3],fanCoilMode[3],fanCoilSpeed[3], fanCoilSumWinter,
			fanCoils_temps[3],fanCoils_ChangeTemps[3],fanCoils_ChangeMode[3],
			fanCoils_ChangeSpeed[3],fanCoils_ChangeWinSum[3], 
			fanCoils_infoSpeed[3],fanCoils_infoTempCurrent[3],fanCoils_infoTempNeeded[3], fanCoils_infoMode[3])
// спальня 2эт
DEFINE_MODULE 'FanCoile' fanRooms4 (vdv_Macros,ID[4],
			ds8_values[2][4], VO4_All[7],outpVo4Levels[4], TPS_Engineering,VO4_values[7][4],
			fanCoilNeededtemp[4],fanCoilMode[4],fanCoilSpeed[4], fanCoilSumWinter,
			fanCoils_temps[4],fanCoils_ChangeTemps[4],fanCoils_ChangeMode[4],
			fanCoils_ChangeSpeed[4],fanCoils_ChangeWinSum[4], 
			fanCoils_infoSpeed[4],fanCoils_infoTempCurrent[4],fanCoils_infoTempNeeded[4], fanCoils_infoMode[4])
// гостевая 2эт
DEFINE_MODULE 'FanCoile' fanRooms5 (vdv_Macros,ID[5],
			ds8_values[2][1], VO4_All[7],outpVo4Levels[3], TPS_Engineering,VO4_values[7][3],
			fanCoilNeededtemp[5],fanCoilMode[5],fanCoilSpeed[5], fanCoilSumWinter,
			fanCoils_temps[5],fanCoils_ChangeTemps[5],fanCoils_ChangeMode[5],
			fanCoils_ChangeSpeed[5],fanCoils_ChangeWinSum[5], 
			fanCoils_infoSpeed[5],fanCoils_infoTempCurrent[5],fanCoils_infoTempNeeded[5], fanCoils_infoMode[5])
// детская 2эт
DEFINE_MODULE 'FanCoile' fanRooms6 (vdv_Macros,ID[6],
			ds8_values[2][5], VO4_All[7],outpVo4Levels[2], TPS_Engineering,VO4_values[7][2],
			fanCoilNeededtemp[6],fanCoilMode[6],fanCoilSpeed[6], fanCoilSumWinter,
			fanCoils_temps[6],fanCoils_ChangeTemps[6],fanCoils_ChangeMode[6],
			fanCoils_ChangeSpeed[6],fanCoils_ChangeWinSum[6], 
			fanCoils_infoSpeed[6],fanCoils_infoTempCurrent[6],fanCoils_infoTempNeeded[6], fanCoils_infoMode[6])



(*********************************************************** Heating floor  *****************************************************************) 
// Гараж контур1
DEFINE_MODULE 'HeatingFloor' floorRooms1_1 (vdv_Macros,ID[1],
			ds8_values[3][5], VO4_All[6],outpVo4Levels[1], TPS_Engineering,
			floorNeededtemp[1],floorMode[1], fanCoilSumWinter,
			floorHeating_ChangeTemp[1],floorHeating_ChangeMode[1],
			floorHeating_infoButtons[1][1],floorHeating_infoButtons[1][2], floorHeating_infoButtons[1][3])
// Гараж контур2 ????
DEFINE_MODULE 'HeatingFloor' floorRooms1_2 (vdv_Macros,ID[1],
			ds8_values[3][5], VO4_All[5],outpVo4Levels[4], TPS_Engineering,
			floorNeededtemp[1],floorMode[1], fanCoilSumWinter,
			floorHeating_ChangeTemp[8],floorHeating_ChangeMode[1],
			floorHeating_infoButtons[8][1],floorHeating_infoButtons[8][2], floorHeating_infoButtons[8][3])
//  Санузел
DEFINE_MODULE 'HeatingFloor' floorRooms2 (vdv_Macros,ID[2],
			ds8_values[3][4], VO4_All[5],outpVo4Levels[3], TPS_Engineering,
			floorNeededtemp[2],floorMode[2], fanCoilSumWinter,
			floorHeating_ChangeTemp[2],floorHeating_ChangeMode[2],
			floorHeating_infoButtons[2][1],floorHeating_infoButtons[2][2], floorHeating_infoButtons[2][3])


// Коридор
DEFINE_MODULE 'HeatingFloor' floorRooms3 (vdv_Macros,ID[3],
			ds8_values[3][1], VO4_All[4],outpVo4Levels[2], TPS_Engineering,
			floorNeededtemp[3],floorMode[3], fanCoilSumWinter,
			floorHeating_ChangeTemp[3],floorHeating_ChangeMode[3],
			floorHeating_infoButtons[3][1],floorHeating_infoButtons[3][2], floorHeating_infoButtons[3][3])


// Кухня
DEFINE_MODULE 'HeatingFloor' floorRooms4 (vdv_Macros,ID[4],
			ds8_values[3][7], VO4_All[4],outpVo4Levels[3], TPS_Engineering,
			floorNeededtemp[4],floorMode[4], fanCoilSumWinter,
			floorHeating_ChangeTemp[4],floorHeating_ChangeMode[4],
			floorHeating_infoButtons[4][1],floorHeating_infoButtons[4][2], floorHeating_infoButtons[4][3])


// Тамбур
DEFINE_MODULE 'HeatingFloor' floorRooms5 (vdv_Macros,ID[5],
			ds8_values[3][8], VO4_All[4],outpVo4Levels[4], TPS_Engineering,
			floorNeededtemp[5],floorMode[5], fanCoilSumWinter,
			floorHeating_ChangeTemp[5],floorHeating_ChangeMode[5],
			floorHeating_infoButtons[5][1],floorHeating_infoButtons[5][2], floorHeating_infoButtons[5][3])

// этаж 2 Хоз ванная
DEFINE_MODULE 'HeatingFloor' floorRooms6 (vdv_Macros,ID[6],
			ds8_values[3][2], VO4_All[5],outpVo4Levels[1], TPS_Engineering,
			floorNeededtemp[6],floorMode[6], fanCoilSumWinter,
			floorHeating_ChangeTemp[6],floorHeating_ChangeMode[6],
			floorHeating_infoButtons[6][1],floorHeating_infoButtons[6][2], floorHeating_infoButtons[6][3])

// этаж 2 Детская ванная
DEFINE_MODULE 'HeatingFloor' floorRooms7 (vdv_Macros,ID[7],
			ds8_values[3][3], VO4_All[5],outpVo4Levels[2], TPS_Engineering,
			floorNeededtemp[7],floorMode[7], fanCoilSumWinter,
			floorHeating_ChangeTemp[7],floorHeating_ChangeMode[7],
			floorHeating_infoButtons[7][1],floorHeating_infoButtons[7][2], floorHeating_infoButtons[7][3])



(************************************************************  Radiators  *****************************************************)


// 1й этаж кабинет
DEFINE_MODULE 'Radiator' radiatorRooms1 (vdv_Macros,ID[1],
			ds8_values[1][8], VO4_All[2],outpVo4Levels[4], TPS_Engineering,
			radiatorNeededtemp[1],radiatorMode[1], fanCoilSumWinter,
			radiator_ChangeTemp[1],radiator_ChangeMode[1],
			radiator_infoButtons[1][1],radiator_infoButtons[1][2], radiator_infoButtons[1][3])
// 1й этаж гостинная
DEFINE_MODULE 'Radiator' radiatorRooms2 (vdv_Macros,ID[2],
			ds8_values[1][6], VO4_All[3],outpVo4Levels[1], TPS_Engineering,
			radiatorNeededtemp[2],radiatorMode[2], fanCoilSumWinter,
			radiator_ChangeTemp[2],radiator_ChangeMode[2],
			radiator_infoButtons[2][1],radiator_infoButtons[2][2], radiator_infoButtons[2][3])
// 1й этаж кухня
DEFINE_MODULE 'Radiator' radiatorRooms3 (vdv_Macros,ID[3],
			ds8_values[1][4], VO4_All[3],outpVo4Levels[2], TPS_Engineering,
			radiatorNeededtemp[3],radiatorMode[3], fanCoilSumWinter,
			radiator_ChangeTemp[3],radiator_ChangeMode[3],
			radiator_infoButtons[3][1],radiator_infoButtons[3][2], radiator_infoButtons[3][3])
// 1й этаж постирочная
DEFINE_MODULE 'Radiator' radiatorRooms4 (vdv_Macros,ID[4],
			ds8_values[1][2], VO4_All[4],outpVo4Levels[1], TPS_Engineering,
			radiatorNeededtemp[4],radiatorMode[4], fanCoilSumWinter,
			radiator_ChangeTemp[4],radiator_ChangeMode[4],
			radiator_infoButtons[4][1],radiator_infoButtons[4][2], radiator_infoButtons[4][3])
// 1й этаж лестница
DEFINE_MODULE 'Radiator' radiatorRooms5 (vdv_Macros,ID[5],
			ds8_values[1][7], VO4_All[3],outpVo4Levels[4], TPS_Engineering,
			radiatorNeededtemp[5],radiatorMode[5], fanCoilSumWinter,
			radiator_ChangeTemp[5],radiator_ChangeMode[5],
			radiator_infoButtons[5][1],radiator_infoButtons[5][2], radiator_infoButtons[5][3])
// 1й этаж прихожая
DEFINE_MODULE 'Radiator' radiatorRooms6 (vdv_Macros,ID[6],
			ds8_values[1][1], VO4_All[3],outpVo4Levels[3], TPS_Engineering,
			radiatorNeededtemp[6],radiatorMode[6], fanCoilSumWinter,
			radiator_ChangeTemp[6],radiator_ChangeMode[6],
			radiator_infoButtons[6][1],radiator_infoButtons[6][2], radiator_infoButtons[6][3])
// 2й этаж хозяйская спальня
DEFINE_MODULE 'Radiator' radiatorRooms7 (vdv_Macros,ID[7],
			ds8_values[2][4], VO4_All[2],outpVo4Levels[2], TPS_Engineering,
			radiatorNeededtemp[7],radiatorMode[7], fanCoilSumWinter,
			radiator_ChangeTemp[7],radiator_ChangeMode[7],
			radiator_infoButtons[7][1],radiator_infoButtons[7][2], radiator_infoButtons[7][3])
// 2й этаж хозяйская ванная
DEFINE_MODULE 'Radiator' radiatorRooms8 (vdv_Macros,ID[8],
			ds8_values[2][2], VO4_All[2],outpVo4Levels[1], TPS_Engineering,
			radiatorNeededtemp[8],radiatorMode[8], fanCoilSumWinter,
			radiator_ChangeTemp[8],radiator_ChangeMode[8],
			radiator_infoButtons[8][1],radiator_infoButtons[8][2], radiator_infoButtons[8][3])
// 2й этаж детская
DEFINE_MODULE 'Radiator' radiatorRooms9 (vdv_Macros,ID[9],
			ds8_values[2][5], VO4_All[1],outpVo4Levels[4], TPS_Engineering,
			radiatorNeededtemp[9],radiatorMode[9], fanCoilSumWinter,
			radiator_ChangeTemp[9],radiator_ChangeMode[9],
			radiator_infoButtons[9][1],radiator_infoButtons[9][2], radiator_infoButtons[9][3])
// 2й этаж гостевая спальня
DEFINE_MODULE 'Radiator' radiatorRooms10 (vdv_Macros,ID[10],
			ds8_values[2][1], VO4_All[2],outpVo4Levels[3], TPS_Engineering,
			radiatorNeededtemp[10],radiatorMode[10], fanCoilSumWinter,
			radiator_ChangeTemp[10],radiator_ChangeMode[10],
			radiator_infoButtons[10][1],radiator_infoButtons[10][2], radiator_infoButtons[10][3])
// 2й этаж гардероб
DEFINE_MODULE 'Radiator' radiatorRooms11 (vdv_Macros,ID[11],
			ds8_values[2][7], VO4_All[1],outpVo4Levels[1], TPS_Engineering,
			radiatorNeededtemp[11],radiatorMode[11], fanCoilSumWinter,
			radiator_ChangeTemp[11],radiator_ChangeMode[11],
			radiator_infoButtons[11][1],radiator_infoButtons[11][2], radiator_infoButtons[11][3])
// 2й этаж детская ванная
DEFINE_MODULE 'Radiator' radiatorRooms12 (vdv_Macros,ID[12],
			ds8_values[2][6], VO4_All[1],outpVo4Levels[2], TPS_Engineering,
			radiatorNeededtemp[12],radiatorMode[12], fanCoilSumWinter,
			radiator_ChangeTemp[12],radiator_ChangeMode[12],
			radiator_infoButtons[12][1],radiator_infoButtons[12][2], radiator_infoButtons[12][3])

// 2й этаж предбанник
DEFINE_MODULE 'Radiator' radiatorRooms13 (vdv_Macros,ID[13],
			ds8_values[2][3], VO4_All[1],outpVo4Levels[3], TPS_Engineering,
			radiatorNeededtemp[13],radiatorMode[13], fanCoilSumWinter,
			radiator_ChangeTemp[13],radiator_ChangeMode[13],
			radiator_infoButtons[13][1],radiator_infoButtons[13][2], radiator_infoButtons[13][3])




(********************************************************* Windows *******************************************************)

// 1эт Гостинная большое окно
DEFINE_MODULE 'TS3' room1 (vdv_Macros,ID[1],
			    TS3_2_P1,TPS_Engineering,
			    ts3GettedValue[2][1],ts3SettedValue[2][1],ts3ThermostatMode[1],
			    TS3_setMode_rooms[1],TS3_setTemp_rooms[1],TS3_showInfo_rooms[1])
// 1эт Гостинная малое окно
DEFINE_MODULE 'TS3_ErrSensor' room2 (vdv_Macros,ID[1],
			    TS3_1_P3,TS3_2_P1,TPS_Engineering,
			    ts3GettedValue[1][3],ts3SettedValue[2][1],ts3ThermostatMode[2],
			    TS3_setMode_rooms[1],TS3_setTemp_rooms[2],TS3_showInfo_rooms[2])
// 1эт Гостинная окно возле камина
DEFINE_MODULE 'TS3' room3 (vdv_Macros,ID[1],
			    TS3_2_P2,TPS_Engineering,
			    ts3GettedValue[2][2],ts3SettedValue[2][1],ts3ThermostatMode[3],
			    TS3_setMode_rooms[1],TS3_setTemp_rooms[3],TS3_showInfo_rooms[3])
// 1эт Кухня большое окно
DEFINE_MODULE 'TS3' room4 (vdv_Macros,ID[4],
			    TS3_1_P1,TPS_Engineering,
			    ts3GettedValue[1][1],ts3SettedValue[1][1],ts3ThermostatMode[4],
			    TS3_setMode_rooms[4],TS3_setTemp_rooms[4],TS3_showInfo_rooms[4])
// 1эт Кухня малое окно
DEFINE_MODULE 'TS3' room5 (vdv_Macros,ID[4],
			    TS3_1_P2,TPS_Engineering,
			    ts3GettedValue[1][2],ts3SettedValue[1][1],ts3ThermostatMode[5],
			    TS3_setMode_rooms[4],TS3_setTemp_rooms[5],TS3_showInfo_rooms[5])
// 2эт Хозяйская спальня
DEFINE_MODULE 'TS3' room6 (vdv_Macros,ID[6],
			    TS3_3_P1,TPS_Engineering,
			    ts3GettedValue[3][1],ts3SettedValue[3][1],ts3ThermostatMode[6],
			    TS3_setMode_rooms[6],TS3_setTemp_rooms[6],TS3_showInfo_rooms[6])
// 2эт Хозяйская ванная
DEFINE_MODULE 'TS3' room7 (vdv_Macros,ID[7],
			    TS3_4_P2,TPS_Engineering,
			    ts3GettedValue[4][2],ts3SettedValue[4][2],ts3ThermostatMode[7],
			    TS3_setMode_rooms[7],TS3_setTemp_rooms[7],TS3_showInfo_rooms[7])
// 2эт Гостевая комната
DEFINE_MODULE 'TS3' room8 (vdv_Macros,ID[8],
			    TS3_3_P2,TPS_Engineering,
			    ts3GettedValue[3][2],ts3SettedValue[3][2],ts3ThermostatMode[8],
			    TS3_setMode_rooms[8],TS3_setTemp_rooms[8],TS3_showInfo_rooms[8])
// 2эт Детская комната
DEFINE_MODULE 'TS3' room9 (vdv_Macros,ID[9],
			    TS3_4_P1,TPS_Engineering,
			    ts3GettedValue[4][1],ts3SettedValue[4][1],ts3ThermostatMode[9],
			    TS3_setMode_rooms[9],TS3_setTemp_rooms[9],TS3_showInfo_rooms[9])
// 2эт Детская ванная
DEFINE_MODULE 'TS3' room10 (vdv_Macros,ID[10],
			    TS3_4_P3,TPS_Engineering,
			    ts3GettedValue[4][3],ts3SettedValue[4][3],ts3ThermostatMode[10],
			    TS3_setMode_rooms[10],TS3_setTemp_rooms[10],TS3_showInfo_rooms[10])
// 2эт Детский предбанник
DEFINE_MODULE 'TS3' room11 (vdv_Macros,ID[11],
			    TS3_3_P3,TPS_Engineering,
			    ts3GettedValue[3][3],ts3SettedValue[3][3],ts3ThermostatMode[11],
			    TS3_setMode_rooms[11],TS3_setTemp_rooms[11],TS3_showInfo_rooms[11])
// 2эт Гардероб
DEFINE_MODULE 'TS3' room12 (vdv_Macros,ID[12],
			    TS3_5_P1,TPS_Engineering,
			    ts3GettedValue[5][1],ts3SettedValue[5][1],ts3ThermostatMode[12],
			    TS3_setMode_rooms[12],TS3_setTemp_rooms[12],TS3_showInfo_rooms[12])




DEFINE_MODULE 'FanCoile_macros' mA1 (vdv_Macros,TPS_Engineering,
				macros_AirNeedTemp,macros_AirMode,macros_AirSpeed,
				macros_fanCoils_temps[1],macros_fanCoils_ChangeTemps[1],macros_fanCoils_ChangeMode[1],
				macros_fanCoils_ChangeSpeed[1],
				macros_selectRoom_air, macros_AirSavedSelectedRoom,macros_AllSystems_start[1],macros_AllSystems[1])

DEFINE_MODULE 'HeatingFloor_macros' mF1 (vdv_Macros,TPS_Engineering,
				macros_FloorNeedTemp,macros_FloorMode,
				macros_floorHeating_ChangeTemp[1],macros_floorHeating_ChangeMode[1],
				macros_selectRoom_floor, macros_FloorSavedSelectedRoom,macros_AllSystems_start[2],macros_AllSystems[2])

DEFINE_MODULE 'Radiator_macros' mR1 (vdv_Macros,TPS_Engineering,
				macros_RadiatorNeedTemp,macros_RadiatorMode,
				macros_radiator_ChangeTemp[1],macros_radiator_ChangeMode[1],
				macros_selectRoom_radiator, macros_RadiatorSavedSelectedRoom,macros_AllSystems_start[3],macros_AllSystems[3])

DEFINE_MODULE 'TS3_macros' mW1 (vdv_Macros,TPS_Engineering,
				macros_WindowsNeedTemp,macros_WindowsMode,
				macros_TS3_setTemp_rooms[1],macros_TS3_setMode_rooms[1],
				macros_selectRoom_windows, macros_WindowsSavedSelectedRoom,macros_AllSystems_start[4],macros_AllSystems[4])


DEFINE_MODULE 'GlobalMacros' mac1 (TPS_Engineering,TPS_Engineering,MVP_ALL_03, globalMacroses)
(************************************ MEDIA MODULES ************************************************************************************************)

DEFINE_MODULE 'MainMedia' mm1 (TPS_Engineering,savedSelectedRoom,powerStateRoom,selectedSourceInRoom)

DEFINE_MODULE 'Media_2fl_Bedroom' media1 (TPS_ALL_Media[1],TPS_Engineering,IR1,
				powerStateRoom[1],selectedSourceInRoom[1])


DEFINE_START

DEFINE_EVENT





DEFINE_PROGRAM



