MODULE_NAME='VO4' (DEV VO4[],DEV Tablet[], integer varForSaveValues[][])

DEFINE_DEVICE 

DEFINE_CONSTANT

integer MIN_LEVEL 	= 0
integer MAX_LEVEL	= 255

integer outputLevels[] = {1,2,3,4}


DEFINE_TYPE

DEFINE_VARIABLE



DEFINE_LATCHING


DEFINE_MUTUALLY_EXCLUSIVE

define_function setOutLevel(dev MyDev, integer MyLevelNum, integer MyLevelValue)
{
    SEND_LEVEL MyDev,MyLevelNum,MyLevelValue
}




DEFINE_START

DEFINE_EVENT

LEVEL_EVENT[VO4,outputLevels]
{
    varForSaveValues[get_last(VO4)][LEVEL.INPUT.LEVEL] = LEVEL.VALUE
}



DEFINE_PROGRAM

