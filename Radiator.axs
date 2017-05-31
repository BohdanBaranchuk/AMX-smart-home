MODULE_NAME='Radiator'(DEV vdv_Macros, integer ID,
			sinteger currentTemperatureRoom, DEV VO4,integer outVO4, DEV Tablet[],
			sinteger neededTemp,integer fanCoilMode, integer fanCoilSumWinter,
			integer but_fanCoils_temps[],integer but_fanCoils_ChangeMode[],
			integer but_fanCoils_infoTempCurrent,integer but_fanCoils_infoTempNeeded, integer but_fanCoils_infoMode)
			
include 'EngineeringChannels'

DEFINE_DEVICE


DEFINE_CONSTANT

integer hysteresis 		= 2	// 0.2 celsius degree
integer LOW_LEVEL 		= 85	// 
integer MIDDLE_LEVEL 		= 170	// 
integer HIGHT_LEVEL 		= 255	// 

integer MAX_TEMP 		= 450	// 
integer MIN_TEMP		= 0	// 

MyTl1 = 1	// timeline for function updateGUI
MyTL2 = 2	// timeline for AutoMode monitoring



DEFINE_TYPE

DEFINE_VARIABLE
LONG timeArray_2[10] = {15000}	// every 15 seconds 
LONG timeArray[10] = {300}	// every 0.1 seconds 	


DEFINE_LATCHING

DEFINE_MUTUALLY_EXCLUSIVE


define_function setSpeedLow()
{
    SEND_LEVEL VO4,outVO4,LOW_LEVEL
}

define_function setSpeedMid()
{
    SEND_LEVEL VO4,outVO4,MIDDLE_LEVEL
}

define_function setSpeedHig()
{
    SEND_LEVEL VO4,outVO4,HIGHT_LEVEL
}

define_function setSpeedAny(integer anyValue)
{
    SEND_LEVEL VO4,outVO4,anyValue
    //SEND_STRING 0, "'=== send level on VO4 value = ',anyValue"
}


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

define_function checkMode()
{
    select 
    {
	active (fanCoilMode == 0):
	{modeAuto()}
	active (fanCoilMode == 1):
	{modeAuto()}
	active (fanCoilMode == 2):
	{modeOff()}
	active (fanCoilMode == 3):
	{modeOn()}
    }
}

define_function modeAuto()
{
    inWinterMode()
}

define_function modeOff()
{
    stopFun();
}

define_function modeOn()
{
    setSpeedAny(HIGHT_LEVEL)
}

define_function inWinterMode()
{
    if( currentTemperatureRoom > (neededTemp+hysteresis) )
    {stopFun()}
    else if (currentTemperatureRoom < neededTemp-hysteresis)
    {runFan()}
}

define_function runFan()
{
    //selectSpeedForRun()
    setSpeedAny(HIGHT_LEVEL)
}

define_function stopFun()
{
    setSpeedAny(0)
}

define_function selectSpeedForRun()
{
    if ( (neededTemp - currentTemperatureRoom)>= 10 )
    {
	setSpeedAny(HIGHT_LEVEL)
    }
    else 
    {
	setSpeedAny(MIDDLE_LEVEL)
    }    
}


define_function updateUI()
{
    
    float value1,value2;
    value1 = currentTemperatureRoom/10
    value2 = neededTemp/10
//    send_string 0,"'+++updateUI'"
//    send_string 0,"'+++value1',value1"
//    send_string 0,"'+++value2',value2"
    if( (fanCoilMode == 1) || ( fanCoilMode == 3))	// AUTO or ON mode selected
    {
	SEND_COMMAND Tablet,"'^TXT-',itoa(but_fanCoils_temps[1]),'&',itoa(but_fanCoils_infoTempCurrent),',1&2,',ftoa(value1)"	// gettedTemp show on Button
	SEND_COMMAND Tablet,"'^TXT-',itoa(but_fanCoils_temps[2]),'&',itoa(but_fanCoils_infoTempNeeded),',1&2,',ftoa(value2)"	// settedTemp show on Button
    } else // if OFF mode
    {
	SEND_COMMAND Tablet,"'^TXT-',itoa(but_fanCoils_temps[1]),'&',itoa(but_fanCoils_infoTempCurrent),',1&2,',ftoa(value1)"	// gettedTemp show on Button
	SEND_COMMAND Tablet,"'^TXT-',itoa(but_fanCoils_temps[2]),'&',itoa(but_fanCoils_infoTempNeeded),',1&2,--'"		// settedTemp show on Button	
    }

    [Tablet,but_fanCoils_ChangeMode[1]] = (fanCoilMode == 1)
    [Tablet,but_fanCoils_ChangeMode[2]] = (fanCoilMode == 2)
    [Tablet,but_fanCoils_ChangeMode[3]] = (fanCoilMode == 3) 
    
    select	// show mode on info multistate button
    {
	active (fanCoilMode == 1):	// AUTO
	{SEND_COMMAND Tablet,"'^ANI-',itoa(but_fanCoils_infoMode),',0,2,1'"
	}
	active (fanCoilMode == 2):	// OFF
	{SEND_COMMAND Tablet,"'^ANI-',itoa(but_fanCoils_infoMode),',0,1,1'"
	}
	active (fanCoilMode == 3):	// ON
	{SEND_COMMAND Tablet,"'^ANI-',itoa(but_fanCoils_infoMode),',0,3,1'"
	}
    }

}

DEFINE_START

wait 40
{
TIMELINE_CREATE(MyTL2,timeArray_2,1,TIMELINE_RELATIVE,TIMELINE_REPEAT)
TIMELINE_CREATE(MyTl1,timeArray,1,TIMELINE_RELATIVE,TIMELINE_REPEAT)
}



DEFINE_EVENT

TIMELINE_EVENT[MyTl1]
{
    updateUI()
}

TIMELINE_EVENT[MyTL2]
{
    if(fanCoilMode == 1)
    {
	modeAuto()
    }
}


    
BUTTON_EVENT[Tablet,but_fanCoils_ChangeMode[1]]	// AUTO mode
{    PUSH:{
	setModeAuto()
    }
    RELEASE:{}}
    
BUTTON_EVENT[Tablet,but_fanCoils_ChangeMode[2]]	// OFF mode
{    PUSH:{
    setModeOff()
    checkMode()
}
RELEASE:{}}

BUTTON_EVENT[Tablet,but_fanCoils_ChangeMode[3]]	// ON mode
{    PUSH:{
    setModeOn()
    checkMode()
}
RELEASE:{}}

BUTTON_EVENT[Tablet,but_fanCoils_temps[3]]	// temp UP
{    PUSH:{upTemp()}
    RELEASE:{}}
    
BUTTON_EVENT[Tablet,but_fanCoils_temps[4]]	// temp Down
{    PUSH:{downTemp()}
    RELEASE:{}}
    

DATA_EVENT[vdv_Macros]	// macros control
{
    COMMAND:
    {
	LOCAL_VAR VOLATILE CHAR CMD[32],CMD2[32],CMD3[32],CMD4[32],CMD5[32]
	LOCAL_VAR VOLATILE INTEGER speed
	LOCAL_VAR VOLATILE SINTEGER nTemp
	CMD = DATA.TEXT;
	if(FIND_STRING(CMD,'RADIATOR',1))
	{
	    REMOVE_STRING(CMD,',',1)
	    CMD2 = REMOVE_STRING(CMD,',',1)
	    CMD2 = LEFT_STRING (CMD2, LENGTH_STRING (CMD2) -1)
	    IF( ID == ATOI(CMD2))
	    {
		CMD3 = REMOVE_STRING(CMD,',',1)
		SELECT{
		ACTIVE(COMPARE_STRING(CMD3,'ON,')==1):
		{
		    setModeOn()
		    checkMode()
		}
		ACTIVE(COMPARE_STRING(CMD3,'OFF,')==1):
		{
		    setModeOff()
		    checkMode()
		}
		ACTIVE(COMPARE_STRING(CMD3,'AUTO,')==1):
		{
		    SEND_STRING 0, "'------------------MODE AUTO------------------'"
		    CMD5 = REMOVE_STRING(CMD,',',1)
		    CMD5 = LEFT_STRING (CMD5, LENGTH_STRING (CMD5) -1)
		    nTemp = ATOI(CMD5)
		    SEND_STRING 0, "'------------------temp:',itoa(nTemp),'-------------'"
		    
		    neededTemp = nTemp
		    setModeAuto()
		}}
	    }
	}
    }
}



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

