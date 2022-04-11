;

;
;**********************MASK18:磨削参数_内:panel_18:;**********************
//M(Mask18/$85020/"panel_18_4_chs.png"/)

	DEF DIAMETER_ADJ=(R///$85174,$85174,$85043,/WR2,ac4/"panel_18_29_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[5]"/360,330,202/460,330,60//"UserGuide/section_1.html","S1D2");
	DEF PianDaoTiaoZheng=(R/-100,100//$85175,$85175,$85043,/WR2/"panel_18_30_chs.png"/"/NC/_N_NC_GD2_ACX/TOOL_SET[43]"/360,350,202/460,350,60/,9/"UserGuide/section_1.html","S1D3");

	DEF VAR1=(I/*0=$85135,1=$85136,2=$85137,3=$85138,4=$85139/1/$85134,,,/WR4//"/NC/_N_NC_GD2_ACX/GRIND[1]"/0,0,0/10,10,60/);

	DEF X_IM=(R///$85118,$85118,,/WR1,ac4//"$AA_IM[X]"/10,10,20/30,10,60/3);
	DEF Z_IM=(R///$85119,$85119,,/WR1,ac4//"$AA_IM[Z]"/10,30,20/30,30,60/3);
	DEF X_DRF=(R///$85116,$85116,,/WR1,ac4//"$AC_DRF[X]"/120,10,50/170,10,60/7);
	DEF Z_DRF=(R///$85117,$85117,,/WR1,ac4//"$AC_DRF[Z]"/120,30,50/170,30,60/7);

	DEF GRINDING_TYPE=(I/*0=$85900,1=$85901//$85902,$85902,,/WR4/"panel_18_31_chs.png"/"/NC/_N_NC_GD2_ACX/RING[1]"/10,60,110/110,60,60//"UserGuide/section_1.html","S1D31");
	DEF RING_DISPLAY=(I////WR4//"/NC/_N_NC_GD2_ACX/RING[50]"/0,0,0/0,0,0/);

	DEF Z_SOFTENDP=(R////WR4//"$AA_SOFTENDP[Z]"/0,0,0/0,0,0/);

	DEF PIECE_VOLUME=(I/*0=$85166,1=$85167//$85170,$85170,,/WR2,ac4/"panel_18_17_chs.png"/"/NC/_N_NC_GD2_ACX/INI[27]"/360,10,70/460,10,80//"UserGuide/section_1.html","S1D1");
	DEF SCREW_R=(I/*0=$85124,1=$85125//$85103,$85103,,/WR2,ac4/"panel_18_4_chs.png"/"/NC/_N_NC_GD2_ACX/INI[1]"/360,40,70/460,40,60//"UserGuide/section_1.html","S1D8");
	DEF VAR6=(I/0,50//$85102,$85102,$85051,/WR2,ac4/"panel_18_5_chs.png"/"/NC/_N_NC_GD2_ACX/WORK[1]"/360,60,202/460,60,60//"UserGuide/section_1.html","S1D9");
	DEF VAR7=(R3/0,50//$85104,$85104,$85043,/WR2,ac4/"panel_18_6_chs.png"/"/NC/_N_NC_GD2_ACX/INI[5]"/360,80,202/460,80,60//"UserGuide/section_1.html","S1D4");
	DEF VAR8=(R3/-2000,2000//$85108,$85108,,/WR2,ac4/"panel_18_7_chs.png"/"/NC/_N_NC_GD2_ACX/INI[2]"/360,100,202/460,100,60/6/"UserGuide/section_1.html","S1D10");
	DEF VAR9=(R3/-2000,2000//$85109,$85109,,/WR2,ac4/"panel_18_8_chs.png"/"/NC/_N_NC_GD2_ACX/INI[3]"/360,120,202/460,120,60/6/"UserGuide/section_1.html","S1D11");
	DEF VAR10=(R/-500,500//$85165,$85165,,/WR2,ac4/"panel_18_9_chs.png"/"/NC/_N_NC_GD2_ACX/INI[11]"/360,150,202/460,150,60/6/"UserGuide/section_1.html","S1D28");
	DEF X_QUIT=(R/-500,500//$85106,$85106,,/WR2,ac4/"panel_18_25_chs.png"/"/NC/_N_NC_GD2_ACX/INI[24]"/360,170,202/460,170,60/6/"UserGuide/section_1.html","S1D14");
	DEF PITCH_COM=(R/-500,500//$85105,$85105,$85043,/WR2,ac4/"panel_18_26_chs.png"/"/NC/_N_NC_GD2_ACX/INI[25]"/360,190,202/460,190,60//"UserGuide/section_1.html","S1D15");
	DEF C_INIT=(R/0,360//$85100,$85100,$85042,/WR2,ac4/"panel_18_22_chs.png"/"/NC/_N_NC_GD2_ACX/INI[28]"/360,220,202/460,220,60//"UserGuide/section_1.html","S1D29");
	DEF Z_INIT=(R/-2000,2000//$85101,$85101,,/WR2,ac4/"panel_18_23_chs.png"/"/NC/_N_NC_GD2_ACX/INI[29]"/360,240,202/460,240,60/6/"UserGuide/section_1.html","S1D30");

	DEF ZUIDU=(R4/-10,10//$85159,$85159,$85043,/WR2,ac4/"panel_18_12_chs.png"/"/NC/_N_NC_GD2_ACX/INI[15]"/360,270,202/460,270,60//"UserGuide/section_1.html","S1D16");
	DEF ZUIDUBUCHANG=(R4/-1,1/0/$85113,$85113,$85043,/WR4/"panel_18_12_chs.png"/"/NC/_N_NC_GD2_ACX/INI[142]"/360,270,202/460,270,60//"UserGuide/section_1.html","S1D17");
	DEF para_switch_1=(I/*0=$85058,1=$85059//$85063,$85063,,/WR2,ac4/"panel_18_12_chs.png"/"/NC/_N_NC_GD2_ACX/PARA_LOCK_SWITCH[20]"/0,0,0/550,270,18/);参数锁定开关

	DEF VAR24=(R/-90,90//$85164,$85164,,$85042/WR2,ac4/"panel_18_19_chs.png"/"/NC/_N_NC_GD2_ACX/INI[18]"/360,290,202/460,290,110/);

	DEF INITANG=(R///$85176,$85176,$85042,/WR1,ac4//"/NC/_N_NC_GD2_ACX/TOOL_SET[5]"/10,310,210/120,310,60//"UserGuide/section_1.html","S1D24");
	DEF VAR19=(R///$85158,$85158,,/WR1,ac4//"/NC/_N_NC_GD2_ACX/PROCESS[5]"/10,330,210/120,330,60//"UserGuide/section_1.html","S1D25");
	DEF WHELL_POS_INI=(R///$85169,$85169,,/WR1,ac4/"panel_18_27_chs.png"/"/NC/_N_NC_GD2_ACX/PROCESS[14]"/10,350,210/120,350,60/6/"UserGuide/section_1.html","S1D26");
	DEF SHOUJIAN=(I/*0=$85087,1=$85088//$85089,$85039,,/WR2,ac4/"panel_18_27_chs.png"/"/NC/_N_NC_GD2_ACX/TOOL_SET[58]"/190,350,20/210,350,70//"UserGuide/section_1.html","S1D27");
	DEF para_switch_2=(I/*0=$85058,1=$85059//$85063,$85063,,/WR2,ac4/"panel_18_27_chs.png"/"/NC/_N_NC_GD2_ACX/PARA_LOCK_SWITCH[21]"/0,0,0/300,350,18/);参数锁定开关
	DEF TUICHUMETHOD=(I/*0=$85127,1=$85128//$85126,,,/WR2,ac4/"panel_18_27_chs.png"/"/NC/_N_NC_GD2_ACX/INI[85]"/190,330,20/210,330,70/);
	DEF para_switch_3=(I/*0=$85058,1=$85059//$85063,$85063,,/WR2,ac4/"panel_18_27_chs.png"/"/NC/_N_NC_GD2_ACX/PARA_LOCK_SWITCH[22]"/0,0,0/300,330,18/);参数锁定开关

	DEF VAR45=(I////WR4//"/NC/_N_NC_GD2_ACX/PROCESS[16]"/0,0,0/0,0,0);

	DEF QCHECK=(I////WR4//"/Plc/Q113.5"/0,0,0/0,0,0);
	
	HS1=($85001,ac7,se3);
	HS2=($85002,ac7,se1);
	HS3=($85003,ac7,se1);
	HS4=($85010,ac7,se1);

	;
	HS5=($85012,ac7,se1);
	HS6=($85017,ac7,se1);
	HS7=($85011,ac7,se1);
	;

	HS8=($85005,ac7,se1);

	VS1=("")

	PRESS(HS1)
		LM("MASK18","grind.com")
	END_PRESS

	PRESS(HS2)
		IF VAR45.VAL==0;
			IF PIECE_VOLUME.VAL==0;
				LM("MASK29","process.com")
			ELSE
				LM("MASK2","process.com")
			ENDIF
		ELSE
			IF PIECE_VOLUME.VAL==0;
				LM("MASK30","process.com")
			ELSE
				LM("MASK20","process.com")
			ENDIF
		ENDIF
	END_PRESS

	PRESS(HS3)
		LM("MASK3","dress.com")
	END_PRESS

	PRESS(HS4)
		LM("MASK21","auto.com")
	END_PRESS

	PRESS(HS5)
		LM("MASK24","centerwaiyuan.com")
	END_PRESS
	
	PRESS(HS6)
		LM("MASK25","centerduanmian.com")
	END_PRESS
	
	PRESS(HS7)
		LM("MASK23","centermain.com")
	END_PRESS
	
	PRESS(HS8)
		EXIT
	END_PRESS

	CHANGE(VAR1)
		IF VAR1.VAL<>1
			LM("MASK1","grind.com")
		ENDIF
	END_CHANGE

	CHANGE(VAR6)
		call("UP3")
	END_CHANGE

	CHANGE(VAR7)
		call("UP3")
	END_CHANGE

	CHANGE(WORK_MID_DIA)
		call("UP3")
	END_CHANGE

	CHANGE(VAR23)
		call("UP2")
		call("UP3")
	END_CHANGE
	
	CHANGE(QCHECK)
		call("UP2")
	END_CHANGE

	CHANGE(RING_DISPLAY)
		IF RING_DISPLAY.VAL==0
			GRINDING_TYPE.WR=4
		ELSE
			GRINDING_TYPE.WR=2
		ENDIF
	END_CHANGE

	CHANGE(para_switch_1)
		IF para_switch_1.VAL==0
			ZUIDU.WR=2
		ELSE
			ZUIDU.WR=1
		ENDIF
	END_CHANGE

	CHANGE(para_switch_2)
		IF para_switch_2.VAL==0
			SHOUJIAN.WR=2
		ELSE
			SHOUJIAN.WR=1
		ENDIF
	END_CHANGE

	CHANGE(para_switch_3)
		IF para_switch_3.VAL==0
			TUICHUMETHOD.WR=2
		ELSE
			TUICHUMETHOD.WR=1
		ENDIF
	END_CHANGE

	CHANGE(GRINDING_TYPE)
		IF GRINDING_TYPE.VAL==1
			LM("MASK51","grind.com")
		ENDIF
	END_CHANGE

	CHANGE(VAR9)
		IF (Z_INIT.VAL<VAR9.VAL+30) AND (VAR9.VAL+30<=Z_SOFTENDP.VAL)
			Z_INIT.VAL=VAR9.VAL+30
		ELSE
			IF (Z_INIT.VAL<VAR9.VAL+30) AND (VAR9.VAL+30>Z_SOFTENDP.VAL)
				Z_INIT.VAL=Z_SOFTENDP.VAL
			ELSE
				IF (Z_INIT.VAL>=VAR9.VAL+30) AND (Z_INIT.VAL>Z_SOFTENDP.VAL)
					Z_INIT.VAL=Z_SOFTENDP.VAL
				ELSE
					IF (Z_INIT.VAL>=VAR9.VAL+30) AND (Z_INIT.VAL<=Z_SOFTENDP.VAL)
						Z_INIT.VAL=Z_INIT.VAL
					ENDIF
				ENDIF
			ENDIF
		ENDIF
	END_CHANGE

	CHANGE(Z_INIT)
		IF (Z_INIT.VAL<VAR9.VAL+30) AND (VAR9.VAL+30<=Z_SOFTENDP.VAL)
			Z_INIT.VAL=VAR9.VAL+30
		ELSE
			IF (Z_INIT.VAL<VAR9.VAL+30) AND (VAR9.VAL+30>Z_SOFTENDP.VAL)
				Z_INIT.VAL=Z_SOFTENDP.VAL
			ELSE
				IF (Z_INIT.VAL>=VAR9.VAL+30) AND (Z_INIT.VAL>Z_SOFTENDP.VAL)
					Z_INIT.VAL=Z_SOFTENDP.VAL
				ELSE
					IF (Z_INIT.VAL>=VAR9.VAL+30) AND (Z_INIT.VAL<=Z_SOFTENDP.VAL)
						Z_INIT.VAL=Z_INIT.VAL
					ENDIF
				ENDIF
			ENDIF
		ENDIF
	END_CHANGE

	SUB(UP2)
		IF QCHECK.VAL==1
			SCREW_R.WR=1
			VAR6.WR=1
			VAR7.WR=1
			VAR8.WR=1
			VAR9.WR=1
			VAR10.WR=1
			X_QUIT.WR=1
			PITCH_COM.WR=1
			PIECE_VOLUME.WR=1
			C_INIT.WR=1
			Z_INIT.WR=1
			VAR23.WR=1
		ELSE
			SCREW_R.WR=2
			VAR6.WR=2
			VAR7.WR=2
			VAR8.WR=2
			VAR9.WR=2
			VAR10.WR=2
			X_QUIT.WR=2
			PITCH_COM.WR=2
			PIECE_VOLUME.WR=2
			C_INIT.WR=2
			Z_INIT.WR=2
			VAR23.WR=2
		ENDIF
	END_SUB

	SUB(UP3)

	END_SUB

//END
;

;**********************MASK51:环形槽:panel_51:**********************
//M(Mask51/$85025/"panel_51_0_chs.png"/)

	DEF X_IM=(R///$85118,$85118,,/WR1,ac4//"$AA_IM[X]"/10,10,20/30,10,60/3);
	DEF Z_IM=(R///$85119,$85119,,/WR1,ac4//"$AA_IM[Z]"/10,30,20/30,30,60/3);
	DEF X_DRF=(R///$85116,$85116,,/WR1,ac4//"$AC_DRF[X]"/120,10,50/170,10,60/7);
	DEF Z_DRF=(R///$85117,$85117,,/WR1,ac4//"$AC_DRF[Z]"/120,30,50/170,30,60/7);

	DEF PIECE_VOLUME=(I/*0=$85166,1=$85167/1/$85170,$85170,,/WR1,ac4//"/NC/_N_NC_GD2_ACX/INI[27]"/10,60,110/110,60,80/);

	DEF SLOT_AMOUNT=(I///$85903,$85903,,/WR1,ac4//"/NC/_N_NC_GD2_ACX/RING[2]"/10,90,110/110,90,60/);
	
	DEF SLOT_NEED=(I///$85906,$85906,,/WR1,ac4//"/NC/_N_NC_GD2_ACX/RING[5]"/10,110,110/110,110,60/);
	DEF SLOT_CURRENT=(I///$85907,$85907,,/WR1,ac4//"/NC/_N_NC_GD2_ACX/RING[6]"/10,130,110/110,130,60/);

	DEF Z_CURRENT=(R///$85909,$85909,,/WR1,ac4//"/NC/_N_NC_GD2_ACX/RING[10]"/10,160,110/110,160,60/);
	DEF X_CURRENT_INIT=(R///$85908,$85908,,/WR1,ac4//"/NC/_N_NC_GD2_ACX/RING[9]"/10,180,110/110,180,60/);
	DEF X_CURRENT_CURRENT=(R///$85919,$85919,,/WR1,ac4//"/NC/_N_NC_GD2_ACX/PROCESS[5]"/10,200,110/110,200,60/);

	DEF SLOT_INIT=(I/0,//$85904,$85904,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[3]"/360,40,110/460,40,60//"UserGuide/section_1.html","S1D43");
	DEF SLOT_END=(I/0,//$85905,$85905,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[4]"/360,60,110/460,60,60//"UserGuide/section_1.html","S1D44");

	DEF Z_POSITION_INIT=(R///$85920,$85920,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/INI[3]"/360,90,110/460,90,60/6/"UserGuide/section_1.html","S1D45");
	DEF X_POSITION_INIT=(R///$85921,$85921,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/PROCESS[14]"/360,110,110/460,110,60/6/"UserGuide/section_1.html","S1D46");

	DEF WORK_CENTER=(R///$85165,$85165,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/INI[11]"/360,140,202/460,140,60//"UserGuide/section_1.html","S1D28");
;

	DEF X_QUIT=(R///$85106,$85106,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/INI[24]"/360,160,202/460,160,60//"UserGuide/section_1.html","S1D14");

	DEF Z_INIT=(R///$85101,$85101,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/INI[29]"/360,180,202/460,180,60//"UserGuide/section_1.html","S1D30");

	DEF ZUIDU=(R4/-10,10//$85159,$85159,$85043,/WR2,ac4//"/NC/_N_NC_GD2_ACX/INI[15]"/360,200,202/460,200,60//"UserGuide/section_1.html","S1D16");

	DEF DIAMETER_ADJ=(R///$85174,$85174,$85043,/WR2,ac4//"/NC/_N_NC_GD2_ACX/GRIND[5]"/360,220,202/460,220,60//"UserGuide/section_1.html","S1D2");

	DEF GRINDING_TYPE=(I/*0=$85900,1=$85901//$85902,$85902,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[1]"/360,10,110/460,10,60//"UserGuide/section_1.html","S1D31");

	DEF TYPE=(I////WR4//"/NC/_N_NC_GD2_ACX/GRIND[1]"/0,0,0/0,0,0/);

	;
	DEF PITCH_1=(R/0,//$85915,,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[11]"/0,0,0/132,270,60//"UserGuide/section_1.html","S1D47");
	DEF PITCH_2=(R/0,//$85916,,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[21]"/0,0,0/222,270,60//"UserGuide/section_1.html","S1D47");
	DEF PITCH_3=(R/0,//$85917,,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[31]"/0,0,0/312,270,60//"UserGuide/section_1.html","S1D47");
	DEF PITCH_4=(R/0,//$85918,,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[41]"/0,0,0/402,270,60//"UserGuide/section_1.html","S1D47");

	;
	DEF SLOTS_1=(I/0,//$85915,,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[12]"/0,0,0/132,295,60//"UserGuide/section_1.html","S1D48");
	DEF SLOTS_2=(I/0,//$85916,,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[22]"/0,0,0/222,295,60//"UserGuide/section_1.html","S1D48");
	DEF SLOTS_3=(I/0,//$85917,,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[32]"/0,0,0/312,295,60//"UserGuide/section_1.html","S1D48");
	DEF SLOTS_4=(I/0,//$85918,,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[42]"/0,0,0/402,295,60//"UserGuide/section_1.html","S1D48");

	;
	DEF Z_DELTA_1=(R///$85915,,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[13]"/0,0,0/132,320,60//"UserGuide/section_1.html","S1D49");
	DEF Z_DELTA_2=(R///$85916,,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[23]"/0,0,0/222,320,60//"UserGuide/section_1.html","S1D49");
	DEF Z_DELTA_3=(R///$85917,,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[33]"/0,0,0/312,320,60//"UserGuide/section_1.html","S1D49");
	DEF Z_DELTA_4=(R///$85918,,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[43]"/0,0,0/402,320,60//"UserGuide/section_1.html","S1D49");

	;
	DEF X_DELTA_1=(R///$85915,,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[14]"/0,0,0/132,344,60//"UserGuide/section_1.html","S1D50");
	DEF X_DELTA_2=(R///$85916,,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[24]"/0,0,0/222,344,60//"UserGuide/section_1.html","S1D50");
	DEF X_DELTA_3=(R///$85917,,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[34]"/0,0,0/312,344,60//"UserGuide/section_1.html","S1D50");
	DEF X_DELTA_4=(R///$85918,,,/WR2,ac4//"/NC/_N_NC_GD2_ACX/RING[44]"/0,0,0/402,344,60//"UserGuide/section_1.html","S1D50");

	DEF VAR45=(I////WR4//"/NC/_N_NC_GD2_ACX/PROCESS[16]"/0,0,0/0,0,0);

	HS1=($85001,ac7,se3);
	HS2=($85002,ac7,se1);
	HS3=($85003,ac7,se1);
	HS4=($85010,ac7,se1);

	;
	HS5=($85012,ac7,se1);
	HS6=($85017,ac7,se1);
	HS7=($85011,ac7,se1);
	;

	HS8=($85005,ac7,se1);

	VS1=("")

	PRESS(HS1)
		LM("MASK51","grind.com")
	END_PRESS

	PRESS(HS2)
		IF VAR45.VAL==0;
			IF PIECE_VOLUME.VAL==0;
				LM("MASK29","process.com")
			ELSE
				LM("MASK2","process.com")
			ENDIF
		ELSE
			IF PIECE_VOLUME.VAL==0;
				LM("MASK30","process.com")
			ELSE
				LM("MASK20","process.com")
			ENDIF
		ENDIF
	END_PRESS

	PRESS(HS3)
		LM("MASK3","dress.com")
	END_PRESS

	PRESS(HS4)
		LM("MASK21","auto.com")
	END_PRESS

	PRESS(HS5)
		LM("MASK24","centerwaiyuan.com")
	END_PRESS
	
	PRESS(HS6)
		LM("MASK25","centerduanmian.com")
	END_PRESS
	
	PRESS(HS7)
		LM("MASK23","centermain.com")
	END_PRESS
	
	PRESS(HS8)
		EXIT
	END_PRESS

	CHANGE(SLOTS_1)
		call("UP1")
	END_CHANGE

	CHANGE(SLOTS_2)
		call("UP1")
	END_CHANGE

	CHANGE(SLOTS_3)
		call("UP1")
	END_CHANGE

	CHANGE(SLOTS_4)
		call("UP1")
	END_CHANGE

	CHANGE(PITCH_1)
		IF PITCH_1.VAL==0
			SLOTS_1.VAL=0
		ENDIF
	END_CHANGE

	CHANGE(PITCH_2)
		IF PITCH_2.VAL==0
			SLOTS_2.VAL=0
		ENDIF
	END_CHANGE

	CHANGE(PITCH_3)
		IF PITCH_3.VAL==0
			SLOTS_3.VAL=0
		ENDIF
	END_CHANGE

	CHANGE(PITCH_4)
		IF PITCH_4.VAL==0
			SLOTS_4.VAL=0
		ENDIF
	END_CHANGE

	CHANGE(SLOT_END)
		IF SLOT_END.VAL>SLOT_AMOUNT
			SLOT_END.VAL=SLOT_AMOUNT
		ENDIF
		call("UP2")
	END_CHANGE

	CHANGE(SLOT_INIT)
		IF SLOT_INIT<1
			SLOT_INIT=1
		ENDIF
		call("UP2")
	END_CHANGE

	CHANGE(SLOT_AMOUNT)
		IF SLOT_END.VAL>SLOT_AMOUNT
			SLOT_END.VAL=SLOT_AMOUNT
		ENDIF
	END_CHANGE

	CHANGE(GRINDING_TYPE)
		IF GRINDING_TYPE.VAL==0
			IF TYPE.VAL<>1
				LM("MASK1","grind.com")
			ELSE
				LM("MASK18","grind.com")
			ENDIF
		ENDIF
	END_CHANGE

	SUB(UP1)
		SLOT_AMOUNT.VAL=SLOTS_1+SLOTS_2+SLOTS_3+SLOTS_4
	END_SUB

	SUB(UP2)
		SLOT_NEED.VAL=SLOT_END.VAL-SLOT_INIT.VAL+1
	END_SUB

//END

;
