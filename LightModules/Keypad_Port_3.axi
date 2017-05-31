PROGRAM_NAME='Keypad_Port_3' // ���������

DEFINE_CONSTANT 

INTEGER BLANK_CHANNEL = 5050


DEFINE_VARIABLE

VOLATILE CHAR DEVICE_IP[] = '192.168.1.2' // "2" IP ����������� Lutron QS

VOLATILE INTEGER PANEL01_BUTTONS[] =   // 1 ����\��������\��� �����
{                              
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	106,  //       
	107,  //       
	108,  //       
	109,  //       
	110,  //       
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	118, // Lower  
	119  // Raise  
}                     
                      
VOLATILE INTEGER PANEL02_BUTTONS[] =   // 02 1 ����\������� 1 �����\�������  
{                              
	121,  //       
	BLANK_CHANNEL, //        
	123,  //       
	BLANK_CHANNEL, //        
	125,  //       
	126,  //       
	127,  //       
	128,  //       
	129,  //       
	130,  //       
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	138, // Lower  
	139  // Raise  
}                     
                      
VOLATILE INTEGER PANEL03_BUTTONS[] =   // 03 1 ����\�����\����� ���� 
{                              
	141,  		// 1      
	BLANK_CHANNEL, 	// 2      
	143,  		// 3      
	BLANK_CHANNEL, 	// 4       
	145,  		// 5      
	146,  		// 6      
	147,  		// 7      
	148,  		// 8      
	149,  		// 9      
	150,  		// 10      
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	158, // Lower  
	159  // Raise  
}                     
                      
VOLATILE INTEGER PANEL04_BUTTONS[] =   // 04 1 ����\�������\�������
{                              
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	166,  //       
	167,  //       
	168,  //       
	169,  //       
	170,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	178, // Lower  
	179  // Raise  
}                     
                      
VOLATILE INTEGER PANEL05_BUTTONS[] =   // 05 1 ����\�����\����� 
{                              
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	186,  //       
	187,  //       
	188,  //       
	189,  //       
	190,  //       
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	198, // Lower  
	199  // Raise  
}                     
                      
VOLATILE INTEGER PANEL06_BUTTONS[] =   // 06 1 ����\��������\�������� 2
{                              
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	206,  //       
	207,  //       
	208,  //       
	209,  //       
	210,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	218, // Lower  
	219  // Raise  
}                     
                      
VOLATILE INTEGER PANEL07_BUTTONS[] =   // 07 1 ����\�������\������� 1 ����  
{                              
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	226,  //       
	227,  //       
	228,  //       
	229,  //       
	230,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	238, // Lower  
	239  // Raise  
}                     
                      
VOLATILE INTEGER PANEL08_BUTTONS[] =   // 08 2 ���� \�������� ������� ���� 
{                              
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	246,  //       
	247,  //       
	248,  //       
	249,  //       
	250,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	258, // Lower  
	259  // Raise  
}                     
                      
VOLATILE INTEGER PANEL09_BUTTONS[] =   // 09 2 ����\�������� �������\������� ������
{                              
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	266,  //       
	267,  //       
	268,  //       
	269,  //       
	270,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	278, // Lower  
	279  // Raise  
}                     
                      
VOLATILE INTEGER PANEL10_BUTTONS[] =   // 10 2 ����\�������� �������\������� �����  
{                              
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	286,  //       
	287,  //       
	288,  //       
	289,  //       
	290,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	298, // Lower  
	299  // Raise  
}                     
                      
VOLATILE INTEGER PANEL11_BUTTONS[] =   // 11 2 ����\��������� �������\������ �� ������� 
{                              
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	306,  //       
	307,  //       
	308,  //       
	309,  //       
	310,  //       
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	318, // Lower  
	319  // Raise  
} 

VOLATILE INTEGER PANEL12_BUTTONS[] =   // 12 2 ����\��������� �������\����� �� �������
{                              
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	326,  //       
	327,  //       
	328,  //       
	329,  //       
	330,  //       
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	338, // Lower  
	339  // Raise  
} 

VOLATILE INTEGER PANEL13_BUTTONS[] =   // 13 2 ����\��� ������ �������\������ 
{                              
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	346,  //       
	347,  //       
	348,  //       
	349,  //       
	350,  //       
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	358, // Lower  
	359  // Raise  
} 

VOLATILE INTEGER PANEL14_BUTTONS[] =   // 14 2 ����\������ ����� ��� ������ 
{                              
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	366,  //       
	367,  //       
	368,  //       
	369,  //       
	370,  //       
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	378, // Lower  
	379  // Raise  
} 

VOLATILE INTEGER PANEL15_BUTTONS[] =   // 15 2 ����\�������\������� �������\��� ����� 
{                              
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	386,  //       
	387,  //       
	388,  //       
	389,  //       
	390,  //       
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	398, // Lower  
	399  // Raise  
} 

VOLATILE INTEGER PANEL16_BUTTONS[] =   // 16 2 ����\�������\������� ����� �������
{                              
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	406,  //       
	407,  //       
	408,  //       
	409,  //       
	410,  //       
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	418, // Lower  
	419  // Raise  
} 

VOLATILE INTEGER PANEL17_BUTTONS[] =   // 17 2 ����\������� ������ ������� 
{                              
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	BLANK_CHANNEL, //        
	BLANK_CHANNEL,  //       
	426,  //       
	427,  //       
	428,  //       
	429,  //       
	430,  //       
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	BLANK_CHANNEL,           
	438, // Lower  
	439  // Raise  
}     
                
VOLATILE INTEGER PANEL18_BUTTONS[] =   //  18 Virtual Admin Panel
{                              
	450,  	// 1  ����� ���      
	451,  	// 2  ����� ����
	452,  	// 3  ���� 1��
	453,  	// 4  ���� 2�� 
	454	// 5  ���� ���            
}

VOLATILE INTEGER PANEL19_BUTTONS[] =   //  19 Virtual Kitchen 1fl
{                              
	460,	  // 1 ��������       
	461,	  // 2 ��� ������ 
	462	  // 3 ���� ���            
}

VOLATILE INTEGER PANEL20_BUTTONS[] =   //  20 Virtual Cinema 1fl
{                              
	470,	  // 1 ����������� ��������        
	471,	  // 2 ��� ������ 1 
	472,	  // 3 ��� ������ 2    
	473,	  // 4 �������� ������  
	474,	  // 5 �������� � �������      
	475,	  // 6 ��������� ������ 
	476	  // 7 ���� ���            
}

VOLATILE INTEGER PANEL21_BUTTONS[] =   //  21 Virtual Entrance 1fl
{                              
	480,	  // 1 �������� � �������       
	481	  // 2 ���� ���          
}

VOLATILE INTEGER PANEL22_BUTTONS[] =   //  22 Virtual Kabinet 1fl
{                              
	490,	  // 1 ����       
	491,	  // 2 �������� 1 
	492,	  // 3 �������� 2    
	493,	  // 4 �������� ���������  
	494	  // 5 ���� ���                 
}

VOLATILE INTEGER PANEL23_BUTTONS[] =   //  23 Virtual Laundry 1fl
{                              
	500,	  // 1 �������� � �������       
	501	  // 2 ��������� ���           
}

VOLATILE INTEGER PANEL24_BUTTONS[] =   //  24 Virtual Garage 1fl
{                              
	510,	  // 1  �������� � �������      
	511	  // 2  ���� ���          
}

VOLATILE INTEGER PANEL25_BUTTONS[] =   //  25 Virtual Lavatory 1fl
{                              
	520,	  // 1 �������� ����       
	521,	  // 2 ������� 
	522,	  // 3 ����������    
	523	  // 4 ���� ���           
}

VOLATILE INTEGER PANEL26_BUTTONS[] =   //  26 Virtual Stairs 1fl
{                              
	530,	  // 1 ��������        
	531,	  // 2 ������ 
	532	  // 3 ���� ���              
}

VOLATILE INTEGER PANEL27_BUTTONS[] =   //  27 Virtual Wardrobe 2fl
{                              
	540,	  // 1 ��������        
	541	  // 2 ���� ���           
}

VOLATILE INTEGER PANEL28_BUTTONS[] =   //  28 Virtual Guestroom 2fl
{                              
	550,	  // 1  �������� �����      
	551,	  // 2  �������� ������
	552	  // 3  ���� ���              
}

VOLATILE INTEGER PANEL29_BUTTONS[] =   //  29 Virtual Corridor 2fl
{                              
	560,	  // 1  �������� � �������      
	561,	  // 2  ���� ���    
	562	  // 3  ���
}

VOLATILE INTEGER PANEL30_BUTTONS[] =   //  30 Virtual Bedroom 2fl
{                              
	570,	  // 1 ��������       
	571	  // 2 ���� ���            
}

VOLATILE INTEGER PANEL31_BUTTONS[] =   //  31 Virtual Owner Bath 2fl
{                              
	580,	  // 1 �������� ����       
	581,	  // 2 ������� 
	582,	  // 3 ���������� � ��������    
	583,	  // 4 ���������� � �������  
	584	  // 5 ���� ���      	           
}

VOLATILE INTEGER PANEL32_BUTTONS[] =   //  32 Virtual Kinder 2fl
{                              
	590,	  // 1 ��������       
	591	  // 2 ���� ��� 	           
}

VOLATILE INTEGER PANEL33_BUTTONS[] =   //  33 Virtual HallBeforeKinderBath 2fl
{                              
	600,	  // 1 �������� 	
	601	  // 2 ���� ���           
}

VOLATILE INTEGER PANEL34_BUTTONS[] =   //  34 Virtual Kinder Bath 2fl
{                              
	610,	  // 1 ��������       
	611,	  // 2 ���������� 
	612	  // 3 ���� ���              
}

VOLATILE INTEGER PANEL35_BUTTONS[] =   //  35 Virtual Corridor 1fl
{                              
	620,	  // 1 ��������� ����� ����       
	621,	  // 2 �������� � ������� 
	622	  // 3 ���� ���              
}

VOLATILE INTEGER PANEL36_BUTTONS[] =   //  36 Virtual VestibuleBeforeOwnerBath 2fl
{                              
	630,	  // 1 ��������       
	631	  // 2 ���� ���           
}

VOLATILE INTEGER PANEL37_BUTTONS[] =   //  37 Virtual Garden 1fl
{                              
	640,	  // 1 ��������� ���������       
	641	  // 2 ���� ���           
}


                     
                      
VOLATILE CHAR HW_KEYPADS[37][3] =
{
	'27', 	// 01 1 ����\��������\��� �����
	'34', 	// 02 1 ����\������� 1 �����\�������
	'35', 	// 03 1 ����\�����\����� ���� 
	'36', 	// 04 1 ����\�������\�������
	'37', 	// 05 1 ����\�����\����� 
	'90', 	// 06 1 ����\��������\�������� 2
	'38', 	// 07 1 ����\�������\������� 1 ���� 
	'39', 	// 08 2 ���� \�������� ������� ����
	'40', 	// 09 2 ����\�������� �������\������� ������
	'85', 	// 10 2 ����\�������� �������\������� ����� 
	'42', 	// 11 2 ����\��������� �������\������ �� �������                                  
	'43', 	// 12 2 ����\��������� �������\����� �� �������
	'41', 	// 13 2 ����\��� ������ �������\������                                  
	'44', 	// 14 2 ����\������ ����� ��� ������
	'45', 	// 15 2 ����\�������\������� �������\��� �����                                 
	'89', 	// 16 2 ����\�������\������� ����� �������
	'46',  	// 17 2 ����\������� ������ �������
	'141', 	// 18 Virtual\Admin Panel
	'142', 	// 19 Virtual\Admin Kitchen 1fl
	'143', 	// 20 Virtual\Admin Cinema 1fl
	'144', 	// 21 Virtual\Admin Entrance 1fl
	'145', 	// 22 Virtual\Admin Kabinet 1fl
	'146', 	// 23 Virtual\Admin Laundry 1fl 
	'147', 	// 24 Virtual\Admin Garage 1fl
	'148', 	// 25 Virtual\Admin Lavatory 1fl
	'149', 	// 26 Virtual\Admin Stairs 1fl
	'150', 	// 27 Virtual\Admin Wardrobe 2fl
	'151', 	// 28 Virtual\Admin Guestroom 2fl
	'152', 	// 29 Virtual\Admin Corridor 2fl
	'153', 	// 30 Virtual\Admin Bedroom 2fl
	'154', 	// 31 Virtual\Admin Owner Bath 2fl
	'155', 	// 32 Virtual\Admin Kinder 2fl
	'156', 	// 33 Virtual\Admin HallBeforeKinderBath 2fl
	'157', 	// 34 Virtual\Admin Kinder Bath 2fl
	'158', 	// 35 Virtual\Admin Corridor 1fl
	'159', 	// 36 Virtual\Admin VestibuleBeforeOwnerBath 2fl
	'160' 	// 37 Virtual\Admin Garden 1fl
}   



























            







