DSCH 3.5
VERSION 1/17/2022 4:04:48 PM
BB(26,0,159,110)
SYM  #button
BB(26,6,35,14)
TITLE 30 10  #QB
MODEL 59
PROP                                                                                                                                   
REC(27,7,6,6,r)
VIS 1
PIN(35,10,0.000,0.000)QB
LIG(34,10,35,10)
LIG(26,14,26,6)
LIG(34,14,26,14)
LIG(34,6,34,14)
LIG(26,6,34,6)
LIG(27,13,27,7)
LIG(33,13,27,13)
LIG(33,7,33,13)
LIG(27,7,33,7)
FSYM
SYM  #button
BB(26,16,35,24)
TITLE 30 20  #Q
MODEL 59
PROP                                                                                                                                   
REC(27,17,6,6,r)
VIS 1
PIN(35,20,0.000,0.000)Q
LIG(34,20,35,20)
LIG(26,24,26,16)
LIG(34,24,26,24)
LIG(34,16,34,24)
LIG(26,16,34,16)
LIG(27,23,27,17)
LIG(33,23,27,23)
LIG(33,17,33,23)
LIG(27,17,33,17)
FSYM
SYM  #button
BB(26,26,35,34)
TITLE 30 30  #camData
MODEL 59
PROP                                                                                                                                   
REC(27,27,6,6,r)
VIS 1
PIN(35,30,0.000,0.000)camData
LIG(34,30,35,30)
LIG(26,34,26,26)
LIG(34,34,26,34)
LIG(34,26,34,34)
LIG(26,26,34,26)
LIG(27,33,27,27)
LIG(33,33,27,33)
LIG(33,27,33,33)
LIG(27,27,33,27)
FSYM
SYM  #nmos
BB(50,75,70,95)
TITLE 65 80  #nmos
MODEL 901
PROP   0.3u 0.07u MN                                                                                                                              
REC(51,80,19,15,r)
VIS 0
PIN(70,95,0.000,0.000)s
PIN(50,85,0.000,0.000)g
PIN(70,75,0.005,0.010)d
LIG(60,85,50,85)
LIG(60,91,60,79)
LIG(62,91,62,79)
LIG(70,79,62,79)
LIG(70,75,70,79)
LIG(70,91,62,91)
LIG(70,95,70,91)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #tgate
BB(120,20,140,40)
TITLE 135 35  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                               
REC(20,0,0,0, )
VIS 5
PIN(120,30,0.000,0.000)in
PIN(130,20,0.000,0.000)en
PIN(140,30,0.010,0.010)out
LIG(120,30,125,30)
LIG(130,20,130,30)
LIG(135,30,140,30)
LIG(125,35,125,25)
LIG(135,35,135,25)
LIG(125,35,135,25)
LIG(125,25,135,35)
VLG // transmission gate description
VLG module tgate(in,en,out);
VLG input in,en;
VLG output out;
VLG wire nEn;
VLG not  not1(nEn,en);
VLG nmos nmos1(out,in,en);
VLG pmos pmos1(out,in,nEn);
VLG endmodule
FSYM
SYM  #pmos
BB(50,50,70,70)
TITLE 65 55  #pmos
MODEL 902
PROP   0.5u 0.07u MP                                                                                                                              
REC(51,55,19,15,r)
VIS 0
PIN(70,50,0.000,0.000)s
PIN(50,60,0.000,0.000)g
PIN(70,70,0.005,0.010)d
LIG(50,60,56,60)
LIG(58,60,58,60)
LIG(60,66,60,54)
LIG(62,66,62,54)
LIG(70,54,62,54)
LIG(70,50,70,54)
LIG(70,66,62,66)
LIG(70,70,70,66)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(80,55,100,75)
TITLE 95 60  #pmos
MODEL 902
PROP   0.5u 0.07u MP                                                                                                                              
REC(81,60,19,15,r)
VIS 0
PIN(100,55,0.000,0.000)s
PIN(80,65,0.000,0.000)g
PIN(100,75,0.005,0.006)d
LIG(80,65,86,65)
LIG(88,65,88,65)
LIG(90,71,90,59)
LIG(92,71,92,59)
LIG(100,59,92,59)
LIG(100,55,100,59)
LIG(100,71,92,71)
LIG(100,75,100,71)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(80,80,100,100)
TITLE 95 85  #nmos
MODEL 901
PROP   0.3u 0.07u MN                                                                                                                              
REC(81,85,19,15,r)
VIS 0
PIN(100,100,0.000,0.000)s
PIN(80,90,0.000,0.000)g
PIN(100,80,0.005,0.006)d
LIG(90,90,80,90)
LIG(90,96,90,84)
LIG(92,96,92,84)
LIG(100,84,92,84)
LIG(100,80,100,84)
LIG(100,96,92,96)
LIG(100,100,100,96)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #vss
BB(65,102,75,110)
TITLE 69 107  #vss
MODEL 0
PROP                                                                                                                                    
REC(65,100,0,0,b)
VIS 0
PIN(70,100,0.000,0.000)vss
LIG(70,100,70,105)
LIG(65,105,75,105)
LIG(65,108,67,105)
LIG(67,108,69,105)
LIG(69,108,71,105)
LIG(71,108,73,105)
FSYM
SYM  #tgate
BB(120,0,140,20)
TITLE 135 15  #tgate
MODEL 6000
PROP   2.4 1.2                                                                                                                               
REC(20,0,0,0, )
VIS 5
PIN(120,10,0.000,0.000)in
PIN(130,0,0.000,0.000)en
PIN(140,10,0.010,0.010)out
LIG(120,10,125,10)
LIG(130,0,130,10)
LIG(135,10,140,10)
LIG(125,15,125,5)
LIG(135,15,135,5)
LIG(125,15,135,5)
LIG(125,5,135,15)
VLG // transmission gate description
VLG module tgate(in,en,out);
VLG input in,en;
VLG output out;
VLG wire nEn;
VLG not  not1(nEn,en);
VLG nmos nmos1(out,in,en);
VLG pmos pmos1(out,in,nEn);
VLG endmodule
FSYM
SYM  #vdd
BB(75,40,85,50)
TITLE 78 46  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,5,0,0, )
VIS 0
PIN(80,50,0.000,0.000)vdd
LIG(80,50,80,45)
LIG(80,45,75,45)
LIG(75,45,80,40)
LIG(80,40,85,45)
LIG(85,45,80,45)
FSYM
SYM  #light
BB(153,5,159,19)
TITLE 155 19  #match
MODEL 49
PROP                                                                                                                                   
REC(154,6,4,4,r)
VIS 1
PIN(155,20,0.000,0.000)match
LIG(158,11,158,6)
LIG(158,6,157,5)
LIG(154,6,154,11)
LIG(157,16,157,13)
LIG(156,16,159,16)
LIG(156,18,158,16)
LIG(157,18,159,16)
LIG(153,13,159,13)
LIG(155,13,155,20)
LIG(153,11,153,13)
LIG(159,11,153,11)
LIG(159,13,159,11)
LIG(155,5,154,6)
LIG(157,5,155,5)
FSYM
CNC(80 75)
CNC(140 20)
LIG(35,10,80,10)
LIG(80,10,80,0)
LIG(80,0,130,0)
LIG(35,20,130,20)
LIG(100,75,100,80)
LIG(80,75,80,90)
LIG(70,75,80,75)
LIG(80,65,80,75)
LIG(70,70,70,75)
LIG(50,60,50,85)
LIG(70,50,100,50)
LIG(115,75,100,75)
LIG(100,50,100,55)
LIG(100,100,70,100)
LIG(70,100,70,95)
LIG(35,30,45,30)
LIG(45,30,45,60)
LIG(45,60,50,60)
LIG(70,70,75,70)
LIG(75,70,75,15)
LIG(75,15,85,15)
LIG(85,15,85,10)
LIG(85,10,120,10)
LIG(120,30,115,30)
LIG(115,30,115,75)
LIG(140,10,140,20)
LIG(140,20,155,20)
LIG(140,20,140,30)
FFIG C:\Users\abood\OneDrive\Desktop\SRAM\matchCircuit.sch
