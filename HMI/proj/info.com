;**********************MASK0:出厂信息:panel_0:;**********************
//M(Mask0/$85024/"panel_0_1_chs.png"/)

	DEF VAR1=(B///$85060,$85060,,/WR1,ac7,al0,fs2,li0,cb0///120,150,300/0,0,0/);
	DEF VAR2=(B///$85061,$85061,,/WR1,ac7,al0,fs2,li0,cb0///120,200,300/0,0,0/);
	;

	HS8=($85005,ac7,se1);

	PRESS(HS8)
		EXIT
	END_PRESS

//END