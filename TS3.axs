MODULE_NAME='TS3' (DEV vdv_Macros, integer ID,
		    DEV TS3, DEV Tablet[], sinteger gettedTemp, integer settedTemp,integer gettedMode , 
		    integer buttons_changeMode[],integer buttons_changeTemp[],integer buttons_info[])



DEFINE_DEVICE

(***********************************************************)
(*               CONSTANT DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_CONSTANT

MyTl1 = 1	// timeline for function updateGUI

INTEGER setLevel 			= 1	// set temperature to TS3
INTEGER getLevel			= 2	// get temperature from TS3
INTEGER getAnalogValue 			= 3	// get analog value on analog input

INTEGER CHgetRelayStat			= 1	// ON - relayON, OFF - relayOFF
INTEGER CHsetThermostatMode_OFF		= 11	// ON - set MOde
INTEGER CHsetThermostatMode_AUTO	= 12	// ON - set MOde
INTEGER CHsetThermostatMode_FORCEDOFF	= 13	// ON - set MOde
INTEGER CHsetThermostatMode_FORCEDON	= 14	// ON - set MOde

INTEGER MAX_TEMP			= 250
INTEGER MIN_TEMP			= 0



DEFINE_TYPE

(***********************************************************)
(*               VARIABLE DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_VARIABLE

INTEGER errorFlag			= 0	// 0-ok, 1-error

LONG timeArray[10] = {300}	// every 0.1 seconds 
(***********************************************************)
(*               LATCHING DEFINITIONS GO BELOW             *)
(***********************************************************)
DEFINE_LATCHING

(***********************************************************)
(*       MUTUALLY EXCLUSIVE DEFINITIONS GO BELOW           *)
(***********************************************************)
DEFINE_MUTUALLY_EXCLUSIVE

define_function setTemperature(integer temp)
{
    SEND_LEVEL TS3,setLevel,temp;
    //errorFlag=2; ??????
}

define_function getTemperature(sinteger temp)
{
    if(temp != 9990)
    {gettedTemp = temp;	errorFlag=0}
    else
    {errorFlag=1}
}

define_function setMode_OFF()
{
    ON[TS3,CHsetThermostatMode_OFF]
}

define_function setMode_AUTO()
{
    ON[TS3,CHsetThermostatMode_AUTO]
}

define_function setMode_ForsedOFF()
{
    ON[TS3,CHsetThermostatMode_FORCEDOFF]
}

define_function setMode_ForsedON()
{
    ON[TS3,CHsetThermostatMode_FORCEDON]
}

define_function updateGUI()
{
    float value
    value = gettedTemp/10
    if(errorFlag == 0)
    {
	if(gettedMode == 2){	// if AUTO MODE
	SEND_COMMAND Tablet,"'^TXT-',itoa(buttons_changeTemp[1]),',1&2,',ftoa(value)"	// gettedTemp show on Button
	SEND_COMMAND Tablet,"'^TXT-',itoa(buttons_changeTemp[2]),',1&2,',itoa(settedTemp/10)"	// settedTemp show on Button
	
	//SEND_COMMAND Tablet,"'^SHO-',itoa(buttons_info[3]),',1'" // show info buttons
	//SEND_COMMAND Tablet,"'^SHO-',itoa(buttons_info[2]),',1'" // show info buttons
	//SEND_COMMAND Tablet,"'^SHO-',itoa(buttons_info[1]),',1'" // show info buttons
	SEND_COMMAND Tablet,"'^TXT-',itoa(buttons_info[3]),',1&2,',ftoa(value)"		// gettedTemp show on infoButton
	SEND_COMMAND Tablet,"'^TXT-',itoa(buttons_info[2]),',1&2,',itoa(settedTemp/10)"	// settedTemp show on infoButton	
	}
	else
	{
	//SEND_COMMAND Tablet,"'^SHO-',itoa(buttons_info[3]),',0'" // hide info buttons
	//SEND_COMMAND Tablet,"'^SHO-',itoa(buttons_info[2]),',0'" // hide info buttons
	//SEND_COMMAND Tablet,"'^SHO-',itoa(buttons_info[1]),',0'" // hide info buttons
	SEND_COMMAND Tablet,"'^TXT-',itoa(buttons_info[3]),',1&2,',ftoa(value)"	// gettedTemp show on Button
	SEND_COMMAND Tablet,"'^TXT-',itoa(buttons_info[2]),',1&2,--'"		// settedTemp show on Button	
	
	SEND_COMMAND Tablet,"'^TXT-',itoa(buttons_changeTemp[1]),',1&2,',ftoa(value)"	// gettedTemp show on Button
	SEND_COMMAND Tablet,"'^TXT-',itoa(buttons_changeTemp[2]),',1&2,--'"		// settedTemp show on Button	
	}
    }
    else
    {
	SEND_COMMAND Tablet,"'^TXT-',itoa(buttons_changeTemp[1]),',1&2,Err'"	// gettedTemp show on Button
	SEND_COMMAND Tablet,"'^TXT-',itoa(buttons_changeTemp[2]),',1&2,',itoa(settedTemp)"		// settedTemp show on Button
    }
    [Tablet,buttons_changeMode[1]] = (gettedMode == 1)
    [Tablet,buttons_changeMode[2]] = (gettedMode == 2)
    [Tablet,buttons_changeMode[3]] = (gettedMode == 3)
    [Tablet,buttons_changeMode[4]] = (gettedMode == 4)
    
    [Tablet,buttons_info[1]] = (gettedMode == 2)	// if AUTO show red color
}

define_function UpTemp()
{
    if(settedTemp < MAX_TEMP)
    {
	settedTemp=settedTemp+10;
	setTemperature(settedTemp);
    }
}

define_function DownTemp()
{
    if(settedTemp > MIN_TEMP)
    {
	settedTemp=settedTemp-10;
	setTemperature(settedTemp);
    }    
}



DEFINE_START
wait 40
{
TIMELINE_CREATE(MyTl1,timeArray,1,TIMELINE_RELATIVE,TIMELINE_REPEAT)
}



DEFINE_EVENT

TIMELINE_EVENT[MyTl1]
{
    updateGUI()
}

LEVEL_EVENT[TS3,getLevel]			// read temp from TS3
{
    getTemperature(LEVEL.VALUE)
}

CHANNEL_EVENT[TS3,CHsetThermostatMode_OFF]	// read mode from TS3
CHANNEL_EVENT[TS3,CHsetThermostatMode_AUTO]
CHANNEL_EVENT[TS3,CHsetThermostatMode_FORCEDOFF]
CHANNEL_EVENT[TS3,CHsetThermostatMode_FORCEDON]
{
    ON:
    {
	switch(CHANNEL.CHANNEL)
	{
	    CASE CHsetThermostatMode_OFF:
	    { gettedMode=1;break; }
	    CASE CHsetThermostatMode_AUTO:
	    { gettedMode=2;break; }
	    CASE CHsetThermostatMode_FORCEDOFF:
	    { gettedMode=3;break; }
	    CASE CHsetThermostatMode_FORCEDON:
	    { gettedMode=4;break; }
	}
    }
    OFF:
    {}
}


BUTTON_EVENT[Tablet,buttons_changeMode[1]]
{
    PUSH:
    {setMode_OFF()}
    RELEASE:
    {}
}

BUTTON_EVENT[Tablet,buttons_changeMode[2]]
{
    PUSH:
    {
    if(gettedMode=2)	// if AUTO
    {
	setMode_ForsedOFF()
    }else
    {   setMode_AUTO()}}
    RELEASE:
    {}
}

BUTTON_EVENT[Tablet,buttons_changeMode[3]]
{
    PUSH:
    {setMode_ForsedOFF()}
    RELEASE:
    {}
}

BUTTON_EVENT[Tablet,buttons_changeMode[4]]
{
    PUSH:
    {setMode_ForsedON()}
    RELEASE:
    {}
}

BUTTON_EVENT[Tablet,buttons_changeTemp[3]]
{
    PUSH:
    {UpTemp()}
    RELEASE:
    {}
}

BUTTON_EVENT[Tablet,buttons_changeTemp[4]]
{
    PUSH:
    {DownTemp()}
    RELEASE:
    {}
}


DATA_EVENT[vdv_Macros]	// macros control
{
    COMMAND:
    {
	LOCAL_VAR VOLATILE CHAR CMD[32],CMD2[32],CMD3[32],CMD4[32],CMD5[32]
	LOCAL_VAR VOLATILE INTEGER speed
	LOCAL_VAR VOLATILE INTEGER nTemp
	CMD = DATA.TEXT;
	if(FIND_STRING(CMD,'WINDOWS',1))
	{
	    REMOVE_STRING(CMD,',',1)
	    CMD2 = REMOVE_STRING(CMD,',',1)
	    CMD2 = LEFT_STRING (CMD2, LENGTH_STRING (CMD2) -1)
	    IF( ID == ATOI(CMD2))
	    {
		CMD3 = REMOVE_STRING(CMD,',',1)
		SELECT{
		ACTIVE(COMPARE_STRING(CMD3,'OFF,')==1):
		{
		    SEND_STRING 0, "'------------------MODE OFF -----------------'"
		    setMode_ForsedOFF()
		}
		ACTIVE(COMPARE_STRING(CMD3,'ON,')==1):
		{
		    SEND_STRING 0, "'------------------MODE AUTO------------------'"
		    CMD5 = REMOVE_STRING(CMD,',',1)
		    CMD5 = LEFT_STRING (CMD5, LENGTH_STRING (CMD5) -1)
		    nTemp = ATOI(CMD5)
		    SEND_STRING 0, "'------------------temp:',itoa(nTemp),'-------------'"
		    
		    settedTemp=nTemp;
		    setTemperature(settedTemp);
		    setMode_AUTO()
		}}
	    }
	}
    }
}





DEFINE_PROGRAM

//wait 1
//{
//    updateGUI()
//}




