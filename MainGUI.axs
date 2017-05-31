MODULE_NAME='MainGUI' (DEV TP, integer selectedSystem, integer selectedRoomAir, 
				integer selectedRoomLight, integer selectedRoomFloor,
				integer selectedRoomRadiator, integer selectedRoomWindow)
include 'EngineeringChannels'

DEFINE_DEVICE

(***********************************************************)
(*               CONSTANT DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_CONSTANT

(***********************************************************)
(*              DATA TYPE DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_TYPE

(***********************************************************)
(*               VARIABLE DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_VARIABLE

(***********************************************************)
(*               LATCHING DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_LATCHING

(***********************************************************)
(*       MUTUALLY EXCLUSIVE DEFINITIONS GO BELOW           *)
(***********************************************************)
DEFINE_MUTUALLY_EXCLUSIVE

(***********************************************************)
(*        SUBROUTINE/FUNCTION DEFINITIONS GO BELOW         *)
(***********************************************************)
(* EXAMPLE: DEFINE_FUNCTION <RETURN_TYPE> <NAME> (<PARAMETERS>) *)
(* EXAMPLE: DEFINE_CALL '<NAME>' (<PARAMETERS>) *)

(***********************************************************)
(*                STARTUP CODE GOES BELOW                  *)
(***********************************************************)
DEFINE_START

(***********************************************************)
(*                THE EVENTS GO BELOW                      *)
(***********************************************************)
DEFINE_EVENT

BUTTON_EVENT[TP,navigat_selectSource]	// selectSystem
{    PUSH:{selectedSystem = get_last(navigat_selectSource)}
    RELEASE:{}}
    
BUTTON_EVENT[TP,navigat_selectRoom_air]	// selected room in Air System
{    PUSH:{selectedRoomAir = get_last(navigat_selectRoom_air)}
    RELEASE:{}}
    
BUTTON_EVENT[TP,navigat_selectRoom_light]	// selected room in Light System
{    PUSH:{selectedRoomLight = get_last(navigat_selectRoom_light)}
    RELEASE:{}}
    
BUTTON_EVENT[TP,navigat_selectRoom_floor]	// selected room in Floor System
{    PUSH:{selectedRoomFloor = get_last(navigat_selectRoom_floor)}
    RELEASE:{}}
    
BUTTON_EVENT[TP,navigat_selectRoom_radiator]	// selected room in Radiator System
{    PUSH:{selectedRoomRadiator = get_last(navigat_selectRoom_radiator)}
    RELEASE:{}}
    
BUTTON_EVENT[TP,navigat_selectRoom_windows]	// selected room in Window System
{    PUSH:{selectedRoomWindow = get_last(navigat_selectRoom_windows)}
    RELEASE:{}}

DEFINE_PROGRAM

wait 2
{
    [TP,navigat_selectSource[1]] = (selectedSystem == 1)	// Selected system
    [TP,navigat_selectSource[2]] = (selectedSystem == 2)
    [TP,navigat_selectSource[3]] = (selectedSystem == 3)
    [TP,navigat_selectSource[4]] = (selectedSystem == 4)
    [TP,navigat_selectSource[5]] = (selectedSystem == 5)
    [TP,navigat_selectSource[6]] = (selectedSystem == 6)
    [TP,navigat_selectSource[7]] = (selectedSystem == 7)
    
    [TP,navigat_selectRoom_air[1]] = (selectedRoomAir == 1)	// Selected room in air sysmem
    [TP,navigat_selectRoom_air[2]] = (selectedRoomAir == 2)
    [TP,navigat_selectRoom_air[3]] = (selectedRoomAir == 3)
    [TP,navigat_selectRoom_air[4]] = (selectedRoomAir == 4)
    [TP,navigat_selectRoom_air[5]] = (selectedRoomAir == 5)
    [TP,navigat_selectRoom_air[6]] = (selectedRoomAir == 6)
    
    [TP,navigat_selectRoom_light[1]] = (selectedRoomLight == 1)	// Selected room in Light sysmem
    [TP,navigat_selectRoom_light[2]] = (selectedRoomLight == 2)
    [TP,navigat_selectRoom_light[3]] = (selectedRoomLight == 3)
    [TP,navigat_selectRoom_light[4]] = (selectedRoomLight == 4)
    [TP,navigat_selectRoom_light[5]] = (selectedRoomLight == 5)
    [TP,navigat_selectRoom_light[6]] = (selectedRoomLight == 6)
    [TP,navigat_selectRoom_light[7]] = (selectedRoomLight == 7)
    [TP,navigat_selectRoom_light[8]] = (selectedRoomLight == 8)
    [TP,navigat_selectRoom_light[9]] = (selectedRoomLight == 9)
    [TP,navigat_selectRoom_light[10]] = (selectedRoomLight == 10)
    [TP,navigat_selectRoom_light[11]] = (selectedRoomLight == 11)
    [TP,navigat_selectRoom_light[12]] = (selectedRoomLight == 12)
    [TP,navigat_selectRoom_light[13]] = (selectedRoomLight == 13)
    [TP,navigat_selectRoom_light[14]] = (selectedRoomLight == 14)
    [TP,navigat_selectRoom_light[15]] = (selectedRoomLight == 15)
    [TP,navigat_selectRoom_light[16]] = (selectedRoomLight == 16)
    [TP,navigat_selectRoom_light[17]] = (selectedRoomLight == 17)

    [TP,navigat_selectRoom_floor[1]] = (selectedRoomFloor == 1)	// Selected room in Floor sysmem
    [TP,navigat_selectRoom_floor[2]] = (selectedRoomFloor == 2)
    [TP,navigat_selectRoom_floor[3]] = (selectedRoomFloor == 3)
    [TP,navigat_selectRoom_floor[4]] = (selectedRoomFloor == 4)
    [TP,navigat_selectRoom_floor[5]] = (selectedRoomFloor == 5)
    [TP,navigat_selectRoom_floor[6]] = (selectedRoomFloor == 6)
    [TP,navigat_selectRoom_floor[7]] = (selectedRoomFloor == 7)
    
    [TP,navigat_selectRoom_radiator[1]] = (selectedRoomRadiator == 1)	// Selected room in Radiator sysmem
    [TP,navigat_selectRoom_radiator[2]] = (selectedRoomRadiator == 2)
    [TP,navigat_selectRoom_radiator[3]] = (selectedRoomRadiator == 3)
    [TP,navigat_selectRoom_radiator[4]] = (selectedRoomRadiator == 4)
    [TP,navigat_selectRoom_radiator[5]] = (selectedRoomRadiator == 5)
    [TP,navigat_selectRoom_radiator[6]] = (selectedRoomRadiator == 6)
    [TP,navigat_selectRoom_radiator[7]] = (selectedRoomRadiator == 7)
    [TP,navigat_selectRoom_radiator[8]] = (selectedRoomRadiator == 8)
    [TP,navigat_selectRoom_radiator[9]] = (selectedRoomRadiator == 9)
    [TP,navigat_selectRoom_radiator[10]] = (selectedRoomRadiator == 10)
    [TP,navigat_selectRoom_radiator[11]] = (selectedRoomRadiator == 11)
    [TP,navigat_selectRoom_radiator[12]] = (selectedRoomRadiator == 12)
    [TP,navigat_selectRoom_radiator[13]] = (selectedRoomRadiator == 13)
    
    [TP,navigat_selectRoom_windows[1]] = (selectedRoomWindow == 1)	// Selected room in Window sysmem
    [TP,navigat_selectRoom_windows[2]] = (selectedRoomWindow == 2)
    [TP,navigat_selectRoom_windows[3]] = (selectedRoomWindow == 3)
    [TP,navigat_selectRoom_windows[4]] = (selectedRoomWindow == 4)
    [TP,navigat_selectRoom_windows[5]] = (selectedRoomWindow == 5)
    [TP,navigat_selectRoom_windows[6]] = (selectedRoomWindow == 6)
    [TP,navigat_selectRoom_windows[7]] = (selectedRoomWindow == 7)
    [TP,navigat_selectRoom_windows[8]] = (selectedRoomWindow == 8)
    [TP,navigat_selectRoom_windows[9]] = (selectedRoomWindow == 9)
    [TP,navigat_selectRoom_windows[10]] = (selectedRoomWindow == 10)
    [TP,navigat_selectRoom_windows[11]] = (selectedRoomWindow == 11)
    [TP,navigat_selectRoom_windows[12]] = (selectedRoomWindow == 12)
    [TP,navigat_selectRoom_windows[13]] = (selectedRoomWindow == 13)
    [TP,navigat_selectRoom_windows[14]] = (selectedRoomWindow == 14)
    [TP,navigat_selectRoom_windows[15]] = (selectedRoomWindow == 15)
    [TP,navigat_selectRoom_windows[16]] = (selectedRoomWindow == 16)
    [TP,navigat_selectRoom_windows[17]] = (selectedRoomWindow == 17)
    [TP,navigat_selectRoom_windows[18]] = (selectedRoomWindow == 18)
    [TP,navigat_selectRoom_windows[19]] = (selectedRoomWindow == 19)
    [TP,navigat_selectRoom_windows[20]] = (selectedRoomWindow == 20)
    [TP,navigat_selectRoom_windows[21]] = (selectedRoomWindow == 21)
    [TP,navigat_selectRoom_windows[22]] = (selectedRoomWindow == 22)
    [TP,navigat_selectRoom_windows[23]] = (selectedRoomWindow == 23)
    [TP,navigat_selectRoom_windows[24]] = (selectedRoomWindow == 24)
}
