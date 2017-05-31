MODULE_NAME='MainMedia' (DEV TPS[],
		integer savedSelectedRoom[],integer powerStateRoom[],integer selectedSourceInRoom[])

include 'EngineeringChannels'

DEFINE_DEVICE


DEFINE_CONSTANT

DEFINE_TYPE

DEFINE_VARIABLE

DEFINE_FUNCTION checkRoom(integer indexTP)	// indexTP - last TP
{
    SEND_COMMAND TPS[indexTP],"'@PPA-Main Page Media'"// ховати всі попапи на цій сторінці!
    switch(savedSelectedRoom[indexTP])
    {
    CASE 1:    { checkPower_2fl_Bedroom(indexTP);SEND_COMMAND TPS[indexTP],"'@PPN-media_names_room01;Main Page Media'" ;break;}
    CASE 2:    { checkPower_2fl_Kinder(indexTP);SEND_COMMAND TPS[indexTP],"'@PPN-media_names_room02;Main Page Media'" ;break;}
    CASE 3:    { checkPower_2fl_Guest(indexTP);SEND_COMMAND TPS[indexTP],"'@PPN-media_names_room03;Main Page Media'" ;break;}
    CASE 4:    { checkPower_1fl_Cinema(indexTP);SEND_COMMAND TPS[indexTP],"'@PPN-media_names_room04;Main Page Media'" ;break;}
    CASE 5:    { checkPower_1fl_Kitchen(indexTP);SEND_COMMAND TPS[indexTP],"'@PPN-media_names_room05;Main Page Media'" ;break;}
    CASE 6:    { checkPower_1fl_Kabinet(indexTP);SEND_COMMAND TPS[indexTP],"'@PPN-media_names_room06;Main Page Media'" ;break;}
    DEFAULT :  { 
	SEND_COMMAND TPS[indexTP],"'@PPN-[paneRight]_media_ListRooms;Main Page Media'" // show select Room page
	SEND_COMMAND TPS[indexTP],"'@PPN-media_names_roomNONE;Main Page Media'"
    }}
}

DEFINE_FUNCTION checkPower_1fl_Kitchen(integer indexTP)
{
    if(powerStateRoom[5]==1)
    {
    checkSource_1fl_Kitchen(indexTP)// 
    }else{
    SEND_COMMAND TPS[indexTP],"'@PPN-[paneLeft]_Source_1fl_Kitchen;Main Page Media'"// show popap select source in 
    }
}

DEFINE_FUNCTION checkPower_1fl_Cinema(integer indexTP)
{
    if(powerStateRoom[4]==1)
    {
    checkSource_1fl_Cinema(indexTP)// 
    }else{
    SEND_COMMAND TPS[indexTP],"'@PPN-[paneLeft]_Source_1fl_Cinema;Main Page Media'"// show popap select source in 
    }
}

DEFINE_FUNCTION checkPower_1fl_Kabinet(integer indexTP)
{
    if(powerStateRoom[6]==1)
    {
    checkSource_1fl_Kabinet(indexTP)// 
    }else{
    SEND_COMMAND TPS[indexTP],"'@PPN-[paneLeft]_Source_1f_Kabinet;Main Page Media'"// show popap select source in 
    }
}

DEFINE_FUNCTION checkPower_2fl_Bedroom(integer indexTP)
{
    if(powerStateRoom[1]==1)
    {
    checkSource_2fl_Bedroom(indexTP)// 
    }else{
    SEND_COMMAND TPS[indexTP],"'@PPN-[paneLeft]_Source_2f_Bedroom;Main Page Media'"// show popap select source in 
    }
}

DEFINE_FUNCTION checkPower_2fl_Kinder(integer indexTP)
{
    if(powerStateRoom[2]==1)
    {
    checkSource_2fl_Kinder(indexTP)// 
    }else{
    SEND_COMMAND TPS[indexTP],"'@PPN-[paneLeft]_Source_2f_Kinder;Main Page Media'"// show popap select source in 
    }
}

DEFINE_FUNCTION checkPower_2fl_Guest(integer indexTP)
{
    if(powerStateRoom[3]==1)
    {
    checkSource_2fl_Guest(indexTP)// 
    }else{
    SEND_COMMAND TPS[indexTP],"'@PPN-[paneLeft]_Source_2f_Guest;Main Page Media'"// show popap select source in 
    }
}


DEFINE_FUNCTION checkSource_1fl_Kitchen(integer indexTP)
{

}

DEFINE_FUNCTION checkSource_1fl_Cinema(integer indexTP)
{

}

DEFINE_FUNCTION checkSource_1fl_Kabinet(integer indexTP)
{

}

DEFINE_FUNCTION checkSource_2fl_Bedroom(integer indexTP)
{
    switch(selectedSourceInRoom[1])
    {
    CASE 1:    { 
    SEND_COMMAND TPS[indexTP],"'@PPN-[source]_2fl_Bedroom_Loewe;Main Page Media'";break;}		// LOEWE TV
    CASE 2:    { SEND_COMMAND TPS[indexTP],"'@PPN-[source]_2fl_Bedroom_AuraHD;Main Page Media'";break;}	// AURA HD
    }
    SEND_COMMAND TPS[indexTP],"'@PPN-[header]Bedroom;Main Page Media'"
    SEND_COMMAND TPS[indexTP],"'@PPN-[header]Bedroom;Main Page Air'"
    SEND_COMMAND TPS[indexTP],"'@PPN-[header]Bedroom;Main Page Floor'"
    SEND_COMMAND TPS[indexTP],"'@PPN-[header]Bedroom;Main Page Light'"
    SEND_COMMAND TPS[indexTP],"'@PPN-[header]Bedroom;Main Page Radiator'"
    SEND_COMMAND TPS[indexTP],"'@PPN-[header]Bedroom;Main Page Window'"
}

DEFINE_FUNCTION checkSource_2fl_Kinder(integer indexTP)
{

}

DEFINE_FUNCTION checkSource_2fl_Guest(integer indexTP)
{

}


DEFINE_START


DEFINE_EVENT

BUTTON_EVENT[TPS,navigat_selectSource[1]]	// press button MEDIA
{
    PUSH:{
    integer index;index = get_last(TPS);checkRoom(index)
}}

BUTTON_EVENT[TPS,navigat_selectRoom_media]	// press button select room
{
    PUSH:{
    integer index,index2;index = get_last(TPS);index2=get_last(navigat_selectRoom_media)
    savedSelectedRoom[index]=index2
    checkRoom(index)
}}

BUTTON_EVENT[TPS,media_checkSources]	// press button show sources
{
    PUSH:{
    integer index,index2;index = get_last(TPS);index2=get_last(media_checkSources)
    select
    {
	active(savedSelectedRoom[index] == 1):
	{ SEND_COMMAND TPS[index],"'@PPN-[paneLeft]_Source_2f_Bedroom;Main Page Media'" }
	active(savedSelectedRoom[index] == 2):
	{ SEND_COMMAND TPS[index],"'@PPN-[paneLeft]_Source_2f_Kinder;Main Page Media'" }
	active(savedSelectedRoom[index] == 3):
	{ SEND_COMMAND TPS[index],"'@PPN-[paneLeft]_Source_2f_Guest;Main Page Media'" }
	active(savedSelectedRoom[index] == 4):
	{ SEND_COMMAND TPS[index],"'@PPN-[paneLeft]_Source_1fl_Cinema;Main Page Media'" }
	active(savedSelectedRoom[index] == 5):
	{ SEND_COMMAND TPS[index],"'@PPN-[paneLeft]_Source_1fl_Kitchen;Main Page Media'" }
	active(savedSelectedRoom[index] == 6):
	{ SEND_COMMAND TPS[index],"'@PPN-[paneLeft]_Source_1f_Kabinet;Main Page Media'" }
    }
//    savedSelectedRoom[index]=index2
//    checkRoom(index)
}}

DEFINE_PROGRAM


wait 10
{
    [TPS,media_RoomInfoPower[1]] = powerStateRoom[1]
    [TPS,media_RoomInfoPower[2]] = powerStateRoom[2]
    [TPS,media_RoomInfoPower[3]] = powerStateRoom[3]
    [TPS,media_RoomInfoPower[4]] = powerStateRoom[4]
    [TPS,media_RoomInfoPower[5]] = powerStateRoom[5]
    [TPS,media_RoomInfoPower[6]] = powerStateRoom[6]
    
    
    IF(powerStateRoom[1] == 0)	// Bedroom
    {
    SEND_COMMAND TPS,"'@PPF-[header]Bedroom;Main Page Media'"
    SEND_COMMAND TPS,"'@PPF-[header]Bedroom;Main Page Air'"
    SEND_COMMAND TPS,"'@PPF-[header]Bedroom;Main Page Floor'"
    SEND_COMMAND TPS,"'@PPF-[header]Bedroom;Main Page Light'"
    SEND_COMMAND TPS,"'@PPF-[header]Bedroom;Main Page Radiator'"
    SEND_COMMAND TPS,"'@PPF-[header]Bedroom;Main Page Window'"
    
    SEND_COMMAND TPS,"'^SHO-',itoa(media_RoomInfoSource[1]),',0'"
    } ELSE {SEND_COMMAND TPS,"'^SHO-',itoa(media_RoomInfoSource[1]),',1'"}
    IF(powerStateRoom[2] == 0)	// Kinder
    {
    SEND_COMMAND TPS,"'@PPF-[header]kinder;Main Page Media'"
    SEND_COMMAND TPS,"'@PPF-[header]kinder;Main Page Air'"
    SEND_COMMAND TPS,"'@PPF-[header]kinder;Main Page Floor'"
    SEND_COMMAND TPS,"'@PPF-[header]kinder;Main Page Light'"
    SEND_COMMAND TPS,"'@PPF-[header]kinder;Main Page Radiator'"
    SEND_COMMAND TPS,"'@PPF-[header]kinder;Main Page Window'"
    
    SEND_COMMAND TPS,"'^SHO-',itoa(media_RoomInfoSource[2]),',0'"
    }ELSE {SEND_COMMAND TPS,"'^SHO-',itoa(media_RoomInfoSource[2]),',1'"}
        IF(powerStateRoom[3] == 0)	// Guest
    {
    SEND_COMMAND TPS,"'@PPF-[header]Guest;Main Page Media'"
    SEND_COMMAND TPS,"'@PPF-[header]Guest;Main Page Air'"
    SEND_COMMAND TPS,"'@PPF-[header]Guest;Main Page Floor'"
    SEND_COMMAND TPS,"'@PPF-[header]Guest;Main Page Light'"
    SEND_COMMAND TPS,"'@PPF-[header]Guest;Main Page Radiator'"
    SEND_COMMAND TPS,"'@PPF-[header]Guest;Main Page Window'"
    
    SEND_COMMAND TPS,"'^SHO-',itoa(media_RoomInfoSource[3]),',0'"
    }ELSE {SEND_COMMAND TPS,"'^SHO-',itoa(media_RoomInfoSource[3]),',1'"}
        IF(powerStateRoom[4] == 0)	// Cinema
    {
    SEND_COMMAND TPS,"'@PPF-[header]Cinema;Main Page Media'"
    SEND_COMMAND TPS,"'@PPF-[header]Cinema;Main Page Air'"
    SEND_COMMAND TPS,"'@PPF-[header]Cinema;Main Page Floor'"
    SEND_COMMAND TPS,"'@PPF-[header]Cinema;Main Page Light'"
    SEND_COMMAND TPS,"'@PPF-[header]Cinema;Main Page Radiator'"
    SEND_COMMAND TPS,"'@PPF-[header]Cinema;Main Page Window'"
    
    SEND_COMMAND TPS,"'^SHO-',itoa(media_RoomInfoSource[4]),',0'"
    }ELSE {SEND_COMMAND TPS,"'^SHO-',itoa(media_RoomInfoSource[4]),',1'"}
        IF(powerStateRoom[5] == 0)	// kitchen
    {
    SEND_COMMAND TPS,"'@PPF-[header]Kitchen;Main Page Media'"
    SEND_COMMAND TPS,"'@PPF-[header]Kitchen;Main Page Air'"
    SEND_COMMAND TPS,"'@PPF-[header]Kitchen;Main Page Floor'"
    SEND_COMMAND TPS,"'@PPF-[header]Kitchen;Main Page Light'"
    SEND_COMMAND TPS,"'@PPF-[header]Kitchen;Main Page Radiator'"
    SEND_COMMAND TPS,"'@PPF-[header]Kitchen;Main Page Window'"
    
    SEND_COMMAND TPS,"'^SHO-',itoa(media_RoomInfoSource[5]),',0'"
    }ELSE {SEND_COMMAND TPS,"'^SHO-',itoa(media_RoomInfoSource[5]),',1'"}
        IF(powerStateRoom[6] == 0)	// Kabinet
    {
    SEND_COMMAND TPS,"'@PPF-[header]kabinet;Main Page Media'"
    SEND_COMMAND TPS,"'@PPF-[header]kabinet;Main Page Air'"
    SEND_COMMAND TPS,"'@PPF-[header]kabinet;Main Page Floor'"
    SEND_COMMAND TPS,"'@PPF-[header]kabinet;Main Page Light'"
    SEND_COMMAND TPS,"'@PPF-[header]kabinet;Main Page Radiator'"
    SEND_COMMAND TPS,"'@PPF-[header]kabinet;Main Page Window'"
    
    SEND_COMMAND TPS,"'^SHO-',itoa(media_RoomInfoSource[6]),',0'"
    }ELSE {SEND_COMMAND TPS,"'^SHO-',itoa(media_RoomInfoSource[6]),',1'"}
}

