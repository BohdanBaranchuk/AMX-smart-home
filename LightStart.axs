MODULE_NAME='LightStart' (DEV MVP_ALL_03[])
include 'Keypad_Port_3'
DEFINE_DEVICE

Light         = 0:82:1
// виртуальную панель прив€зываем к физической панели Lutron
vdvHW_STR       = 34000:1:0
// phisical panels
vdvHW_KEYPAD01  = 34001:1:0   	// 
vdvHW_KEYPAD02  = 34002:1:0    	// 
vdvHW_KEYPAD03  = 34003:1:0   	// 
vdvHW_KEYPAD04  = 34004:1:0    	// 
vdvHW_KEYPAD05  = 34005:1:0   	// 
vdvHW_KEYPAD06  = 34006:1:0    	// 
vdvHW_KEYPAD07  = 34007:1:0   	// 
vdvHW_KEYPAD08  = 34008:1:0    	// 
vdvHW_KEYPAD09  = 34009:1:0   	// 
vdvHW_KEYPAD10  = 34010:1:0    	// 
vdvHW_KEYPAD11  = 34011:1:0   	// 
vdvHW_KEYPAD12  = 34012:1:0    	//
vdvHW_KEYPAD13  = 34013:1:0    	// 
vdvHW_KEYPAD14  = 34014:1:0   	// 
vdvHW_KEYPAD15  = 34015:1:0    	// 
vdvHW_KEYPAD16  = 34016:1:0   	// 
vdvHW_KEYPAD17  = 34017:1:0    	//
// virtual panel for control loads exactly
vdvHW_KEYPAD18  = 34018:1:0    	//
vdvHW_KEYPAD19  = 34019:1:0    	//
vdvHW_KEYPAD20  = 34020:1:0    	//
vdvHW_KEYPAD21  = 34021:1:0    	//
vdvHW_KEYPAD22  = 34022:1:0    	//
vdvHW_KEYPAD23  = 34023:1:0    	//
vdvHW_KEYPAD24  = 34024:1:0    	//
vdvHW_KEYPAD25  = 34025:1:0    	//
vdvHW_KEYPAD26  = 34026:1:0    	//
vdvHW_KEYPAD27  = 34027:1:0    	//
vdvHW_KEYPAD28  = 34028:1:0    	//
vdvHW_KEYPAD29  = 34029:1:0    	//
vdvHW_KEYPAD30  = 34030:1:0    	//
vdvHW_KEYPAD31  = 34031:1:0    	//
vdvHW_KEYPAD32  = 34032:1:0    	//
vdvHW_KEYPAD33  = 34033:1:0    	//
vdvHW_KEYPAD34  = 34034:1:0    	//
vdvHW_KEYPAD35  = 34035:1:0    	//
vdvHW_KEYPAD36  = 34036:1:0    	//
vdvHW_KEYPAD37  = 34037:1:0    	//


DEFINE_CONSTANT

(***********************************************************)
(*              DATA TYPE DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_TYPE

(***********************************************************)
(*               VARIABLE DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_VARIABLE



dev vdvHW_KEYPAD[] = 
{
    vdvHW_KEYPAD01, 
    vdvHW_KEYPAD02, 
    vdvHW_KEYPAD03, 
    vdvHW_KEYPAD04, 
    vdvHW_KEYPAD05, 
    vdvHW_KEYPAD06, 
    vdvHW_KEYPAD07, 
    vdvHW_KEYPAD08, 
    vdvHW_KEYPAD09, 
    vdvHW_KEYPAD10, 
    vdvHW_KEYPAD11,
    vdvHW_KEYPAD12,
    vdvHW_KEYPAD13,
    vdvHW_KEYPAD14,
    vdvHW_KEYPAD15,
    vdvHW_KEYPAD16,
    vdvHW_KEYPAD17,
    vdvHW_KEYPAD18,
    vdvHW_KEYPAD19,
    vdvHW_KEYPAD20,
    vdvHW_KEYPAD21,
    vdvHW_KEYPAD22,
    vdvHW_KEYPAD23,
    vdvHW_KEYPAD24,
    vdvHW_KEYPAD25,
    vdvHW_KEYPAD26,
    vdvHW_KEYPAD27,
    vdvHW_KEYPAD28,
    vdvHW_KEYPAD29,
    vdvHW_KEYPAD30,
    vdvHW_KEYPAD31,
    vdvHW_KEYPAD32,
    vdvHW_KEYPAD33,
    vdvHW_KEYPAD34,
    vdvHW_KEYPAD35,
    vdvHW_KEYPAD36,
    vdvHW_KEYPAD37
}     

VOLATILE INTEGER DEVICE_OnLine // —осто€ние соединени€ с процессором Ћутрон


DEFINE_MODULE 'HW_COMM' HW_COMM (Light, vdvHW_STR, vdvHW_KEYPAD, HW_KEYPADS, DEVICE_OnLine, DEVICE_IP)

DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD01, MVP_ALL_03, PANEL01_BUTTONS, DEVICE_OnLine) // 01 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD02, MVP_ALL_03, PANEL02_BUTTONS, DEVICE_OnLine) // 02 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD03, MVP_ALL_03, PANEL03_BUTTONS, DEVICE_OnLine) // 03 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD04, MVP_ALL_03, PANEL04_BUTTONS, DEVICE_OnLine) // 04 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD05, MVP_ALL_03, PANEL05_BUTTONS, DEVICE_OnLine) // 05 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD06, MVP_ALL_03, PANEL06_BUTTONS, DEVICE_OnLine) // 06 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD07, MVP_ALL_03, PANEL07_BUTTONS, DEVICE_OnLine) // 07 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD08, MVP_ALL_03, PANEL08_BUTTONS, DEVICE_OnLine) // 08 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD09, MVP_ALL_03, PANEL09_BUTTONS, DEVICE_OnLine) // 09 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD10, MVP_ALL_03, PANEL10_BUTTONS, DEVICE_OnLine) // 10 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD11, MVP_ALL_03, PANEL11_BUTTONS, DEVICE_OnLine) // 11             
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD12, MVP_ALL_03, PANEL12_BUTTONS, DEVICE_OnLine) // 12
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD13, MVP_ALL_03, PANEL13_BUTTONS, DEVICE_OnLine) // 13
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD14, MVP_ALL_03, PANEL14_BUTTONS, DEVICE_OnLine) // 14
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD15, MVP_ALL_03, PANEL15_BUTTONS, DEVICE_OnLine) // 15
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD16, MVP_ALL_03, PANEL16_BUTTONS, DEVICE_OnLine) // 16 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD17, MVP_ALL_03, PANEL17_BUTTONS, DEVICE_OnLine) // 17

DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_18 (vdvHW_KEYPAD18, MVP_ALL_03, PANEL18_BUTTONS, DEVICE_OnLine) // 18
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_19 (vdvHW_KEYPAD19, MVP_ALL_03, PANEL19_BUTTONS, DEVICE_OnLine) // 19
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_20 (vdvHW_KEYPAD20, MVP_ALL_03, PANEL20_BUTTONS, DEVICE_OnLine) // 20
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_21 (vdvHW_KEYPAD21, MVP_ALL_03, PANEL21_BUTTONS, DEVICE_OnLine) // 21
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_22 (vdvHW_KEYPAD22, MVP_ALL_03, PANEL22_BUTTONS, DEVICE_OnLine) // 22
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_23 (vdvHW_KEYPAD23, MVP_ALL_03, PANEL23_BUTTONS, DEVICE_OnLine) // 23
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_24 (vdvHW_KEYPAD24, MVP_ALL_03, PANEL24_BUTTONS, DEVICE_OnLine) // 24
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_25 (vdvHW_KEYPAD25, MVP_ALL_03, PANEL25_BUTTONS, DEVICE_OnLine) // 25
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_26 (vdvHW_KEYPAD26, MVP_ALL_03, PANEL26_BUTTONS, DEVICE_OnLine) // 26
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_27 (vdvHW_KEYPAD27, MVP_ALL_03, PANEL27_BUTTONS, DEVICE_OnLine) // 27
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_28 (vdvHW_KEYPAD28, MVP_ALL_03, PANEL28_BUTTONS, DEVICE_OnLine) // 28
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_29 (vdvHW_KEYPAD29, MVP_ALL_03, PANEL29_BUTTONS, DEVICE_OnLine) // 29
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_30 (vdvHW_KEYPAD30, MVP_ALL_03, PANEL30_BUTTONS, DEVICE_OnLine) // 30
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_31 (vdvHW_KEYPAD31, MVP_ALL_03, PANEL31_BUTTONS, DEVICE_OnLine) // 31
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_32 (vdvHW_KEYPAD32, MVP_ALL_03, PANEL32_BUTTONS, DEVICE_OnLine) // 32
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_33 (vdvHW_KEYPAD33, MVP_ALL_03, PANEL33_BUTTONS, DEVICE_OnLine) // 33
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_34 (vdvHW_KEYPAD34, MVP_ALL_03, PANEL34_BUTTONS, DEVICE_OnLine) // 34
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_35 (vdvHW_KEYPAD35, MVP_ALL_03, PANEL35_BUTTONS, DEVICE_OnLine) // 35
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_36 (vdvHW_KEYPAD36, MVP_ALL_03, PANEL36_BUTTONS, DEVICE_OnLine) // 36
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_37 (vdvHW_KEYPAD37, MVP_ALL_03, PANEL37_BUTTONS, DEVICE_OnLine) // 37


                                                                                                    


(***********************************************************)
(*                THE EVENTS GO BELOW                      *)
(***********************************************************)
DEFINE_EVENT

(*****************************************************************)
(*                                                               *)
(*                      !!!! WARNING !!!!                        *)
(*                                                               *)
(* Due to differences in the underlying architecture of the      *)
(* X-Series masters, changing variables in the DEFINE_PROGRAM    *)
(* section of code can negatively impact program performance.    *)
(*                                                               *)
(* See УDifferences in DEFINE_PROGRAM Program ExecutionФ section *)
(* of the NX-Series Controllers WebConsole & Programming Guide   *)
(* for additional and alternate coding methodologies.            *)
(*****************************************************************)

DEFINE_PROGRAM

(*****************************************************************)
(*                       END OF PROGRAM                          *)
(*                                                               *)
(*         !!!  DO NOT PUT ANY CODE BELOW THIS COMMENT  !!!      *)
(*                                                               *)
(*****************************************************************)
