MODULE_NAME='TS3_macros'(DEV vdv_Macros, DEV Tablet[],
			sinteger neededTemp,integer fanCoilMode,
			integer but_fanCoils_temps[],integer but_fanCoils_ChangeMode[],
			integer but_selectRoom_air[], integer savedSelectedRoom[24],integer but_start,integer but_OnOff[])
			
include 'EngineeringChannels'

DEFINE_DEVICE


DEFINE_CONSTANT

integer MAX_TEMP 		= 250	// 
integer MIN_TEMP		= 0	// 

MyTl1 = 1	// timeline for function updateGUI




DEFINE_TYPE

DEFINE_VARIABLE
LONG timeArray[10] = {300}	// every 0.1 seconds 		


DEFINE_LATCHING

DEFINE_MUTUALLY_EXCLUSIVE


define_function setModeAuto()
{
    fanCoilMode = 1
}

define_function setModeOff()
{
    fanCoilMode = 2 
}

define_function setModeOn()
{
    fanCoilMode = 3
}

define_function upTemp()
{
    if(neededTemp < MAX_TEMP)
    {neededTemp=neededTemp+10 }
}

define_function downTemp()
{
    if(neededTemp > MIN_TEMP)
    {neededTemp= neededTemp -10}
}


define_function updateUI()
{
    
    float value2;
    integer ii;
    value2 = neededTemp/10

    if( (fanCoilMode == 1))	// AUTO or ON mode selected
    {
	SEND_COMMAND Tablet,"'^TXT-',itoa(but_fanCoils_temps[2]),',1&2,',ftoa(value2)"	// settedTemp show on Button
    } else // if OFF mode
    {
	SEND_COMMAND Tablet,"'^TXT-',itoa(but_fanCoils_temps[2]),',1&2,--'"		// settedTemp show on Button	
    }
    
    [Tablet,but_fanCoils_ChangeMode[2]] = (fanCoilMode == 1)	// AUTO MOD
    [Tablet,but_fanCoils_ChangeMode[3]] = (fanCoilMode == 2)	// OFF MOD
    
    
    for(ii=1;ii<=length_array(but_selectRoom_air);ii++)
    {	[Tablet,but_selectRoom_air[ii]] = (savedSelectedRoom[ii] == 1)    }	// selected rooms
}

DEFINE_START

wait 40
{
TIMELINE_CREATE(MyTl1,timeArray,1,TIMELINE_RELATIVE,TIMELINE_REPEAT)
}


DEFINE_EVENT

TIMELINE_EVENT[MyTl1]
{
    updateUI()
}


    
BUTTON_EVENT[Tablet,but_fanCoils_ChangeMode[2]]	// AUTO mode
{    PUSH:{
	setModeAuto()
    }
    RELEASE:{}}
    
BUTTON_EVENT[Tablet,but_fanCoils_ChangeMode[3]]	// OFF mode
{    PUSH:{
    setModeOff()

}
RELEASE:{}}

BUTTON_EVENT[Tablet,but_fanCoils_temps[3]]	// temp UP
{    PUSH:{upTemp()}
    RELEASE:{}}
    
BUTTON_EVENT[Tablet,but_fanCoils_temps[4]]	// temp Down
{    PUSH:{downTemp()}
    RELEASE:{}}
    
BUTTON_EVENT[Tablet,but_selectRoom_air]	// select Rooms buttons
{    PUSH:{
    LOCAL_VAR integer index
    index = get_last(but_selectRoom_air)
    savedSelectedRoom[index] = !savedSelectedRoom[index]
    }
    RELEASE:{}}

BUTTON_EVENT[Tablet,but_start]	// button start
{    PUSH:{
    LOCAL_VAR integer i
    for(i=1;i<=length_array(but_selectRoom_air);i++)
    {
	if(savedSelectedRoom[i])
	{
//	    send_string 0,"'------in------'"
//	    send_string 0,"'------windowMode:',itoa(fanCoilMode),'------'"
//	    send_string 0,"'------windowTemp:',itoa(neededTemp),'------'"
	    SELECT
	    {
		ACTIVE(fanCoilMode == 1):	// AUTO
		{
		    SEND_COMMAND vdv_Macros,"'WINDOWS,',itoa(i),',ON,',itoa(neededTemp),',',$0A,$0D"
//		    SEND_STRING 0,"'WINDOWS,',itoa(i),',ON,',itoa(neededTemp),',',$0A,$0D"
		}
		ACTIVE(fanCoilMode == 2):	// OFF
		{
		    SEND_COMMAND vdv_Macros,"'WINDOWS,',itoa(i),',OFF,',$0A,$0D"
//		    SEND_STRING 0,"'WINDOWS,',itoa(i),',OFF,',$0A,$0D"
		}		
	    }
	}
    }
    }
    RELEASE:{}}

BUTTON_EVENT[Tablet,but_OnOff[1]]	// start all ON
{    PUSH:{
    LOCAL_VAR integer i
    for(i=1;i<=length_array(but_selectRoom_air);i++)
    {
	SEND_COMMAND vdv_Macros,"'WINDOWS,',itoa(i),',ON,240,',$0A,$0D"
    }
    }
RELEASE:{}}

BUTTON_EVENT[Tablet,but_OnOff[2]]	// start all OFF
{    PUSH:{
    LOCAL_VAR integer i
    for(i=1;i<=length_array(but_selectRoom_air);i++)
    {
	SEND_COMMAND vdv_Macros,"'WINDOWS,',itoa(i),',OFF,',$0A,$0D"
    }
    }
RELEASE:{}}


DEFINE_PROGRAM

//wait 1
//{
//    updateUI()
//}
//
//wait 200
//{
//    if(fanCoilMode == 1)
//    {
//	modeAuto()
//    }
//}


