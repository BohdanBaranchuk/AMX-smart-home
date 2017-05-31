MODULE_NAME='Media_2fl_Bedroom'(DEV TPS[],DEV TPSnavigation[],DEV IrPort,
				integer powerStateRoom,integer selectedSourceInRoom)

include 'EngineeringChannels'
include 'MediaChannels'

DEFINE_DEVICE

(***********************************************************)
(*               CONSTANT DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_CONSTANT






DEFINE_VARIABLE

volatile integer OffsetTV = 0
volatile integer OffsetAura = 54

volatile integer pulseTime_1 = 1
volatile integer pulseTime_2 = 2
volatile integer pulseTime_3 = 3
volatile integer pulseTime_4 = 4

define_function powerOn()
{
    set_pulse_time(pulseTime_3)
    pulse[IrPort,1]	// ON TV
//    wait 20
//    {pulse[IrPort,55]}	// ON Aura
}

define_function powerOff()
{
    set_pulse_time(pulseTime_3)
    pulse[IrPort,2]	// OFF TV
//    wait 20
//    {pulse[IrPort,55]}	// OFF Aura
}

define_function powerOnFromSource1()	// select TV
{
    set_pulse_time(pulseTime_3)
    pulse[IrPort,12]	// numeric button 1
//    wait 20
//    {pulse[IrPort,55]}	// ON Aura
}

define_function powerOnFromSource2()	// select Aura
{
    set_pulse_time(pulseTime_3)
    pulse[IrPort,13]	// numeric button 2
//    wait 20
//    {pulse[IrPort,55]}	// ON Aura
}

define_function selectSource1()	// select Source1
{
    set_pulse_time(pulseTime_3)
    pulse[IrPort,31]	// sat input
}

define_function selectSource2()	// select Source2
{	
    set_pulse_time(pulseTime_3)
    pulse[IrPort,40]	// HDMI1 input
}

define_function checkSourceFromOnState()
{
    select
    {
	active(selectedSourceInRoom==1):
	{selectSource1()}
	active(selectedSourceInRoom==2):
	{selectSource2()}
    }
}

define_function checkSourceFromOffState()
{
    select
    {
	active(selectedSourceInRoom==1):
	{powerOnFromSource1()}
	active(selectedSourceInRoom==2):
	{powerOnFromSource2()}
    }
}

define_function showHeaderOnAllPages(integer indexTP)
{
    SEND_COMMAND TPSnavigation[indexTP],"'@PPN-[header]Bedroom;Main Page Media'"
    SEND_COMMAND TPSnavigation[indexTP],"'@PPN-[header]Bedroom;Main Page Air'"
    SEND_COMMAND TPSnavigation[indexTP],"'@PPN-[header]Bedroom;Main Page Floor'"
    SEND_COMMAND TPSnavigation[indexTP],"'@PPN-[header]Bedroom;Main Page Light'"
    SEND_COMMAND TPSnavigation[indexTP],"'@PPN-[header]Bedroom;Main Page Radiator'"
    SEND_COMMAND TPSnavigation[indexTP],"'@PPN-[header]Bedroom;Main Page Window'"
}


DEFINE_MODULE 'IRDEV_ARRAY' LoeweTV (IrPort,TPS,remoteRoom_TV_Loewe,OffsetTV,pulseTime_2)
DEFINE_MODULE 'IRDEV_ARRAY' auraHD (IrPort,TPS,remoteRoom_AuraHD_alt,OffsetAura,pulseTime_3)



DEFINE_START


DEFINE_EVENT

BUTTON_EVENT[TPSnavigation,sourceMedia_2fl_Bedroom]
{ PUSH:{
    integer index1,index2;index1 = get_last(TPSnavigation);index2 = get_last(sourceMedia_2fl_Bedroom);
    selectedSourceInRoom = index2
    if(powerStateRoom)
    {
	checkSourceFromOnState()
    }else{
	powerStateRoom=!powerStateRoom
	checkSourceFromOffState()
	showHeaderOnAllPages(index1)	// показати хедер на усых сторынках
    }
}}

BUTTON_EVENT[TPSnavigation,media_RoomPower[1]]	// power OFF
{ PUSH:{
    integer index1;index1 = get_last(TPSnavigation)
    if(powerStateRoom)
    {
	powerStateRoom=0
	powerOff()
    }
}}


DEFINE_PROGRAM

wait 4
{
    if(powerStateRoom)
    {
	[TPSnavigation,sourceMedia_2fl_Bedroom[1]] = (selectedSourceInRoom == 1)
	[TPSnavigation,sourceMedia_2fl_Bedroom[2]] = (selectedSourceInRoom == 2)
	[TPSnavigation,sourceMedia_2fl_Bedroom[3]] = (selectedSourceInRoom == 3)
	[TPSnavigation,sourceMedia_2fl_Bedroom[4]] = (selectedSourceInRoom == 4)
	[TPSnavigation,sourceMedia_2fl_Bedroom[5]] = (selectedSourceInRoom == 5)
	[TPSnavigation,sourceMedia_2fl_Bedroom[6]] = (selectedSourceInRoom == 6)
	[TPSnavigation,sourceMedia_2fl_Bedroom[7]] = (selectedSourceInRoom == 7)
	[TPSnavigation,sourceMedia_2fl_Bedroom[8]] = (selectedSourceInRoom == 8)
	[TPSnavigation,sourceMedia_2fl_Bedroom[9]] = (selectedSourceInRoom == 9)
	[TPSnavigation,sourceMedia_2fl_Bedroom[10]] = (selectedSourceInRoom == 10)
	select
	{
	active(selectedSourceInRoom == 1):
	{SEND_COMMAND TPSnavigation,"'^TXT-',itoa(media_RoomInfoSource[1]),',1&2, Television'"}
	active(selectedSourceInRoom == 2):
	{SEND_COMMAND TPSnavigation,"'^TXT-',itoa(media_RoomInfoSource[1]),',1&2, AuraHD'"}	
	}
	
    }
    else
    {
	[TPSnavigation,sourceMedia_2fl_Bedroom[1]] = 0
	[TPSnavigation,sourceMedia_2fl_Bedroom[2]] = 0
	[TPSnavigation,sourceMedia_2fl_Bedroom[3]] = 0
	[TPSnavigation,sourceMedia_2fl_Bedroom[4]] = 0
	[TPSnavigation,sourceMedia_2fl_Bedroom[5]] = 0
	[TPSnavigation,sourceMedia_2fl_Bedroom[6]] = 0
	[TPSnavigation,sourceMedia_2fl_Bedroom[7]] = 0
	[TPSnavigation,sourceMedia_2fl_Bedroom[8]] = 0
	[TPSnavigation,sourceMedia_2fl_Bedroom[9]] = 0
	[TPSnavigation,sourceMedia_2fl_Bedroom[10]] = 0
    }

}

