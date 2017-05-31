MODULE_NAME='ServiceClimate' (DEV TPS_Engineering[], integer fanCoils_ChangeWinSum[], 
				INTEGER fanCoilSumWinter)



DEFINE_EVENT


BUTTON_EVENT[TPS_Engineering,fanCoils_ChangeWinSum]	// change Winter and Summer
{    PUSH:{
    if(fanCoilSumWinter==0)
    {fanCoilSumWinter=1}
    else
    {fanCoilSumWinter=0}
    }
    RELEASE:{}}




DEFINE_PROGRAM
wait 1
{
    [TPS_Engineering,fanCoils_ChangeWinSum] = (fanCoilSumWinter == 1)
}


