MODULE_NAME='Arcam_AVP550'(DEV PRIMARE, DEV Panels[], DEV vdvPrimare, INTEGER Channels[])

DEFINE_CONSTANT
TL_VOLUME	=	1

DEFINE_VARIABLE

VOLATILE INTEGER VOLUME_LEVEL
VOLATILE LONG TL_VOLUME_TIMES[] = {100}	

VOLATILE CHAR PRIMARE_BUFFER[256]
VOLATILE INTEGER nIndex = 0
VOLATILE INTEGER NISTART = 0

VOLATILE integer MUTE

DEFINE_START
	CREATE_BUFFER Primare, PRIMARE_BUFFER PRIMARE_BUFFER  = ""
	Send_Command Primare,'SET BAUD 38400,N,8,1'
	for(nIndex = 1; nIndex <=LENGTH_ARRAY(Panels); nIndex++)
	{
	    COMBINE_LEVELS(vdvPrimare, Channels[52], Panels[nIndex], Channels[52])
	}

DEFINE_EVENT


BUTTON_EVENT[Panels,Channels[1]]{PUSH: Send_String Primare, "$21,$01,$0A,$01,$00,$0D,$0A,$0D"}		// 1 Input BD (BD)
BUTTON_EVENT[Panels,Channels[2]]{PUSH: Send_String Primare, "$21,$01,$0A,$01,$01,$0D,$0A,$0D"}		// 1 Input SAT	(OpenBox)
BUTTON_EVENT[Panels,Channels[3]]{PUSH: Send_String Primare, "$21,$01,$0A,$01,$02,$0D,$0A,$0D"}		// 1 Input AV	(DUNE)
BUTTON_EVENT[Panels,Channels[4]]{PUSH: Send_String Primare, "$21,$01,$0A,$01,$03,$0D,$0A,$0D"}		// 1 Input PVR
BUTTON_EVENT[Panels,Channels[5]]{PUSH: Send_String Primare, "$21,$01,$0A,$01,$04,$0D,$0A,$0D"}		// 1 Input VCR
BUTTON_EVENT[Panels,Channels[6]]{PUSH: Send_String Primare, "$21,$01,$0A,$01,$05,$0D,$0A,$0D"}		// 1 Input GAME
BUTTON_EVENT[Panels,Channels[7]]{PUSH: Send_String Primare, "$21,$01,$0A,$01,$06,$0D,$0A,$0D"}		// 1 Input STB

(********************************* IR CODE RC5 **************************************************************************************)
BUTTON_EVENT[Panels,Channels[8]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$0C,$0D,$0A,$0D"}	// 1 Standby
BUTTON_EVENT[Panels,Channels[9]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$01,$0D,$0A,$0D"}	// 1 1
BUTTON_EVENT[Panels,Channels[10]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$02,$0D,$0A,$0D"}	// 1 2
BUTTON_EVENT[Panels,Channels[11]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$03,$0D,$0A,$0D"}	// 1 3
BUTTON_EVENT[Panels,Channels[12]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$04,$0D,$0A,$0D"}	// 1 4
BUTTON_EVENT[Panels,Channels[13]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$05,$0D,$0A,$0D"}	// 1 5
BUTTON_EVENT[Panels,Channels[14]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$06,$0D,$0A,$0D"}	// 1 6
BUTTON_EVENT[Panels,Channels[15]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$07,$0D,$0A,$0D"}	// 1 7
BUTTON_EVENT[Panels,Channels[16]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$08,$0D,$0A,$0D"}	// 1 8
BUTTON_EVENT[Panels,Channels[17]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$09,$0D,$0A,$0D"}	// 1 9
BUTTON_EVENT[Panels,Channels[18]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$00,$0D,$0A,$0D"}	// 1 0
BUTTON_EVENT[Panels,Channels[19]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$52,$0D,$0A,$0D"}	// 1 Menu
BUTTON_EVENT[Panels,Channels[20]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$56,$0D,$0A,$0D"}	// 1 UP
BUTTON_EVENT[Panels,Channels[21]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$51,$0D,$0A,$0D"}	// 1 Left
BUTTON_EVENT[Panels,Channels[22]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$57,$0D,$0A,$0D"}	// 1 OK
BUTTON_EVENT[Panels,Channels[23]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$50,$0D,$0A,$0D"}	// 1 Right
BUTTON_EVENT[Panels,Channels[24]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$55,$0D,$0A,$0D"}	// 1 DOWWN
BUTTON_EVENT[Panels,Channels[25]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$2B,$0D,$0A,$0D"}	// 1 Home

//BUTTON_EVENT[Panels,Channels[26]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$0D,$0D,$0A,$0D"}	// 1 Mute
BUTTON_EVENT[Panels,Channels[26]]
{
    PUSH: 
    {
	if(mute==1)		// if mute ON
	{
	    Send_String Primare, "$21,$01,$08,$02,$10,$78,$0D,$0A,$0D"	// OFF mute
	    mute = 0
	    SEND_COMMAND Panels,"'^ANI-1425,1,1,10'"	// stop animation
	} 
	else
	{
	    Send_String Primare, "$21,$01,$08,$02,$10,$1A,$0D,$0A,$0D"	// ON MUte
	    mute = 1
	    SEND_COMMAND Panels,"'^ANI-1425,2,3,10'"	// run animation
	}
    }
}	// 1 Mute

BUTTON_EVENT[Panels,Channels[27]]{
PUSH: 
{Send_String Primare, "$21,$01,$08,$02,$10,$10,$0D,$0A,$0D"} 
HOLD[1,REPEAT]:{Send_String Primare, "$21,$01,$08,$02,$10,$10,$0D,$0A,$0D"}}	// 1 Volume +
BUTTON_EVENT[Panels,Channels[28]]{
PUSH: {Send_String Primare, "$21,$01,$08,$02,$10,$11,$0D,$0A,$0D"}	// 1 Volume -
HOLD[1,REPEAT]:{Send_String Primare, "$21,$01,$08,$02,$10,$11,$0D,$0A,$0D"}}
BUTTON_EVENT[Panels,Channels[29]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$5B,$0D,$0A,$0D"}	// 1 Radio
BUTTON_EVENT[Panels,Channels[30]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$63,$0D,$0A,$0D"}	// 1 AUX
BUTTON_EVENT[Panels,Channels[31]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$5C,$0D,$0A,$0D"}	// 1 NET
BUTTON_EVENT[Panels,Channels[32]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$5D,$0D,$0A,$0D"}	// 1 USB
BUTTON_EVENT[Panels,Channels[33]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$5E,$0D,$0A,$0D"}	// 1 AV
BUTTON_EVENT[Panels,Channels[34]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$1B,$0D,$0A,$0D"}	// 1 SAT
BUTTON_EVENT[Panels,Channels[35]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$60,$0D,$0A,$0D"}	// 1 PVR
BUTTON_EVENT[Panels,Channels[36]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$61,$0D,$0A,$0D"}	// 1 Game
BUTTON_EVENT[Panels,Channels[37]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$62,$0D,$0A,$0D"}	// 1 BD
BUTTON_EVENT[Panels,Channels[38]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$76,$0D,$0A,$0D"}	// 1 CD
BUTTON_EVENT[Panels,Channels[39]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$64,$0D,$0A,$0D"}	// 1 STB
BUTTON_EVENT[Panels,Channels[40]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$77,$0D,$0A,$0D"}	// 1 VCR
BUTTON_EVENT[Panels,Channels[41]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$7B,$0D,$0A,$0D"}	// 1 Power ON
BUTTON_EVENT[Panels,Channels[42]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$7C,$0D,$0A,$0D"}	// 1 Power OFF
BUTTON_EVENT[Panels,Channels[43]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$6A,$0D,$0A,$0D"}	// 1 Audio mode Multi Channel
BUTTON_EVENT[Panels,Channels[44]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$6B,$0D,$0A,$0D"}	// 1 Audio mode Stereo
BUTTON_EVENT[Panels,Channels[45]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$6E,$0D,$0A,$0D"}	// 1 Audio mode Dolby Surround
BUTTON_EVENT[Panels,Channels[46]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$6F,$0D,$0A,$0D"}	// 1 Audio mode DTS Neo:6 Cinema
BUTTON_EVENT[Panels,Channels[47]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$70,$0D,$0A,$0D"}	// 1 Audio mode DTS Neo:6 Music
BUTTON_EVENT[Panels,Channels[48]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$45,$0D,$0A,$0D"}	// 1 Audio mode 5/7 Ch Stereo
BUTTON_EVENT[Panels,Channels[49]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$17,$0D,$0A,$0D"}	// 1 Audio mode Dolby D EX
BUTTON_EVENT[Panels,Channels[50]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$1A,$0D,$0A,$0D"}	// 1 Mute On
BUTTON_EVENT[Panels,Channels[51]]{PUSH: Send_String Primare, "$21,$01,$08,$02,$10,$78,$0D,$0A,$0D"}	// 1 Mute OFF 




LEVEL_EVENT[vdvPrimare,Channels[52]]								// 43 VOLUME LEVEL BARAGRAPH
{
	cancel_wait 'sendTo'
	wait 2 'sendTo'
	{
	    Send_String Primare, "$21,$01,$0D,$01,Level.Value,$0D,$0A,$0D"
	    VOLUME_LEVEL = Level.Value
	}
}

(*
BUTTON_EVENT[Panels,Channels[19]]{PUSH:{
	if(!TIMELINE_ACTIVE(TL_VOLUME))
		TIMELINE_CREATE(TL_VOLUME, TL_VOLUME_TIMES, 1, TIMELINE_RELATIVE, TIMELINE_REPEAT)
}}

TIMELINE_EVENT[TL_VOLUME]
{
	if(VOLUME_LEVEL < 10)
		TIMELINE_KILL(TL_VOLUME)
	else
		Send_Level vdvPrimare,Channels[3], VOLUME_LEVEL - 4
}
*)

DEFINE_PROGRAM

IF(NISTART = 0)
{
	NISTART = 1
	Send_Command Primare,'SET BAUD 38400,N,8,1'
	WAIT 300
	{
	    Send_String Primare, "$21,$01,$0D,$01,$1E,$0D,$0A,$0D" // set level to 32
	}
}

wait 20
{
    if(mute = 1)
	    SEND_COMMAND Panels,"'^ANI-1425,2,3,10'"	// run animation
}