MODULE_NAME='HwQSoverIP'
include 'Keypad_Port_3'

DEFINE_DEVICE

Light         = 0:82:1
// виртуальную панель привязываем к физической панели Lutron
vdvHW_STR       = 34000:1:0
vdvHW_KEYPAD01  = 34001:1:0   // 
vdvHW_KEYPAD02  = 34002:1:0    // 
vdvHW_KEYPAD03  = 34003:1:0   // 
vdvHW_KEYPAD04  = 34004:1:0    // 
vdvHW_KEYPAD05  = 34005:1:0   // 
vdvHW_KEYPAD06  = 34006:1:0    // 
vdvHW_KEYPAD07  = 34007:1:0   // 
vdvHW_KEYPAD08  = 34008:1:0    // 
vdvHW_KEYPAD09  = 34009:1:0   // 
vdvHW_KEYPAD10  = 34010:1:0    // 
vdvHW_KEYPAD11  = 34011:1:0   // 
vdvHW_KEYPAD12  = 34012:1:0    //
vdvHW_KEYPAD13  = 34013:1:0    //
vdvHW_KEYPAD14  = 34014:1:0    //
vdvHW_KEYPAD15  = 34015:1:0    //
vdvHW_KEYPAD16  = 34016:1:0    //
vdvHW_KEYPAD17  = 34017:1:0    // 

MVP1_03 = 10001:1:1




DEFINE_VARIABLE
// устрйства
dev MVP_ALL_03 [] = {MVP1_03 } // свет

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
    vdvHW_KEYPAD11 
}     

VOLATILE INTEGER ON_line_HW // Состояние соединения с процессором Лутрон
VOLATILE INTEGER DEVICE_OnLine // 

//DEFINE_MODULE 'HW_COMM' HW_COMM (Light, vdvHW_STR, vdvHW_KEYPAD, HW_KEYPADS, DEVICE_OnLine, DEVICE_IP)

DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD01, MVP_ALL_03, PANEL01_BUTTONS, DEVICE_OnLine) // 01 Хол\Вход в квартиру 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD02, MVP_ALL_03, PANEL02_BUTTONS, DEVICE_OnLine) // 02 Кабинет\Кабинет 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD03, MVP_ALL_03, PANEL03_BUTTONS, DEVICE_OnLine) // 03 Кухня­столовая\Кухня 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD04, MVP_ALL_03, PANEL04_BUTTONS, DEVICE_OnLine) // 04 Кухня­столовая\Столовая 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD05, MVP_ALL_03, PANEL05_BUTTONS, DEVICE_OnLine) // 05 Спальня родителей\Спальня вход 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD06, MVP_ALL_03, PANEL06_BUTTONS, DEVICE_OnLine) // 06 Спальня родителей\Спальня прикроватная справа 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD07, MVP_ALL_03, PANEL07_BUTTONS, DEVICE_OnLine) // 07 Спальня родителей\Спальня прикроватная слева 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD08, MVP_ALL_03, PANEL08_BUTTONS, DEVICE_OnLine) // 08 Детская 1\Детская 1 вход 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD09, MVP_ALL_03, PANEL09_BUTTONS, DEVICE_OnLine) // 09 Детская 1\Детская 1 прикроватная 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD10, MVP_ALL_03, PANEL10_BUTTONS, DEVICE_OnLine) // 10 Детская 2\Детская 2 вход 
DEFINE_MODULE 'HW_KEYPAD_RELISE' HW_KEYPAD_ (vdvHW_KEYPAD11, MVP_ALL_03, PANEL11_BUTTONS, DEVICE_OnLine) // 11 Детская 2\Детская 2 прикроватная                           
                                                                                                    
DEFINE_MODULE 'HW_KEYPAD_RELISE_VIRTUAL' HW_KEYPAD_ (vdvHW_KEYPAD12, MVP_ALL_03, PANEL12_BUTTONS, DEVICE_OnLine) // 12 Гостиная\Фантом Гостинная для АМХ 

DEFINE_START

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
(* See “Differences in DEFINE_PROGRAM Program Execution” section *)
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
