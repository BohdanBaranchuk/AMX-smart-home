MODULE_NAME='HW_KEYPAD_RELISE' (DEV vdvHW, DEV dvTP[], INTEGER BUTTONS[], INTEGER DEVICE_OnLine)

DEFINE_CONSTANT
MyTl1 = 1	// timeline for function updateGUI
MyTL2 = 2	// timeline for AutoMode monitoring

DEFINE_VARIABLE
VOLATILE INTEGER LAST_WAIT_STATUS_LED
VOLATILE INTEGER BLANK_CHANNEL_ = 5050
VOLATILE INTEGER NUM_DEV = 34000

VOLATILE INTEGER I, A, B, D

LONG timeArray_2[10] = {15000}	// every 15 seconds 
LONG timeArray[10] = {100}	// every 0.1 seconds 	

DEFINE_FUNCTION ShowStatus( CHAR KEYPAD_STATUS[40])  // 81,9,1<CR>
{
	STACK_VAR CHAR    btnIndex_Char [3]
	STACK_VAR CHAR    btnFunc_Char [3]
	STACK_VAR CHAR    btnStatus_Char [1]
	STACK_VAR INTEGER btnIndex_Int
	
	
	SEND_STRING 0, "'KEYPAD_STATUS =', KEYPAD_STATUS" // 81,9,1<CR>
	btnIndex_Char = REMOVE_STRING(KEYPAD_STATUS,',',1) btnIndex_Char = LEFT_STRING (btnIndex_Char, LENGTH_STRING (btnIndex_Char) -1)  // btnIndex_Char = 81
	btnFunc_Char = REMOVE_STRING(KEYPAD_STATUS,',',1)
	IF (btnFunc_Char = '9,') 
	{
	btnStatus_Char = LEFT_STRING(KEYPAD_STATUS,1)   // btnIndex_Char = 1
        btnIndex_Int = atoi (btnIndex_Char) - 80
	SEND_STRING 0, "'btnIndex_Char =', ITOA ( btnIndex_Int)"
	SEND_STRING 0, "'btnStatus_Char =', btnStatus_Char"
	IF (btnStatus_Char = '1') { ON[vdvHW,BUTTONS[btnIndex_Int]] } ELSE { OFF [vdvHW,BUTTONS[btnIndex_Int]] }
	}
}

DEFINE_START

		    FOR (I=1 ; I <= LENGTH_ARRAY (dvTP) ; I++)
                   {
                    FOR (A=1 ; A <= 10 ; A++)
                       {
                    combine_channels (vdvHW, BUTTONS[A], dvTP[I], BUTTONS[A]) // 
                        }
		    }
wait 40
{
//TIMELINE_CREATE(MyTL2,timeArray_2,1,TIMELINE_RELATIVE,TIMELINE_REPEAT)
TIMELINE_CREATE(MyTl1,timeArray,1,TIMELINE_RELATIVE,TIMELINE_REPEAT)
}


DEFINE_EVENT

TIMELINE_EVENT[MyTl1]
{
    	IF (B = 2) 
		{ B = 1
			WAIT LAST_WAIT_STATUS_LED 
			{ 
			    FOR (A=1 ; A <= 10 ; A++)
			    {
				IF (BUTTONS[A] != BLANK_CHANNEL_) {SEND_COMMAND vdvHW,"'STATUS_LED:', ITOA(80 + A)"}
			    }
			}
		}
}

BUTTON_EVENT[vdvHW,BUTTONS]
{
	PUSH:
	{
		STACK_VAR INTEGER btnIndex
		btnIndex = GET_LAST(BUTTONS)
		SEND_COMMAND vdvHW,"'PUSH_BUTTON:',ITOA(btnIndex)"
		SEND_STRING 0,"'PUSH_BUTTON:',ITOA(btnIndex)"
	}
	RELEASE:
	{
		STACK_VAR INTEGER btnIndex
		btnIndex = GET_LAST(BUTTONS)
		SEND_COMMAND vdvHW,"'RELISE_BUTTON:',ITOA(btnIndex)"
		SEND_STRING 0,"'RELISE_BUTTON:',ITOA(btnIndex)"
	}
	HOLD[20]:
	{
		STACK_VAR INTEGER btnIndex
		btnIndex = GET_LAST(BUTTONS)
		SEND_COMMAND vdvHW,"'HOLD_BUTTON:',ITOA(btnIndex)"
		SEND_STRING 0,"'HOLD_BUTTON:',ITOA(btnIndex)" 
	}
	
}
	
	
	
	
	
BUTTON_EVENT[dvTP,BUTTONS]
{
	PUSH:
	{
		STACK_VAR INTEGER btnIndex
		btnIndex = GET_LAST(BUTTONS)
		
		
		switch(btnIndex)
		{
		CASE 18:
		CASE 19:{SEND_COMMAND vdvHW,"'PUSH_BUTTON:',ITOA(btnIndex)"}
		}
	}
	
	RELEASE:
	{
		STACK_VAR INTEGER btnIndex
		btnIndex = GET_LAST(BUTTONS)
		
		
		switch(btnIndex)
		{
		CASE 18:
		CASE 19:{SEND_COMMAND vdvHW,"'RELISE_BUTTON:',ITOA(btnIndex)"}
		}
	}	
}


DATA_EVENT[vdvHW]  // KEYPAD_STATUS: 81,9,1<CR>
{
	ONLINE:{
		    LAST_WAIT_STATUS_LED = (DATA.DEVICE.NUMBER - NUM_DEV)*10
	}
	STRING:
	{
		LOCAL_VAR VOLATILE CHAR CMD[20]
		CMD = REMOVE_STRING(DATA.Text,':',1)
		SELECT
		{
			ACTIVE(FIND_STRING(CMD,'KEYPAD_STATUS',1)):
			{
				ShowStatus(DATA.TEXT)
			}
			ACTIVE(FIND_STRING(CMD,'KEYPAD_QWETIONS',1)):
			{
			 B = 2
			}
		}
	}
}

DEFINE_PROGRAM

//WAIT 20 { 
//	IF (B = 2) 
//		{ B = 1
//			WAIT LAST_WAIT_STATUS_LED 
//			{ 
//			    FOR (A=1 ; A <= 10 ; A++)
//			    {
//				IF (BUTTONS[A] != BLANK_CHANNEL_) {SEND_COMMAND vdvHW,"'STATUS_LED:', ITOA(80 + A)"}
//			    }
//			}
//		}
//}


