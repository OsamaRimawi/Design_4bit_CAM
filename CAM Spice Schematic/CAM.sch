DSCH 3.5
VERSION 1/17/2022 4:31:09 PM
BB(-19,-89,554,395)
SYM  #button1
BB(146,191,155,199)
TITLE 150 195  #button20
MODEL 59
PROP                                                                                                                                    
REC(147,192,6,6,r)
VIS 1
PIN(155,195,0.000,0.000)in20
LIG(154,195,155,195)
LIG(146,199,146,191)
LIG(154,199,146,199)
LIG(154,191,154,199)
LIG(146,191,154,191)
LIG(147,198,147,192)
LIG(153,198,147,198)
LIG(153,192,153,198)
LIG(147,192,153,192)
FSYM
SYM  #button2
BB(146,201,155,209)
TITLE 150 205  #button21
MODEL 59
PROP                                                                                                                                    
REC(147,202,6,6,r)
VIS 1
PIN(155,205,0.000,0.000)in21
LIG(154,205,155,205)
LIG(146,209,146,201)
LIG(154,209,146,209)
LIG(154,201,154,209)
LIG(146,201,154,201)
LIG(147,208,147,202)
LIG(153,208,147,208)
LIG(153,202,153,208)
LIG(147,202,153,202)
FSYM
SYM  #button3
BB(146,211,155,219)
TITLE 150 215  #button22
MODEL 59
PROP                                                                                                                                    
REC(147,212,6,6,r)
VIS 1
PIN(155,215,0.000,0.000)in22
LIG(154,215,155,215)
LIG(146,219,146,211)
LIG(154,219,146,219)
LIG(154,211,154,219)
LIG(146,211,154,211)
LIG(147,218,147,212)
LIG(153,218,147,218)
LIG(153,212,153,218)
LIG(147,212,153,212)
FSYM
SYM  #button4
BB(146,221,155,229)
TITLE 150 225  #button23
MODEL 59
PROP                                                                                                                                    
REC(147,222,6,6,r)
VIS 1
PIN(155,225,0.000,0.000)in23
LIG(154,225,155,225)
LIG(146,229,146,221)
LIG(154,229,146,229)
LIG(154,221,154,229)
LIG(146,221,154,221)
LIG(147,228,147,222)
LIG(153,228,147,228)
LIG(153,222,153,228)
LIG(147,222,153,222)
FSYM
SYM  #9tSram
BB(165,185,185,245)
TITLE 175 178  #9tSram
MODEL 6000
PROP                                                                                                                                    
REC(170,190,10,50,r)
VIS 5
PIN(165,195,0.000,0.000)WWL
PIN(165,215,0.000,0.000)WBL
PIN(165,225,0.000,0.000)WBLB
PIN(165,205,0.000,0.000)RWL
PIN(165,235,0.000,0.000)RBL
PIN(185,205,0.010,0.016)Q
PIN(185,195,0.010,0.016)QB
LIG(165,195,170,195)
LIG(165,215,170,215)
LIG(165,225,170,225)
LIG(165,205,170,205)
LIG(165,235,170,235)
LIG(180,205,185,205)
LIG(180,195,185,195)
LIG(170,190,170,240)
LIG(170,190,180,190)
LIG(180,190,180,240)
LIG(180,240,170,240)
VLG module 9tSram( WWL,WBL,WBLB,RWL,RBL,Q,QB);
VLG input WWL,WBL,WBLB,RWL,RBL;
VLG output Q,QB;
VLG wire w9;
VLG nmos #(2) nmos_1(WBLB,QB,WWL); // 0.3u 0.2u
VLG pmos #(4) pmos_2(Q,vdd,QB); // 0.5u 0.2u
VLG nmos #(4) nmos_3(QB,vss,Q); // 0.3u 0.2u
VLG pmos #(4) pmos_4(QB,vdd,Q); // 0.5u 0.2u
VLG nmos #(4) nmos_5(Q,vss,QB); // 0.3u 0.2u
VLG nmos #(4) nmos_6(Q,WBL,WWL); // 0.3u 0.2u
VLG nmos #(2) nmos_7(w9,RBL,RWL); // 0.3u 0.07u
VLG nmos #(2) nmos_8(RWL,w9,Q); // 0.3u 0.07u
VLG nmos #(2) nmos_9(w9,vss,QB); // 0.3u 0.07u
VLG endmodule
FSYM
SYM  #CAM
BB(195,185,215,225)
TITLE 205 178  #Match
MODEL 6000
PROP                                                                                                                                    
REC(200,190,10,30,r)
VIS 1
PIN(195,205,0.000,0.000)Q
PIN(195,195,0.000,0.000)QB
PIN(195,215,0.000,0.000)CAMD
PIN(215,195,0.010,0.010)Match
LIG(195,205,200,205)
LIG(195,195,200,195)
LIG(195,215,200,215)
LIG(210,195,215,195)
LIG(200,190,200,220)
LIG(200,190,210,190)
LIG(210,190,210,220)
LIG(210,220,200,220)
VLG module CAM( Q,QB,CAMD,Match);
VLG input Q,QB,CAMD;
VLG output Match;
VLG wire w3,w7,w8,w9;
VLG nmos #(3) nmos_1(w7,vss,CAMD); // 0.3u 0.07u
VLG pmos #(2) pmos_2(w3,vdd,w7); // 0.5u 0.07u
VLG nmos #(2) nmos_3(w3,vss,w7); // 0.3u 0.07u
VLG pmos #(3) pmos_4(w7,vdd,CAMD); // 0.5u 0.07u
VLG not #(1) not1_5(w8,Q);
VLG nmos #(3) nmos1_6(Match,w3,Q); //  
VLG pmos #(3) pmos1_7(Match,w3,w8); //  
VLG not #(1) not1_8(w9,QB);
VLG nmos #(3) nmos1_9(Match,w7,QB); //  
VLG pmos #(3) pmos1_10(Match,w7,w9); //  
VLG endmodule
FSYM
SYM  #button5
BB(96,-89,104,-80)
TITLE 100 -85  #B0
MODEL 59
PROP                                                                                                                                    
REC(97,-88,6,6,r)
VIS 1
PIN(100,-80,0.000,0.000)B0
LIG(100,-81,100,-80)
LIG(96,-89,104,-89)
LIG(96,-81,96,-89)
LIG(104,-81,96,-81)
LIG(104,-89,104,-81)
LIG(97,-88,103,-88)
LIG(97,-82,97,-88)
LIG(103,-82,97,-82)
LIG(103,-88,103,-82)
FSYM
SYM  #button6
BB(51,-89,59,-80)
TITLE 55 -85  #B3
MODEL 59
PROP                                                                                                                                    
REC(52,-88,6,6,r)
VIS 1
PIN(55,-80,0.000,0.000)B3
LIG(55,-81,55,-80)
LIG(51,-89,59,-89)
LIG(51,-81,51,-89)
LIG(59,-81,51,-81)
LIG(59,-89,59,-81)
LIG(52,-88,58,-88)
LIG(52,-82,52,-88)
LIG(58,-82,52,-82)
LIG(58,-88,58,-82)
FSYM
SYM  #button7
BB(66,-89,74,-80)
TITLE 70 -85  #B2
MODEL 59
PROP                                                                                                                                    
REC(67,-88,6,6,r)
VIS 1
PIN(70,-80,0.000,0.000)B2
LIG(70,-81,70,-80)
LIG(66,-89,74,-89)
LIG(66,-81,66,-89)
LIG(74,-81,66,-81)
LIG(74,-89,74,-81)
LIG(67,-88,73,-88)
LIG(67,-82,67,-88)
LIG(73,-82,67,-82)
LIG(73,-88,73,-82)
FSYM
SYM  #button8
BB(81,-89,89,-80)
TITLE 85 -85  #B1
MODEL 59
PROP                                                                                                                                    
REC(82,-88,6,6,r)
VIS 1
PIN(85,-80,0.000,0.000)B1
LIG(85,-81,85,-80)
LIG(81,-89,89,-89)
LIG(81,-81,81,-89)
LIG(89,-81,81,-81)
LIG(89,-89,89,-81)
LIG(82,-88,88,-88)
LIG(82,-82,82,-88)
LIG(88,-82,82,-82)
LIG(88,-88,88,-82)
FSYM
SYM  #button9
BB(146,231,155,239)
TITLE 150 235  #button24
MODEL 59
PROP                                                                                                                                    
REC(147,232,6,6,r)
VIS 1
PIN(155,235,0.000,0.000)in24
LIG(154,235,155,235)
LIG(146,239,146,231)
LIG(154,239,146,239)
LIG(154,231,154,239)
LIG(146,231,154,231)
LIG(147,238,147,232)
LIG(153,238,147,238)
LIG(153,232,153,238)
LIG(147,232,153,232)
FSYM
SYM  #button10
BB(226,231,235,239)
TITLE 230 235  #button24
MODEL 59
PROP                                                                                                                                    
REC(227,232,6,6,r)
VIS 1
PIN(235,235,0.000,0.000)in24
LIG(234,235,235,235)
LIG(226,239,226,231)
LIG(234,239,226,239)
LIG(234,231,234,239)
LIG(226,231,234,231)
LIG(227,238,227,232)
LIG(233,238,227,238)
LIG(233,232,233,238)
LIG(227,232,233,232)
FSYM
SYM  #CAM
BB(275,185,295,225)
TITLE 285 178  #Match
MODEL 6000
PROP                                                                                                                                    
REC(280,190,10,30,r)
VIS 1
PIN(275,205,0.000,0.000)Q
PIN(275,195,0.000,0.000)QB
PIN(275,215,0.000,0.000)CAMD
PIN(295,195,0.010,0.010)Match
LIG(275,205,280,205)
LIG(275,195,280,195)
LIG(275,215,280,215)
LIG(290,195,295,195)
LIG(280,190,280,220)
LIG(280,190,290,190)
LIG(290,190,290,220)
LIG(290,220,280,220)
VLG module CAM( Q,QB,CAMD,Match);
VLG input Q,QB,CAMD;
VLG output Match;
VLG wire w3,w7,w8,w9;
VLG nmos #(3) nmos_1(w7,vss,CAMD); // 0.3u 0.07u
VLG pmos #(2) pmos_2(w3,vdd,w7); // 0.5u 0.07u
VLG nmos #(2) nmos_3(w3,vss,w7); // 0.3u 0.07u
VLG pmos #(3) pmos_4(w7,vdd,CAMD); // 0.5u 0.07u
VLG not #(1) not1_5(w8,Q);
VLG nmos #(3) nmos1_6(Match,w3,Q); //  
VLG pmos #(3) pmos1_7(Match,w3,w8); //  
VLG not #(1) not1_8(w9,QB);
VLG nmos #(3) nmos1_9(Match,w7,QB); //  
VLG pmos #(3) pmos1_10(Match,w7,w9); //  
VLG endmodule
FSYM
SYM  #9tSram
BB(245,185,265,245)
TITLE 255 178  #9tSram
MODEL 6000
PROP                                                                                                                                    
REC(250,190,10,50,r)
VIS 5
PIN(245,195,0.000,0.000)WWL
PIN(245,215,0.000,0.000)WBL
PIN(245,225,0.000,0.000)WBLB
PIN(245,205,0.000,0.000)RWL
PIN(245,235,0.000,0.000)RBL
PIN(265,205,0.010,0.016)Q
PIN(265,195,0.010,0.016)QB
LIG(245,195,250,195)
LIG(245,215,250,215)
LIG(245,225,250,225)
LIG(245,205,250,205)
LIG(245,235,250,235)
LIG(260,205,265,205)
LIG(260,195,265,195)
LIG(250,190,250,240)
LIG(250,190,260,190)
LIG(260,190,260,240)
LIG(260,240,250,240)
VLG module 9tSram( WWL,WBL,WBLB,RWL,RBL,Q,QB);
VLG input WWL,WBL,WBLB,RWL,RBL;
VLG output Q,QB;
VLG wire w9;
VLG nmos #(2) nmos_1(WBLB,QB,WWL); // 0.3u 0.2u
VLG pmos #(4) pmos_2(Q,vdd,QB); // 0.5u 0.2u
VLG nmos #(4) nmos_3(QB,vss,Q); // 0.3u 0.2u
VLG pmos #(4) pmos_4(QB,vdd,Q); // 0.5u 0.2u
VLG nmos #(4) nmos_5(Q,vss,QB); // 0.3u 0.2u
VLG nmos #(4) nmos_6(Q,WBL,WWL); // 0.3u 0.2u
VLG nmos #(2) nmos_7(w9,RBL,RWL); // 0.3u 0.07u
VLG nmos #(2) nmos_8(RWL,w9,Q); // 0.3u 0.07u
VLG nmos #(2) nmos_9(w9,vss,QB); // 0.3u 0.07u
VLG endmodule
FSYM
SYM  #button11
BB(226,221,235,229)
TITLE 230 225  #button23
MODEL 59
PROP                                                                                                                                    
REC(227,222,6,6,r)
VIS 1
PIN(235,225,0.000,0.000)in23
LIG(234,225,235,225)
LIG(226,229,226,221)
LIG(234,229,226,229)
LIG(234,221,234,229)
LIG(226,221,234,221)
LIG(227,228,227,222)
LIG(233,228,227,228)
LIG(233,222,233,228)
LIG(227,222,233,222)
FSYM
SYM  #button12
BB(226,211,235,219)
TITLE 230 215  #button22
MODEL 59
PROP                                                                                                                                    
REC(227,212,6,6,r)
VIS 1
PIN(235,215,0.000,0.000)in22
LIG(234,215,235,215)
LIG(226,219,226,211)
LIG(234,219,226,219)
LIG(234,211,234,219)
LIG(226,211,234,211)
LIG(227,218,227,212)
LIG(233,218,227,218)
LIG(233,212,233,218)
LIG(227,212,233,212)
FSYM
SYM  #button13
BB(226,201,235,209)
TITLE 230 205  #button21
MODEL 59
PROP                                                                                                                                    
REC(227,202,6,6,r)
VIS 1
PIN(235,205,0.000,0.000)in21
LIG(234,205,235,205)
LIG(226,209,226,201)
LIG(234,209,226,209)
LIG(234,201,234,209)
LIG(226,201,234,201)
LIG(227,208,227,202)
LIG(233,208,227,208)
LIG(233,202,233,208)
LIG(227,202,233,202)
FSYM
SYM  #button14
BB(226,191,235,199)
TITLE 230 195  #button20
MODEL 59
PROP                                                                                                                                    
REC(227,192,6,6,r)
VIS 1
PIN(235,195,0.000,0.000)in20
LIG(234,195,235,195)
LIG(226,199,226,191)
LIG(234,199,226,199)
LIG(234,191,234,199)
LIG(226,191,234,191)
LIG(227,198,227,192)
LIG(233,198,227,198)
LIG(233,192,233,198)
LIG(227,192,233,192)
FSYM
SYM  #button15
BB(66,191,75,199)
TITLE 70 195  #button20
MODEL 59
PROP                                                                                                                                    
REC(67,192,6,6,r)
VIS 1
PIN(75,195,0.000,0.000)in20
LIG(74,195,75,195)
LIG(66,199,66,191)
LIG(74,199,66,199)
LIG(74,191,74,199)
LIG(66,191,74,191)
LIG(67,198,67,192)
LIG(73,198,67,198)
LIG(73,192,73,198)
LIG(67,192,73,192)
FSYM
SYM  #button16
BB(66,201,75,209)
TITLE 70 205  #button21
MODEL 59
PROP                                                                                                                                    
REC(67,202,6,6,r)
VIS 1
PIN(75,205,0.000,0.000)in21
LIG(74,205,75,205)
LIG(66,209,66,201)
LIG(74,209,66,209)
LIG(74,201,74,209)
LIG(66,201,74,201)
LIG(67,208,67,202)
LIG(73,208,67,208)
LIG(73,202,73,208)
LIG(67,202,73,202)
FSYM
SYM  #button17
BB(66,211,75,219)
TITLE 70 215  #button22
MODEL 59
PROP                                                                                                                                    
REC(67,212,6,6,r)
VIS 1
PIN(75,215,0.000,0.000)in22
LIG(74,215,75,215)
LIG(66,219,66,211)
LIG(74,219,66,219)
LIG(74,211,74,219)
LIG(66,211,74,211)
LIG(67,218,67,212)
LIG(73,218,67,218)
LIG(73,212,73,218)
LIG(67,212,73,212)
FSYM
SYM  #button18
BB(66,221,75,229)
TITLE 70 225  #button23
MODEL 59
PROP                                                                                                                                    
REC(67,222,6,6,r)
VIS 1
PIN(75,225,0.000,0.000)in23
LIG(74,225,75,225)
LIG(66,229,66,221)
LIG(74,229,66,229)
LIG(74,221,74,229)
LIG(66,221,74,221)
LIG(67,228,67,222)
LIG(73,228,67,228)
LIG(73,222,73,228)
LIG(67,222,73,222)
FSYM
SYM  #9tSram
BB(85,185,105,245)
TITLE 95 178  #9tSram
MODEL 6000
PROP                                                                                                                                    
REC(90,190,10,50,r)
VIS 5
PIN(85,195,0.000,0.000)WWL
PIN(85,215,0.000,0.000)WBL
PIN(85,225,0.000,0.000)WBLB
PIN(85,205,0.000,0.000)RWL
PIN(85,235,0.000,0.000)RBL
PIN(105,205,0.010,0.016)Q
PIN(105,195,0.010,0.016)QB
LIG(85,195,90,195)
LIG(85,215,90,215)
LIG(85,225,90,225)
LIG(85,205,90,205)
LIG(85,235,90,235)
LIG(100,205,105,205)
LIG(100,195,105,195)
LIG(90,190,90,240)
LIG(90,190,100,190)
LIG(100,190,100,240)
LIG(100,240,90,240)
VLG module 9tSram( WWL,WBL,WBLB,RWL,RBL,Q,QB);
VLG input WWL,WBL,WBLB,RWL,RBL;
VLG output Q,QB;
VLG wire w9;
VLG nmos #(2) nmos_1(WBLB,QB,WWL); // 0.3u 0.2u
VLG pmos #(4) pmos_2(Q,vdd,QB); // 0.5u 0.2u
VLG nmos #(4) nmos_3(QB,vss,Q); // 0.3u 0.2u
VLG pmos #(4) pmos_4(QB,vdd,Q); // 0.5u 0.2u
VLG nmos #(4) nmos_5(Q,vss,QB); // 0.3u 0.2u
VLG nmos #(4) nmos_6(Q,WBL,WWL); // 0.3u 0.2u
VLG nmos #(2) nmos_7(w9,RBL,RWL); // 0.3u 0.07u
VLG nmos #(2) nmos_8(RWL,w9,Q); // 0.3u 0.07u
VLG nmos #(2) nmos_9(w9,vss,QB); // 0.3u 0.07u
VLG endmodule
FSYM
SYM  #CAM
BB(115,185,135,225)
TITLE 125 178  #Match
MODEL 6000
PROP                                                                                                                                    
REC(120,190,10,30,r)
VIS 1
PIN(115,205,0.000,0.000)Q
PIN(115,195,0.000,0.000)QB
PIN(115,215,0.000,0.000)CAMD
PIN(135,195,0.010,0.010)Match
LIG(115,205,120,205)
LIG(115,195,120,195)
LIG(115,215,120,215)
LIG(130,195,135,195)
LIG(120,190,120,220)
LIG(120,190,130,190)
LIG(130,190,130,220)
LIG(130,220,120,220)
VLG module CAM( Q,QB,CAMD,Match);
VLG input Q,QB,CAMD;
VLG output Match;
VLG wire w3,w7,w8,w9;
VLG nmos #(3) nmos_1(w7,vss,CAMD); // 0.3u 0.07u
VLG pmos #(2) pmos_2(w3,vdd,w7); // 0.5u 0.07u
VLG nmos #(2) nmos_3(w3,vss,w7); // 0.3u 0.07u
VLG pmos #(3) pmos_4(w7,vdd,CAMD); // 0.5u 0.07u
VLG not #(1) not1_5(w8,Q);
VLG nmos #(3) nmos1_6(Match,w3,Q); //  
VLG pmos #(3) pmos1_7(Match,w3,w8); //  
VLG not #(1) not1_8(w9,QB);
VLG nmos #(3) nmos1_9(Match,w7,QB); //  
VLG pmos #(3) pmos1_10(Match,w7,w9); //  
VLG endmodule
FSYM
SYM  #button19
BB(66,231,75,239)
TITLE 70 235  #button24
MODEL 59
PROP                                                                                                                                    
REC(67,232,6,6,r)
VIS 1
PIN(75,235,0.000,0.000)in24
LIG(74,235,75,235)
LIG(66,239,66,231)
LIG(74,239,66,239)
LIG(74,231,74,239)
LIG(66,231,74,231)
LIG(67,238,67,232)
LIG(73,238,67,238)
LIG(73,232,73,238)
LIG(67,232,73,232)
FSYM
SYM  #button20
BB(-14,231,-5,239)
TITLE -10 235  #button24
MODEL 59
PROP                                                                                                                                    
REC(-13,232,6,6,r)
VIS 1
PIN(-5,235,0.000,0.000)in24
LIG(-6,235,-5,235)
LIG(-14,239,-14,231)
LIG(-6,239,-14,239)
LIG(-6,231,-6,239)
LIG(-14,231,-6,231)
LIG(-13,238,-13,232)
LIG(-7,238,-13,238)
LIG(-7,232,-7,238)
LIG(-13,232,-7,232)
FSYM
SYM  #CAM
BB(35,185,55,225)
TITLE 45 178  #Match
MODEL 6000
PROP                                                                                                                                    
REC(40,190,10,30,r)
VIS 1
PIN(35,205,0.000,0.000)Q
PIN(35,195,0.000,0.000)QB
PIN(35,215,0.000,0.000)CAMD
PIN(55,195,0.010,0.010)Match
LIG(35,205,40,205)
LIG(35,195,40,195)
LIG(35,215,40,215)
LIG(50,195,55,195)
LIG(40,190,40,220)
LIG(40,190,50,190)
LIG(50,190,50,220)
LIG(50,220,40,220)
VLG module CAM( Q,QB,CAMD,Match);
VLG input Q,QB,CAMD;
VLG output Match;
VLG wire w3,w7,w8,w9;
VLG nmos #(3) nmos_1(w7,vss,CAMD); // 0.3u 0.07u
VLG pmos #(2) pmos_2(w3,vdd,w7); // 0.5u 0.07u
VLG nmos #(2) nmos_3(w3,vss,w7); // 0.3u 0.07u
VLG pmos #(3) pmos_4(w7,vdd,CAMD); // 0.5u 0.07u
VLG not #(1) not1_5(w8,Q);
VLG nmos #(3) nmos1_6(Match,w3,Q); //  
VLG pmos #(3) pmos1_7(Match,w3,w8); //  
VLG not #(1) not1_8(w9,QB);
VLG nmos #(3) nmos1_9(Match,w7,QB); //  
VLG pmos #(3) pmos1_10(Match,w7,w9); //  
VLG endmodule
FSYM
SYM  #9tSram
BB(5,185,25,245)
TITLE 15 178  #9tSram
MODEL 6000
PROP                                                                                                                                    
REC(10,190,10,50,r)
VIS 5
PIN(5,195,0.000,0.000)WWL
PIN(5,215,0.000,0.000)WBL
PIN(5,225,0.000,0.000)WBLB
PIN(5,205,0.000,0.000)RWL
PIN(5,235,0.000,0.000)RBL
PIN(25,205,0.010,0.016)Q
PIN(25,195,0.010,0.016)QB
LIG(5,195,10,195)
LIG(5,215,10,215)
LIG(5,225,10,225)
LIG(5,205,10,205)
LIG(5,235,10,235)
LIG(20,205,25,205)
LIG(20,195,25,195)
LIG(10,190,10,240)
LIG(10,190,20,190)
LIG(20,190,20,240)
LIG(20,240,10,240)
VLG module 9tSram( WWL,WBL,WBLB,RWL,RBL,Q,QB);
VLG input WWL,WBL,WBLB,RWL,RBL;
VLG output Q,QB;
VLG wire w9;
VLG nmos #(2) nmos_1(WBLB,QB,WWL); // 0.3u 0.2u
VLG pmos #(4) pmos_2(Q,vdd,QB); // 0.5u 0.2u
VLG nmos #(4) nmos_3(QB,vss,Q); // 0.3u 0.2u
VLG pmos #(4) pmos_4(QB,vdd,Q); // 0.5u 0.2u
VLG nmos #(4) nmos_5(Q,vss,QB); // 0.3u 0.2u
VLG nmos #(4) nmos_6(Q,WBL,WWL); // 0.3u 0.2u
VLG nmos #(2) nmos_7(w9,RBL,RWL); // 0.3u 0.07u
VLG nmos #(2) nmos_8(RWL,w9,Q); // 0.3u 0.07u
VLG nmos #(2) nmos_9(w9,vss,QB); // 0.3u 0.07u
VLG endmodule
FSYM
SYM  #button21
BB(-14,221,-5,229)
TITLE -10 225  #button23
MODEL 59
PROP                                                                                                                                    
REC(-13,222,6,6,r)
VIS 1
PIN(-5,225,0.000,0.000)in23
LIG(-6,225,-5,225)
LIG(-14,229,-14,221)
LIG(-6,229,-14,229)
LIG(-6,221,-6,229)
LIG(-14,221,-6,221)
LIG(-13,228,-13,222)
LIG(-7,228,-13,228)
LIG(-7,222,-7,228)
LIG(-13,222,-7,222)
FSYM
SYM  #button22
BB(-14,211,-5,219)
TITLE -10 215  #button22
MODEL 59
PROP                                                                                                                                    
REC(-13,212,6,6,r)
VIS 1
PIN(-5,215,0.000,0.000)in22
LIG(-6,215,-5,215)
LIG(-14,219,-14,211)
LIG(-6,219,-14,219)
LIG(-6,211,-6,219)
LIG(-14,211,-6,211)
LIG(-13,218,-13,212)
LIG(-7,218,-13,218)
LIG(-7,212,-7,218)
LIG(-13,212,-7,212)
FSYM
SYM  #button23
BB(-14,201,-5,209)
TITLE -10 205  #button21
MODEL 59
PROP                                                                                                                                    
REC(-13,202,6,6,r)
VIS 1
PIN(-5,205,0.000,0.000)in21
LIG(-6,205,-5,205)
LIG(-14,209,-14,201)
LIG(-6,209,-14,209)
LIG(-6,201,-6,209)
LIG(-14,201,-6,201)
LIG(-13,208,-13,202)
LIG(-7,208,-13,208)
LIG(-7,202,-7,208)
LIG(-13,202,-7,202)
FSYM
SYM  #button24
BB(-14,191,-5,199)
TITLE -10 195  #button20
MODEL 59
PROP                                                                                                                                    
REC(-13,192,6,6,r)
VIS 1
PIN(-5,195,0.000,0.000)in20
LIG(-6,195,-5,195)
LIG(-14,199,-14,191)
LIG(-6,199,-14,199)
LIG(-6,191,-6,199)
LIG(-14,191,-6,191)
LIG(-13,198,-13,192)
LIG(-7,198,-13,198)
LIG(-7,192,-7,198)
LIG(-13,192,-7,192)
FSYM
SYM  #button82
BB(141,-14,150,-6)
TITLE 145 -10  #button22
MODEL 59
PROP                                                                                                                                    
REC(142,-13,6,6,r)
VIS 1
PIN(150,-10,0.000,0.000)in22
LIG(149,-10,150,-10)
LIG(141,-6,141,-14)
LIG(149,-6,141,-6)
LIG(149,-14,149,-6)
LIG(141,-14,149,-14)
LIG(142,-7,142,-13)
LIG(148,-7,142,-7)
LIG(148,-13,148,-7)
LIG(142,-13,148,-13)
FSYM
SYM  #button83
BB(141,-24,150,-16)
TITLE 145 -20  #button21
MODEL 59
PROP                                                                                                                                    
REC(142,-23,6,6,r)
VIS 1
PIN(150,-20,0.000,0.000)in21
LIG(149,-20,150,-20)
LIG(141,-16,141,-24)
LIG(149,-16,141,-16)
LIG(149,-24,149,-16)
LIG(141,-24,149,-24)
LIG(142,-17,142,-23)
LIG(148,-17,142,-17)
LIG(148,-23,148,-17)
LIG(142,-23,148,-23)
FSYM
SYM  #button81
BB(141,-4,150,4)
TITLE 145 0  #button23
MODEL 59
PROP                                                                                                                                    
REC(142,-3,6,6,r)
VIS 1
PIN(150,0,0.000,0.000)in23
LIG(149,0,150,0)
LIG(141,4,141,-4)
LIG(149,4,141,4)
LIG(149,-4,149,4)
LIG(141,-4,149,-4)
LIG(142,3,142,-3)
LIG(148,3,142,3)
LIG(148,-3,148,3)
LIG(142,-3,148,-3)
FSYM
SYM  #9tSram
BB(160,-40,180,20)
TITLE 170 -47  #9tSram
MODEL 6000
PROP                                                                                                                                    
REC(165,-35,10,50,r)
VIS 5
PIN(160,-30,0.000,0.000)WWL
PIN(160,-10,0.000,0.000)WBL
PIN(160,0,0.000,0.000)WBLB
PIN(160,-20,0.000,0.000)RWL
PIN(160,10,0.000,0.000)RBL
PIN(180,-20,0.010,0.016)Q
PIN(180,-30,0.010,0.016)QB
LIG(160,-30,165,-30)
LIG(160,-10,165,-10)
LIG(160,0,165,0)
LIG(160,-20,165,-20)
LIG(160,10,165,10)
LIG(175,-20,180,-20)
LIG(175,-30,180,-30)
LIG(165,-35,165,15)
LIG(165,-35,175,-35)
LIG(175,-35,175,15)
LIG(175,15,165,15)
VLG module 9tSram( WWL,WBL,WBLB,RWL,RBL,Q,QB);
VLG input WWL,WBL,WBLB,RWL,RBL;
VLG output Q,QB;
VLG wire w9;
VLG nmos #(2) nmos_1(WBLB,QB,WWL); // 0.3u 0.2u
VLG pmos #(4) pmos_2(Q,vdd,QB); // 0.5u 0.2u
VLG nmos #(4) nmos_3(QB,vss,Q); // 0.3u 0.2u
VLG pmos #(4) pmos_4(QB,vdd,Q); // 0.5u 0.2u
VLG nmos #(4) nmos_5(Q,vss,QB); // 0.3u 0.2u
VLG nmos #(4) nmos_6(Q,WBL,WWL); // 0.3u 0.2u
VLG nmos #(2) nmos_7(w9,RBL,RWL); // 0.3u 0.07u
VLG nmos #(2) nmos_8(RWL,w9,Q); // 0.3u 0.07u
VLG nmos #(2) nmos_9(w9,vss,QB); // 0.3u 0.07u
VLG endmodule
FSYM
SYM  #button79
BB(221,6,230,14)
TITLE 225 10  #button24
MODEL 59
PROP                                                                                                                                    
REC(222,7,6,6,r)
VIS 1
PIN(230,10,0.000,0.000)in24
LIG(229,10,230,10)
LIG(221,14,221,6)
LIG(229,14,221,14)
LIG(229,6,229,14)
LIG(221,6,229,6)
LIG(222,13,222,7)
LIG(228,13,222,13)
LIG(228,7,228,13)
LIG(222,7,228,7)
FSYM
SYM  #button80
BB(141,6,150,14)
TITLE 145 10  #button24
MODEL 59
PROP                                                                                                                                    
REC(142,7,6,6,r)
VIS 1
PIN(150,10,0.000,0.000)in24
LIG(149,10,150,10)
LIG(141,14,141,6)
LIG(149,14,141,14)
LIG(149,6,149,14)
LIG(141,6,149,6)
LIG(142,13,142,7)
LIG(148,13,142,13)
LIG(148,7,148,13)
LIG(142,7,148,7)
FSYM
SYM  #CAM
BB(190,-40,210,0)
TITLE 200 -47  #Match
MODEL 6000
PROP                                                                                                                                    
REC(195,-35,10,30,r)
VIS 1
PIN(190,-20,0.000,0.000)Q
PIN(190,-30,0.000,0.000)QB
PIN(190,-10,0.000,0.000)CAMD
PIN(210,-30,0.010,0.010)Match
LIG(190,-20,195,-20)
LIG(190,-30,195,-30)
LIG(190,-10,195,-10)
LIG(205,-30,210,-30)
LIG(195,-35,195,-5)
LIG(195,-35,205,-35)
LIG(205,-35,205,-5)
LIG(205,-5,195,-5)
VLG module CAM( Q,QB,CAMD,Match);
VLG input Q,QB,CAMD;
VLG output Match;
VLG wire w3,w7,w8,w9;
VLG nmos #(3) nmos_1(w7,vss,CAMD); // 0.3u 0.07u
VLG pmos #(2) pmos_2(w3,vdd,w7); // 0.5u 0.07u
VLG nmos #(2) nmos_3(w3,vss,w7); // 0.3u 0.07u
VLG pmos #(3) pmos_4(w7,vdd,CAMD); // 0.5u 0.07u
VLG not #(1) not1_5(w8,Q);
VLG nmos #(3) nmos1_6(Match,w3,Q); //  
VLG pmos #(3) pmos1_7(Match,w3,w8); //  
VLG not #(1) not1_8(w9,QB);
VLG nmos #(3) nmos1_9(Match,w7,QB); //  
VLG pmos #(3) pmos1_10(Match,w7,w9); //  
VLG endmodule
FSYM
SYM  #CAM
BB(270,-40,290,0)
TITLE 280 -47  #Match
MODEL 6000
PROP                                                                                                                                    
REC(275,-35,10,30,r)
VIS 1
PIN(270,-20,0.000,0.000)Q
PIN(270,-30,0.000,0.000)QB
PIN(270,-10,0.000,0.000)CAMD
PIN(290,-30,0.010,0.010)Match
LIG(270,-20,275,-20)
LIG(270,-30,275,-30)
LIG(270,-10,275,-10)
LIG(285,-30,290,-30)
LIG(275,-35,275,-5)
LIG(275,-35,285,-35)
LIG(285,-35,285,-5)
LIG(285,-5,275,-5)
VLG module CAM( Q,QB,CAMD,Match);
VLG input Q,QB,CAMD;
VLG output Match;
VLG wire w3,w7,w8,w9;
VLG nmos #(3) nmos_1(w7,vss,CAMD); // 0.3u 0.07u
VLG pmos #(2) pmos_2(w3,vdd,w7); // 0.5u 0.07u
VLG nmos #(2) nmos_3(w3,vss,w7); // 0.3u 0.07u
VLG pmos #(3) pmos_4(w7,vdd,CAMD); // 0.5u 0.07u
VLG not #(1) not1_5(w8,Q);
VLG nmos #(3) nmos1_6(Match,w3,Q); //  
VLG pmos #(3) pmos1_7(Match,w3,w8); //  
VLG not #(1) not1_8(w9,QB);
VLG nmos #(3) nmos1_9(Match,w7,QB); //  
VLG pmos #(3) pmos1_10(Match,w7,w9); //  
VLG endmodule
FSYM
SYM  #button25
BB(-14,301,-5,309)
TITLE -10 305  #button20
MODEL 59
PROP                                                                                                                                    
REC(-13,302,6,6,r)
VIS 1
PIN(-5,305,0.000,0.000)in20
LIG(-6,305,-5,305)
LIG(-14,309,-14,301)
LIG(-6,309,-14,309)
LIG(-6,301,-6,309)
LIG(-14,301,-6,301)
LIG(-13,308,-13,302)
LIG(-7,308,-13,308)
LIG(-7,302,-7,308)
LIG(-13,302,-7,302)
FSYM
SYM  #button26
BB(-14,311,-5,319)
TITLE -10 315  #button21
MODEL 59
PROP                                                                                                                                    
REC(-13,312,6,6,r)
VIS 1
PIN(-5,315,0.000,0.000)in21
LIG(-6,315,-5,315)
LIG(-14,319,-14,311)
LIG(-6,319,-14,319)
LIG(-6,311,-6,319)
LIG(-14,311,-6,311)
LIG(-13,318,-13,312)
LIG(-7,318,-13,318)
LIG(-7,312,-7,318)
LIG(-13,312,-7,312)
FSYM
SYM  #button27
BB(-14,321,-5,329)
TITLE -10 325  #button22
MODEL 59
PROP                                                                                                                                    
REC(-13,322,6,6,r)
VIS 1
PIN(-5,325,0.000,0.000)in22
LIG(-6,325,-5,325)
LIG(-14,329,-14,321)
LIG(-6,329,-14,329)
LIG(-6,321,-6,329)
LIG(-14,321,-6,321)
LIG(-13,328,-13,322)
LIG(-7,328,-13,328)
LIG(-7,322,-7,328)
LIG(-13,322,-7,322)
FSYM
SYM  #button28
BB(-14,331,-5,339)
TITLE -10 335  #button23
MODEL 59
PROP                                                                                                                                    
REC(-13,332,6,6,r)
VIS 1
PIN(-5,335,0.000,0.000)in23
LIG(-6,335,-5,335)
LIG(-14,339,-14,331)
LIG(-6,339,-14,339)
LIG(-6,331,-6,339)
LIG(-14,331,-6,331)
LIG(-13,338,-13,332)
LIG(-7,338,-13,338)
LIG(-7,332,-7,338)
LIG(-13,332,-7,332)
FSYM
SYM  #9tSram
BB(5,295,25,355)
TITLE 15 288  #9tSram
MODEL 6000
PROP                                                                                                                                    
REC(10,300,10,50,r)
VIS 5
PIN(5,305,0.000,0.000)WWL
PIN(5,325,0.000,0.000)WBL
PIN(5,335,0.000,0.000)WBLB
PIN(5,315,0.000,0.000)RWL
PIN(5,345,0.000,0.000)RBL
PIN(25,315,0.010,0.016)Q
PIN(25,305,0.010,0.016)QB
LIG(5,305,10,305)
LIG(5,325,10,325)
LIG(5,335,10,335)
LIG(5,315,10,315)
LIG(5,345,10,345)
LIG(20,315,25,315)
LIG(20,305,25,305)
LIG(10,300,10,350)
LIG(10,300,20,300)
LIG(20,300,20,350)
LIG(20,350,10,350)
VLG module 9tSram( WWL,WBL,WBLB,RWL,RBL,Q,QB);
VLG input WWL,WBL,WBLB,RWL,RBL;
VLG output Q,QB;
VLG wire w9;
VLG nmos #(2) nmos_1(WBLB,QB,WWL); // 0.3u 0.2u
VLG pmos #(4) pmos_2(Q,vdd,QB); // 0.5u 0.2u
VLG nmos #(4) nmos_3(QB,vss,Q); // 0.3u 0.2u
VLG pmos #(4) pmos_4(QB,vdd,Q); // 0.5u 0.2u
VLG nmos #(4) nmos_5(Q,vss,QB); // 0.3u 0.2u
VLG nmos #(4) nmos_6(Q,WBL,WWL); // 0.3u 0.2u
VLG nmos #(2) nmos_7(w9,RBL,RWL); // 0.3u 0.07u
VLG nmos #(2) nmos_8(RWL,w9,Q); // 0.3u 0.07u
VLG nmos #(2) nmos_9(w9,vss,QB); // 0.3u 0.07u
VLG endmodule
FSYM
SYM  #CAM
BB(35,295,55,335)
TITLE 45 288  #Match
MODEL 6000
PROP                                                                                                                                    
REC(40,300,10,30,r)
VIS 1
PIN(35,315,0.000,0.000)Q
PIN(35,305,0.000,0.000)QB
PIN(35,325,0.000,0.000)CAMD
PIN(55,305,0.010,0.010)Match
LIG(35,315,40,315)
LIG(35,305,40,305)
LIG(35,325,40,325)
LIG(50,305,55,305)
LIG(40,300,40,330)
LIG(40,300,50,300)
LIG(50,300,50,330)
LIG(50,330,40,330)
VLG module CAM( Q,QB,CAMD,Match);
VLG input Q,QB,CAMD;
VLG output Match;
VLG wire w3,w7,w8,w9;
VLG nmos #(3) nmos_1(w7,vss,CAMD); // 0.3u 0.07u
VLG pmos #(2) pmos_2(w3,vdd,w7); // 0.5u 0.07u
VLG nmos #(2) nmos_3(w3,vss,w7); // 0.3u 0.07u
VLG pmos #(3) pmos_4(w7,vdd,CAMD); // 0.5u 0.07u
VLG not #(1) not1_5(w8,Q);
VLG nmos #(3) nmos1_6(Match,w3,Q); //  
VLG pmos #(3) pmos1_7(Match,w3,w8); //  
VLG not #(1) not1_8(w9,QB);
VLG nmos #(3) nmos1_9(Match,w7,QB); //  
VLG pmos #(3) pmos1_10(Match,w7,w9); //  
VLG endmodule
FSYM
SYM  #button29
BB(-14,341,-5,349)
TITLE -10 345  #button24
MODEL 59
PROP                                                                                                                                    
REC(-13,342,6,6,r)
VIS 1
PIN(-5,345,0.000,0.000)in24
LIG(-6,345,-5,345)
LIG(-14,349,-14,341)
LIG(-6,349,-14,349)
LIG(-6,341,-6,349)
LIG(-14,341,-6,341)
LIG(-13,348,-13,342)
LIG(-7,348,-13,348)
LIG(-7,342,-7,348)
LIG(-13,342,-7,342)
FSYM
SYM  #button30
BB(66,341,75,349)
TITLE 70 345  #button24
MODEL 59
PROP                                                                                                                                    
REC(67,342,6,6,r)
VIS 1
PIN(75,345,0.000,0.000)in24
LIG(74,345,75,345)
LIG(66,349,66,341)
LIG(74,349,66,349)
LIG(74,341,74,349)
LIG(66,341,74,341)
LIG(67,348,67,342)
LIG(73,348,67,348)
LIG(73,342,73,348)
LIG(67,342,73,342)
FSYM
SYM  #CAM
BB(115,295,135,335)
TITLE 125 288  #Match
MODEL 6000
PROP                                                                                                                                    
REC(120,300,10,30,r)
VIS 1
PIN(115,315,0.000,0.000)Q
PIN(115,305,0.000,0.000)QB
PIN(115,325,0.000,0.000)CAMD
PIN(135,305,0.010,0.010)Match
LIG(115,315,120,315)
LIG(115,305,120,305)
LIG(115,325,120,325)
LIG(130,305,135,305)
LIG(120,300,120,330)
LIG(120,300,130,300)
LIG(130,300,130,330)
LIG(130,330,120,330)
VLG module CAM( Q,QB,CAMD,Match);
VLG input Q,QB,CAMD;
VLG output Match;
VLG wire w3,w7,w8,w9;
VLG nmos #(3) nmos_1(w7,vss,CAMD); // 0.3u 0.07u
VLG pmos #(2) pmos_2(w3,vdd,w7); // 0.5u 0.07u
VLG nmos #(2) nmos_3(w3,vss,w7); // 0.3u 0.07u
VLG pmos #(3) pmos_4(w7,vdd,CAMD); // 0.5u 0.07u
VLG not #(1) not1_5(w8,Q);
VLG nmos #(3) nmos1_6(Match,w3,Q); //  
VLG pmos #(3) pmos1_7(Match,w3,w8); //  
VLG not #(1) not1_8(w9,QB);
VLG nmos #(3) nmos1_9(Match,w7,QB); //  
VLG pmos #(3) pmos1_10(Match,w7,w9); //  
VLG endmodule
FSYM
SYM  #9tSram
BB(85,295,105,355)
TITLE 95 288  #9tSram
MODEL 6000
PROP                                                                                                                                    
REC(90,300,10,50,r)
VIS 5
PIN(85,305,0.000,0.000)WWL
PIN(85,325,0.000,0.000)WBL
PIN(85,335,0.000,0.000)WBLB
PIN(85,315,0.000,0.000)RWL
PIN(85,345,0.000,0.000)RBL
PIN(105,315,0.010,0.016)Q
PIN(105,305,0.010,0.016)QB
LIG(85,305,90,305)
LIG(85,325,90,325)
LIG(85,335,90,335)
LIG(85,315,90,315)
LIG(85,345,90,345)
LIG(100,315,105,315)
LIG(100,305,105,305)
LIG(90,300,90,350)
LIG(90,300,100,300)
LIG(100,300,100,350)
LIG(100,350,90,350)
VLG module 9tSram( WWL,WBL,WBLB,RWL,RBL,Q,QB);
VLG input WWL,WBL,WBLB,RWL,RBL;
VLG output Q,QB;
VLG wire w9;
VLG nmos #(2) nmos_1(WBLB,QB,WWL); // 0.3u 0.2u
VLG pmos #(4) pmos_2(Q,vdd,QB); // 0.5u 0.2u
VLG nmos #(4) nmos_3(QB,vss,Q); // 0.3u 0.2u
VLG pmos #(4) pmos_4(QB,vdd,Q); // 0.5u 0.2u
VLG nmos #(4) nmos_5(Q,vss,QB); // 0.3u 0.2u
VLG nmos #(4) nmos_6(Q,WBL,WWL); // 0.3u 0.2u
VLG nmos #(2) nmos_7(w9,RBL,RWL); // 0.3u 0.07u
VLG nmos #(2) nmos_8(RWL,w9,Q); // 0.3u 0.07u
VLG nmos #(2) nmos_9(w9,vss,QB); // 0.3u 0.07u
VLG endmodule
FSYM
SYM  #button31
BB(66,331,75,339)
TITLE 70 335  #button23
MODEL 59
PROP                                                                                                                                    
REC(67,332,6,6,r)
VIS 1
PIN(75,335,0.000,0.000)in23
LIG(74,335,75,335)
LIG(66,339,66,331)
LIG(74,339,66,339)
LIG(74,331,74,339)
LIG(66,331,74,331)
LIG(67,338,67,332)
LIG(73,338,67,338)
LIG(73,332,73,338)
LIG(67,332,73,332)
FSYM
SYM  #button32
BB(66,321,75,329)
TITLE 70 325  #button22
MODEL 59
PROP                                                                                                                                    
REC(67,322,6,6,r)
VIS 1
PIN(75,325,0.000,0.000)in22
LIG(74,325,75,325)
LIG(66,329,66,321)
LIG(74,329,66,329)
LIG(74,321,74,329)
LIG(66,321,74,321)
LIG(67,328,67,322)
LIG(73,328,67,328)
LIG(73,322,73,328)
LIG(67,322,73,322)
FSYM
SYM  #button33
BB(66,311,75,319)
TITLE 70 315  #button21
MODEL 59
PROP                                                                                                                                    
REC(67,312,6,6,r)
VIS 1
PIN(75,315,0.000,0.000)in21
LIG(74,315,75,315)
LIG(66,319,66,311)
LIG(74,319,66,319)
LIG(74,311,74,319)
LIG(66,311,74,311)
LIG(67,318,67,312)
LIG(73,318,67,318)
LIG(73,312,73,318)
LIG(67,312,73,312)
FSYM
SYM  #button34
BB(66,301,75,309)
TITLE 70 305  #button20
MODEL 59
PROP                                                                                                                                    
REC(67,302,6,6,r)
VIS 1
PIN(75,305,0.000,0.000)in20
LIG(74,305,75,305)
LIG(66,309,66,301)
LIG(74,309,66,309)
LIG(74,301,74,309)
LIG(66,301,74,301)
LIG(67,308,67,302)
LIG(73,308,67,308)
LIG(73,302,73,308)
LIG(67,302,73,302)
FSYM
SYM  #button35
BB(226,301,235,309)
TITLE 230 305  #button20
MODEL 59
PROP                                                                                                                                    
REC(227,302,6,6,r)
VIS 1
PIN(235,305,0.000,0.000)in20
LIG(234,305,235,305)
LIG(226,309,226,301)
LIG(234,309,226,309)
LIG(234,301,234,309)
LIG(226,301,234,301)
LIG(227,308,227,302)
LIG(233,308,227,308)
LIG(233,302,233,308)
LIG(227,302,233,302)
FSYM
SYM  #button36
BB(226,311,235,319)
TITLE 230 315  #button21
MODEL 59
PROP                                                                                                                                    
REC(227,312,6,6,r)
VIS 1
PIN(235,315,0.000,0.000)in21
LIG(234,315,235,315)
LIG(226,319,226,311)
LIG(234,319,226,319)
LIG(234,311,234,319)
LIG(226,311,234,311)
LIG(227,318,227,312)
LIG(233,318,227,318)
LIG(233,312,233,318)
LIG(227,312,233,312)
FSYM
SYM  #button37
BB(226,321,235,329)
TITLE 230 325  #button22
MODEL 59
PROP                                                                                                                                    
REC(227,322,6,6,r)
VIS 1
PIN(235,325,0.000,0.000)in22
LIG(234,325,235,325)
LIG(226,329,226,321)
LIG(234,329,226,329)
LIG(234,321,234,329)
LIG(226,321,234,321)
LIG(227,328,227,322)
LIG(233,328,227,328)
LIG(233,322,233,328)
LIG(227,322,233,322)
FSYM
SYM  #button38
BB(226,331,235,339)
TITLE 230 335  #button23
MODEL 59
PROP                                                                                                                                    
REC(227,332,6,6,r)
VIS 1
PIN(235,335,0.000,0.000)in23
LIG(234,335,235,335)
LIG(226,339,226,331)
LIG(234,339,226,339)
LIG(234,331,234,339)
LIG(226,331,234,331)
LIG(227,338,227,332)
LIG(233,338,227,338)
LIG(233,332,233,338)
LIG(227,332,233,332)
FSYM
SYM  #9tSram
BB(245,295,265,355)
TITLE 255 288  #9tSram
MODEL 6000
PROP                                                                                                                                    
REC(250,300,10,50,r)
VIS 5
PIN(245,305,0.000,0.000)WWL
PIN(245,325,0.000,0.000)WBL
PIN(245,335,0.000,0.000)WBLB
PIN(245,315,0.000,0.000)RWL
PIN(245,345,0.000,0.000)RBL
PIN(265,315,0.010,0.016)Q
PIN(265,305,0.010,0.016)QB
LIG(245,305,250,305)
LIG(245,325,250,325)
LIG(245,335,250,335)
LIG(245,315,250,315)
LIG(245,345,250,345)
LIG(260,315,265,315)
LIG(260,305,265,305)
LIG(250,300,250,350)
LIG(250,300,260,300)
LIG(260,300,260,350)
LIG(260,350,250,350)
VLG module 9tSram( WWL,WBL,WBLB,RWL,RBL,Q,QB);
VLG input WWL,WBL,WBLB,RWL,RBL;
VLG output Q,QB;
VLG wire w9;
VLG nmos #(2) nmos_1(WBLB,QB,WWL); // 0.3u 0.2u
VLG pmos #(4) pmos_2(Q,vdd,QB); // 0.5u 0.2u
VLG nmos #(4) nmos_3(QB,vss,Q); // 0.3u 0.2u
VLG pmos #(4) pmos_4(QB,vdd,Q); // 0.5u 0.2u
VLG nmos #(4) nmos_5(Q,vss,QB); // 0.3u 0.2u
VLG nmos #(4) nmos_6(Q,WBL,WWL); // 0.3u 0.2u
VLG nmos #(2) nmos_7(w9,RBL,RWL); // 0.3u 0.07u
VLG nmos #(2) nmos_8(RWL,w9,Q); // 0.3u 0.07u
VLG nmos #(2) nmos_9(w9,vss,QB); // 0.3u 0.07u
VLG endmodule
FSYM
SYM  #CAM
BB(275,295,295,335)
TITLE 285 288  #Match
MODEL 6000
PROP                                                                                                                                    
REC(280,300,10,30,r)
VIS 1
PIN(275,315,0.000,0.000)Q
PIN(275,305,0.000,0.000)QB
PIN(275,325,0.000,0.000)CAMD
PIN(295,305,0.010,0.010)Match
LIG(275,315,280,315)
LIG(275,305,280,305)
LIG(275,325,280,325)
LIG(290,305,295,305)
LIG(280,300,280,330)
LIG(280,300,290,300)
LIG(290,300,290,330)
LIG(290,330,280,330)
VLG module CAM( Q,QB,CAMD,Match);
VLG input Q,QB,CAMD;
VLG output Match;
VLG wire w3,w7,w8,w9;
VLG nmos #(3) nmos_1(w7,vss,CAMD); // 0.3u 0.07u
VLG pmos #(2) pmos_2(w3,vdd,w7); // 0.5u 0.07u
VLG nmos #(2) nmos_3(w3,vss,w7); // 0.3u 0.07u
VLG pmos #(3) pmos_4(w7,vdd,CAMD); // 0.5u 0.07u
VLG not #(1) not1_5(w8,Q);
VLG nmos #(3) nmos1_6(Match,w3,Q); //  
VLG pmos #(3) pmos1_7(Match,w3,w8); //  
VLG not #(1) not1_8(w9,QB);
VLG nmos #(3) nmos1_9(Match,w7,QB); //  
VLG pmos #(3) pmos1_10(Match,w7,w9); //  
VLG endmodule
FSYM
SYM  #button39
BB(226,341,235,349)
TITLE 230 345  #button24
MODEL 59
PROP                                                                                                                                    
REC(227,342,6,6,r)
VIS 1
PIN(235,345,0.000,0.000)in24
LIG(234,345,235,345)
LIG(226,349,226,341)
LIG(234,349,226,349)
LIG(234,341,234,349)
LIG(226,341,234,341)
LIG(227,348,227,342)
LIG(233,348,227,348)
LIG(233,342,233,348)
LIG(227,342,233,342)
FSYM
SYM  #button40
BB(146,341,155,349)
TITLE 150 345  #button24
MODEL 59
PROP                                                                                                                                    
REC(147,342,6,6,r)
VIS 1
PIN(155,345,0.000,0.000)in24
LIG(154,345,155,345)
LIG(146,349,146,341)
LIG(154,349,146,349)
LIG(154,341,154,349)
LIG(146,341,154,341)
LIG(147,348,147,342)
LIG(153,348,147,348)
LIG(153,342,153,348)
LIG(147,342,153,342)
FSYM
SYM  #CAM
BB(195,295,215,335)
TITLE 205 288  #Match
MODEL 6000
PROP                                                                                                                                    
REC(200,300,10,30,r)
VIS 1
PIN(195,315,0.000,0.000)Q
PIN(195,305,0.000,0.000)QB
PIN(195,325,0.000,0.000)CAMD
PIN(215,305,0.010,0.010)Match
LIG(195,315,200,315)
LIG(195,305,200,305)
LIG(195,325,200,325)
LIG(210,305,215,305)
LIG(200,300,200,330)
LIG(200,300,210,300)
LIG(210,300,210,330)
LIG(210,330,200,330)
VLG module CAM( Q,QB,CAMD,Match);
VLG input Q,QB,CAMD;
VLG output Match;
VLG wire w3,w7,w8,w9;
VLG nmos #(3) nmos_1(w7,vss,CAMD); // 0.3u 0.07u
VLG pmos #(2) pmos_2(w3,vdd,w7); // 0.5u 0.07u
VLG nmos #(2) nmos_3(w3,vss,w7); // 0.3u 0.07u
VLG pmos #(3) pmos_4(w7,vdd,CAMD); // 0.5u 0.07u
VLG not #(1) not1_5(w8,Q);
VLG nmos #(3) nmos1_6(Match,w3,Q); //  
VLG pmos #(3) pmos1_7(Match,w3,w8); //  
VLG not #(1) not1_8(w9,QB);
VLG nmos #(3) nmos1_9(Match,w7,QB); //  
VLG pmos #(3) pmos1_10(Match,w7,w9); //  
VLG endmodule
FSYM
SYM  #9tSram
BB(165,295,185,355)
TITLE 175 288  #9tSram
MODEL 6000
PROP                                                                                                                                    
REC(170,300,10,50,r)
VIS 5
PIN(165,305,0.000,0.000)WWL
PIN(165,325,0.000,0.000)WBL
PIN(165,335,0.000,0.000)WBLB
PIN(165,315,0.000,0.000)RWL
PIN(165,345,0.000,0.000)RBL
PIN(185,315,0.010,0.016)Q
PIN(185,305,0.010,0.016)QB
LIG(165,305,170,305)
LIG(165,325,170,325)
LIG(165,335,170,335)
LIG(165,315,170,315)
LIG(165,345,170,345)
LIG(180,315,185,315)
LIG(180,305,185,305)
LIG(170,300,170,350)
LIG(170,300,180,300)
LIG(180,300,180,350)
LIG(180,350,170,350)
VLG module 9tSram( WWL,WBL,WBLB,RWL,RBL,Q,QB);
VLG input WWL,WBL,WBLB,RWL,RBL;
VLG output Q,QB;
VLG wire w9;
VLG nmos #(2) nmos_1(WBLB,QB,WWL); // 0.3u 0.2u
VLG pmos #(4) pmos_2(Q,vdd,QB); // 0.5u 0.2u
VLG nmos #(4) nmos_3(QB,vss,Q); // 0.3u 0.2u
VLG pmos #(4) pmos_4(QB,vdd,Q); // 0.5u 0.2u
VLG nmos #(4) nmos_5(Q,vss,QB); // 0.3u 0.2u
VLG nmos #(4) nmos_6(Q,WBL,WWL); // 0.3u 0.2u
VLG nmos #(2) nmos_7(w9,RBL,RWL); // 0.3u 0.07u
VLG nmos #(2) nmos_8(RWL,w9,Q); // 0.3u 0.07u
VLG nmos #(2) nmos_9(w9,vss,QB); // 0.3u 0.07u
VLG endmodule
FSYM
SYM  #button41
BB(146,331,155,339)
TITLE 150 335  #button23
MODEL 59
PROP                                                                                                                                    
REC(147,332,6,6,r)
VIS 1
PIN(155,335,0.000,0.000)in23
LIG(154,335,155,335)
LIG(146,339,146,331)
LIG(154,339,146,339)
LIG(154,331,154,339)
LIG(146,331,154,331)
LIG(147,338,147,332)
LIG(153,338,147,338)
LIG(153,332,153,338)
LIG(147,332,153,332)
FSYM
SYM  #button42
BB(146,321,155,329)
TITLE 150 325  #button22
MODEL 59
PROP                                                                                                                                    
REC(147,322,6,6,r)
VIS 1
PIN(155,325,0.000,0.000)in22
LIG(154,325,155,325)
LIG(146,329,146,321)
LIG(154,329,146,329)
LIG(154,321,154,329)
LIG(146,321,154,321)
LIG(147,328,147,322)
LIG(153,328,147,328)
LIG(153,322,153,328)
LIG(147,322,153,322)
FSYM
SYM  #button43
BB(146,311,155,319)
TITLE 150 315  #button21
MODEL 59
PROP                                                                                                                                    
REC(147,312,6,6,r)
VIS 1
PIN(155,315,0.000,0.000)in21
LIG(154,315,155,315)
LIG(146,319,146,311)
LIG(154,319,146,319)
LIG(154,311,154,319)
LIG(146,311,154,311)
LIG(147,318,147,312)
LIG(153,318,147,318)
LIG(153,312,153,318)
LIG(147,312,153,312)
FSYM
SYM  #button44
BB(146,301,155,309)
TITLE 150 305  #button20
MODEL 59
PROP                                                                                                                                    
REC(147,302,6,6,r)
VIS 1
PIN(155,305,0.000,0.000)in20
LIG(154,305,155,305)
LIG(146,309,146,301)
LIG(154,309,146,309)
LIG(154,301,154,309)
LIG(146,301,154,301)
LIG(147,308,147,302)
LIG(153,308,147,308)
LIG(153,302,153,308)
LIG(147,302,153,302)
FSYM
SYM  #button45
BB(141,76,150,84)
TITLE 145 80  #button20
MODEL 59
PROP                                                                                                                                    
REC(142,77,6,6,r)
VIS 1
PIN(150,80,0.000,0.000)in20
LIG(149,80,150,80)
LIG(141,84,141,76)
LIG(149,84,141,84)
LIG(149,76,149,84)
LIG(141,76,149,76)
LIG(142,83,142,77)
LIG(148,83,142,83)
LIG(148,77,148,83)
LIG(142,77,148,77)
FSYM
SYM  #button46
BB(141,86,150,94)
TITLE 145 90  #button21
MODEL 59
PROP                                                                                                                                    
REC(142,87,6,6,r)
VIS 1
PIN(150,90,0.000,0.000)in21
LIG(149,90,150,90)
LIG(141,94,141,86)
LIG(149,94,141,94)
LIG(149,86,149,94)
LIG(141,86,149,86)
LIG(142,93,142,87)
LIG(148,93,142,93)
LIG(148,87,148,93)
LIG(142,87,148,87)
FSYM
SYM  #button47
BB(141,96,150,104)
TITLE 145 100  #button22
MODEL 59
PROP                                                                                                                                    
REC(142,97,6,6,r)
VIS 1
PIN(150,100,0.000,0.000)in22
LIG(149,100,150,100)
LIG(141,104,141,96)
LIG(149,104,141,104)
LIG(149,96,149,104)
LIG(141,96,149,96)
LIG(142,103,142,97)
LIG(148,103,142,103)
LIG(148,97,148,103)
LIG(142,97,148,97)
FSYM
SYM  #button48
BB(141,106,150,114)
TITLE 145 110  #button23
MODEL 59
PROP                                                                                                                                    
REC(142,107,6,6,r)
VIS 1
PIN(150,110,0.000,0.000)in23
LIG(149,110,150,110)
LIG(141,114,141,106)
LIG(149,114,141,114)
LIG(149,106,149,114)
LIG(141,106,149,106)
LIG(142,113,142,107)
LIG(148,113,142,113)
LIG(148,107,148,113)
LIG(142,107,148,107)
FSYM
SYM  #9tSram
BB(160,70,180,130)
TITLE 170 63  #9tSram
MODEL 6000
PROP                                                                                                                                    
REC(165,75,10,50,r)
VIS 5
PIN(160,80,0.000,0.000)WWL
PIN(160,100,0.000,0.000)WBL
PIN(160,110,0.000,0.000)WBLB
PIN(160,90,0.000,0.000)RWL
PIN(160,120,0.000,0.000)RBL
PIN(180,90,0.010,0.016)Q
PIN(180,80,0.010,0.016)QB
LIG(160,80,165,80)
LIG(160,100,165,100)
LIG(160,110,165,110)
LIG(160,90,165,90)
LIG(160,120,165,120)
LIG(175,90,180,90)
LIG(175,80,180,80)
LIG(165,75,165,125)
LIG(165,75,175,75)
LIG(175,75,175,125)
LIG(175,125,165,125)
VLG module 9tSram( WWL,WBL,WBLB,RWL,RBL,Q,QB);
VLG input WWL,WBL,WBLB,RWL,RBL;
VLG output Q,QB;
VLG wire w9;
VLG nmos #(2) nmos_1(WBLB,QB,WWL); // 0.3u 0.2u
VLG pmos #(4) pmos_2(Q,vdd,QB); // 0.5u 0.2u
VLG nmos #(4) nmos_3(QB,vss,Q); // 0.3u 0.2u
VLG pmos #(4) pmos_4(QB,vdd,Q); // 0.5u 0.2u
VLG nmos #(4) nmos_5(Q,vss,QB); // 0.3u 0.2u
VLG nmos #(4) nmos_6(Q,WBL,WWL); // 0.3u 0.2u
VLG nmos #(2) nmos_7(w9,RBL,RWL); // 0.3u 0.07u
VLG nmos #(2) nmos_8(RWL,w9,Q); // 0.3u 0.07u
VLG nmos #(2) nmos_9(w9,vss,QB); // 0.3u 0.07u
VLG endmodule
FSYM
SYM  #CAM
BB(190,70,210,110)
TITLE 200 63  #Match
MODEL 6000
PROP                                                                                                                                    
REC(195,75,10,30,r)
VIS 1
PIN(190,90,0.000,0.000)Q
PIN(190,80,0.000,0.000)QB
PIN(190,100,0.000,0.000)CAMD
PIN(210,80,0.010,0.010)Match
LIG(190,90,195,90)
LIG(190,80,195,80)
LIG(190,100,195,100)
LIG(205,80,210,80)
LIG(195,75,195,105)
LIG(195,75,205,75)
LIG(205,75,205,105)
LIG(205,105,195,105)
VLG module CAM( Q,QB,CAMD,Match);
VLG input Q,QB,CAMD;
VLG output Match;
VLG wire w3,w7,w8,w9;
VLG nmos #(3) nmos_1(w7,vss,CAMD); // 0.3u 0.07u
VLG pmos #(2) pmos_2(w3,vdd,w7); // 0.5u 0.07u
VLG nmos #(2) nmos_3(w3,vss,w7); // 0.3u 0.07u
VLG pmos #(3) pmos_4(w7,vdd,CAMD); // 0.5u 0.07u
VLG not #(1) not1_5(w8,Q);
VLG nmos #(3) nmos1_6(Match,w3,Q); //  
VLG pmos #(3) pmos1_7(Match,w3,w8); //  
VLG not #(1) not1_8(w9,QB);
VLG nmos #(3) nmos1_9(Match,w7,QB); //  
VLG pmos #(3) pmos1_10(Match,w7,w9); //  
VLG endmodule
FSYM
SYM  #button49
BB(141,116,150,124)
TITLE 145 120  #button24
MODEL 59
PROP                                                                                                                                    
REC(142,117,6,6,r)
VIS 1
PIN(150,120,0.000,0.000)in24
LIG(149,120,150,120)
LIG(141,124,141,116)
LIG(149,124,141,124)
LIG(149,116,149,124)
LIG(141,116,149,116)
LIG(142,123,142,117)
LIG(148,123,142,123)
LIG(148,117,148,123)
LIG(142,117,148,117)
FSYM
SYM  #button50
BB(221,116,230,124)
TITLE 225 120  #button24
MODEL 59
PROP                                                                                                                                    
REC(222,117,6,6,r)
VIS 1
PIN(230,120,0.000,0.000)in24
LIG(229,120,230,120)
LIG(221,124,221,116)
LIG(229,124,221,124)
LIG(229,116,229,124)
LIG(221,116,229,116)
LIG(222,123,222,117)
LIG(228,123,222,123)
LIG(228,117,228,123)
LIG(222,117,228,117)
FSYM
SYM  #CAM
BB(270,70,290,110)
TITLE 280 63  #Match
MODEL 6000
PROP                                                                                                                                    
REC(275,75,10,30,r)
VIS 1
PIN(270,90,0.000,0.000)Q
PIN(270,80,0.000,0.000)QB
PIN(270,100,0.000,0.000)CAMD
PIN(290,80,0.010,0.010)Match
LIG(270,90,275,90)
LIG(270,80,275,80)
LIG(270,100,275,100)
LIG(285,80,290,80)
LIG(275,75,275,105)
LIG(275,75,285,75)
LIG(285,75,285,105)
LIG(285,105,275,105)
VLG module CAM( Q,QB,CAMD,Match);
VLG input Q,QB,CAMD;
VLG output Match;
VLG wire w3,w7,w8,w9;
VLG nmos #(3) nmos_1(w7,vss,CAMD); // 0.3u 0.07u
VLG pmos #(2) pmos_2(w3,vdd,w7); // 0.5u 0.07u
VLG nmos #(2) nmos_3(w3,vss,w7); // 0.3u 0.07u
VLG pmos #(3) pmos_4(w7,vdd,CAMD); // 0.5u 0.07u
VLG not #(1) not1_5(w8,Q);
VLG nmos #(3) nmos1_6(Match,w3,Q); //  
VLG pmos #(3) pmos1_7(Match,w3,w8); //  
VLG not #(1) not1_8(w9,QB);
VLG nmos #(3) nmos1_9(Match,w7,QB); //  
VLG pmos #(3) pmos1_10(Match,w7,w9); //  
VLG endmodule
FSYM
SYM  #9tSram
BB(240,70,260,130)
TITLE 250 63  #9tSram
MODEL 6000
PROP                                                                                                                                    
REC(245,75,10,50,r)
VIS 5
PIN(240,80,0.000,0.000)WWL
PIN(240,100,0.000,0.000)WBL
PIN(240,110,0.000,0.000)WBLB
PIN(240,90,0.000,0.000)RWL
PIN(240,120,0.000,0.000)RBL
PIN(260,90,0.010,0.016)Q
PIN(260,80,0.010,0.016)QB
LIG(240,80,245,80)
LIG(240,100,245,100)
LIG(240,110,245,110)
LIG(240,90,245,90)
LIG(240,120,245,120)
LIG(255,90,260,90)
LIG(255,80,260,80)
LIG(245,75,245,125)
LIG(245,75,255,75)
LIG(255,75,255,125)
LIG(255,125,245,125)
VLG module 9tSram( WWL,WBL,WBLB,RWL,RBL,Q,QB);
VLG input WWL,WBL,WBLB,RWL,RBL;
VLG output Q,QB;
VLG wire w9;
VLG nmos #(2) nmos_1(WBLB,QB,WWL); // 0.3u 0.2u
VLG pmos #(4) pmos_2(Q,vdd,QB); // 0.5u 0.2u
VLG nmos #(4) nmos_3(QB,vss,Q); // 0.3u 0.2u
VLG pmos #(4) pmos_4(QB,vdd,Q); // 0.5u 0.2u
VLG nmos #(4) nmos_5(Q,vss,QB); // 0.3u 0.2u
VLG nmos #(4) nmos_6(Q,WBL,WWL); // 0.3u 0.2u
VLG nmos #(2) nmos_7(w9,RBL,RWL); // 0.3u 0.07u
VLG nmos #(2) nmos_8(RWL,w9,Q); // 0.3u 0.07u
VLG nmos #(2) nmos_9(w9,vss,QB); // 0.3u 0.07u
VLG endmodule
FSYM
SYM  #button51
BB(221,106,230,114)
TITLE 225 110  #button23
MODEL 59
PROP                                                                                                                                    
REC(222,107,6,6,r)
VIS 1
PIN(230,110,0.000,0.000)in23
LIG(229,110,230,110)
LIG(221,114,221,106)
LIG(229,114,221,114)
LIG(229,106,229,114)
LIG(221,106,229,106)
LIG(222,113,222,107)
LIG(228,113,222,113)
LIG(228,107,228,113)
LIG(222,107,228,107)
FSYM
SYM  #button52
BB(221,96,230,104)
TITLE 225 100  #button22
MODEL 59
PROP                                                                                                                                    
REC(222,97,6,6,r)
VIS 1
PIN(230,100,0.000,0.000)in22
LIG(229,100,230,100)
LIG(221,104,221,96)
LIG(229,104,221,104)
LIG(229,96,229,104)
LIG(221,96,229,96)
LIG(222,103,222,97)
LIG(228,103,222,103)
LIG(228,97,228,103)
LIG(222,97,228,97)
FSYM
SYM  #button53
BB(221,86,230,94)
TITLE 225 90  #button21
MODEL 59
PROP                                                                                                                                    
REC(222,87,6,6,r)
VIS 1
PIN(230,90,0.000,0.000)in21
LIG(229,90,230,90)
LIG(221,94,221,86)
LIG(229,94,221,94)
LIG(229,86,229,94)
LIG(221,86,229,86)
LIG(222,93,222,87)
LIG(228,93,222,93)
LIG(228,87,228,93)
LIG(222,87,228,87)
FSYM
SYM  #button54
BB(221,76,230,84)
TITLE 225 80  #button20
MODEL 59
PROP                                                                                                                                    
REC(222,77,6,6,r)
VIS 1
PIN(230,80,0.000,0.000)in20
LIG(229,80,230,80)
LIG(221,84,221,76)
LIG(229,84,221,84)
LIG(229,76,229,84)
LIG(221,76,229,76)
LIG(222,83,222,77)
LIG(228,83,222,83)
LIG(228,77,228,83)
LIG(222,77,228,77)
FSYM
SYM  #button55
BB(61,76,70,84)
TITLE 65 80  #button20
MODEL 59
PROP                                                                                                                                    
REC(62,77,6,6,r)
VIS 1
PIN(70,80,0.000,0.000)in20
LIG(69,80,70,80)
LIG(61,84,61,76)
LIG(69,84,61,84)
LIG(69,76,69,84)
LIG(61,76,69,76)
LIG(62,83,62,77)
LIG(68,83,62,83)
LIG(68,77,68,83)
LIG(62,77,68,77)
FSYM
SYM  #button56
BB(61,86,70,94)
TITLE 65 90  #button21
MODEL 59
PROP                                                                                                                                    
REC(62,87,6,6,r)
VIS 1
PIN(70,90,0.000,0.000)in21
LIG(69,90,70,90)
LIG(61,94,61,86)
LIG(69,94,61,94)
LIG(69,86,69,94)
LIG(61,86,69,86)
LIG(62,93,62,87)
LIG(68,93,62,93)
LIG(68,87,68,93)
LIG(62,87,68,87)
FSYM
SYM  #button57
BB(61,96,70,104)
TITLE 65 100  #button22
MODEL 59
PROP                                                                                                                                    
REC(62,97,6,6,r)
VIS 1
PIN(70,100,0.000,0.000)in22
LIG(69,100,70,100)
LIG(61,104,61,96)
LIG(69,104,61,104)
LIG(69,96,69,104)
LIG(61,96,69,96)
LIG(62,103,62,97)
LIG(68,103,62,103)
LIG(68,97,68,103)
LIG(62,97,68,97)
FSYM
SYM  #button58
BB(61,106,70,114)
TITLE 65 110  #button23
MODEL 59
PROP                                                                                                                                    
REC(62,107,6,6,r)
VIS 1
PIN(70,110,0.000,0.000)in23
LIG(69,110,70,110)
LIG(61,114,61,106)
LIG(69,114,61,114)
LIG(69,106,69,114)
LIG(61,106,69,106)
LIG(62,113,62,107)
LIG(68,113,62,113)
LIG(68,107,68,113)
LIG(62,107,68,107)
FSYM
SYM  #9tSram
BB(80,70,100,130)
TITLE 90 63  #9tSram
MODEL 6000
PROP                                                                                                                                    
REC(85,75,10,50,r)
VIS 5
PIN(80,80,0.000,0.000)WWL
PIN(80,100,0.000,0.000)WBL
PIN(80,110,0.000,0.000)WBLB
PIN(80,90,0.000,0.000)RWL
PIN(80,120,0.000,0.000)RBL
PIN(100,90,0.010,0.016)Q
PIN(100,80,0.010,0.016)QB
LIG(80,80,85,80)
LIG(80,100,85,100)
LIG(80,110,85,110)
LIG(80,90,85,90)
LIG(80,120,85,120)
LIG(95,90,100,90)
LIG(95,80,100,80)
LIG(85,75,85,125)
LIG(85,75,95,75)
LIG(95,75,95,125)
LIG(95,125,85,125)
VLG module 9tSram( WWL,WBL,WBLB,RWL,RBL,Q,QB);
VLG input WWL,WBL,WBLB,RWL,RBL;
VLG output Q,QB;
VLG wire w9;
VLG nmos #(2) nmos_1(WBLB,QB,WWL); // 0.3u 0.2u
VLG pmos #(4) pmos_2(Q,vdd,QB); // 0.5u 0.2u
VLG nmos #(4) nmos_3(QB,vss,Q); // 0.3u 0.2u
VLG pmos #(4) pmos_4(QB,vdd,Q); // 0.5u 0.2u
VLG nmos #(4) nmos_5(Q,vss,QB); // 0.3u 0.2u
VLG nmos #(4) nmos_6(Q,WBL,WWL); // 0.3u 0.2u
VLG nmos #(2) nmos_7(w9,RBL,RWL); // 0.3u 0.07u
VLG nmos #(2) nmos_8(RWL,w9,Q); // 0.3u 0.07u
VLG nmos #(2) nmos_9(w9,vss,QB); // 0.3u 0.07u
VLG endmodule
FSYM
SYM  #CAM
BB(110,70,130,110)
TITLE 120 63  #Match
MODEL 6000
PROP                                                                                                                                    
REC(115,75,10,30,r)
VIS 1
PIN(110,90,0.000,0.000)Q
PIN(110,80,0.000,0.000)QB
PIN(110,100,0.000,0.000)CAMD
PIN(130,80,0.010,0.010)Match
LIG(110,90,115,90)
LIG(110,80,115,80)
LIG(110,100,115,100)
LIG(125,80,130,80)
LIG(115,75,115,105)
LIG(115,75,125,75)
LIG(125,75,125,105)
LIG(125,105,115,105)
VLG module CAM( Q,QB,CAMD,Match);
VLG input Q,QB,CAMD;
VLG output Match;
VLG wire w3,w7,w8,w9;
VLG nmos #(3) nmos_1(w7,vss,CAMD); // 0.3u 0.07u
VLG pmos #(2) pmos_2(w3,vdd,w7); // 0.5u 0.07u
VLG nmos #(2) nmos_3(w3,vss,w7); // 0.3u 0.07u
VLG pmos #(3) pmos_4(w7,vdd,CAMD); // 0.5u 0.07u
VLG not #(1) not1_5(w8,Q);
VLG nmos #(3) nmos1_6(Match,w3,Q); //  
VLG pmos #(3) pmos1_7(Match,w3,w8); //  
VLG not #(1) not1_8(w9,QB);
VLG nmos #(3) nmos1_9(Match,w7,QB); //  
VLG pmos #(3) pmos1_10(Match,w7,w9); //  
VLG endmodule
FSYM
SYM  #button59
BB(61,116,70,124)
TITLE 65 120  #button24
MODEL 59
PROP                                                                                                                                    
REC(62,117,6,6,r)
VIS 1
PIN(70,120,0.000,0.000)in24
LIG(69,120,70,120)
LIG(61,124,61,116)
LIG(69,124,61,124)
LIG(69,116,69,124)
LIG(61,116,69,116)
LIG(62,123,62,117)
LIG(68,123,62,123)
LIG(68,117,68,123)
LIG(62,117,68,117)
FSYM
SYM  #button60
BB(-19,116,-10,124)
TITLE -15 120  #button24
MODEL 59
PROP                                                                                                                                    
REC(-18,117,6,6,r)
VIS 1
PIN(-10,120,0.000,0.000)in24
LIG(-11,120,-10,120)
LIG(-19,124,-19,116)
LIG(-11,124,-19,124)
LIG(-11,116,-11,124)
LIG(-19,116,-11,116)
LIG(-18,123,-18,117)
LIG(-12,123,-18,123)
LIG(-12,117,-12,123)
LIG(-18,117,-12,117)
FSYM
SYM  #CAM
BB(30,70,50,110)
TITLE 40 63  #Match
MODEL 6000
PROP                                                                                                                                    
REC(35,75,10,30,r)
VIS 1
PIN(30,90,0.000,0.000)Q
PIN(30,80,0.000,0.000)QB
PIN(30,100,0.000,0.000)CAMD
PIN(50,80,0.010,0.010)Match
LIG(30,90,35,90)
LIG(30,80,35,80)
LIG(30,100,35,100)
LIG(45,80,50,80)
LIG(35,75,35,105)
LIG(35,75,45,75)
LIG(45,75,45,105)
LIG(45,105,35,105)
VLG module CAM( Q,QB,CAMD,Match);
VLG input Q,QB,CAMD;
VLG output Match;
VLG wire w3,w7,w8,w9;
VLG nmos #(3) nmos_1(w7,vss,CAMD); // 0.3u 0.07u
VLG pmos #(2) pmos_2(w3,vdd,w7); // 0.5u 0.07u
VLG nmos #(2) nmos_3(w3,vss,w7); // 0.3u 0.07u
VLG pmos #(3) pmos_4(w7,vdd,CAMD); // 0.5u 0.07u
VLG not #(1) not1_5(w8,Q);
VLG nmos #(3) nmos1_6(Match,w3,Q); //  
VLG pmos #(3) pmos1_7(Match,w3,w8); //  
VLG not #(1) not1_8(w9,QB);
VLG nmos #(3) nmos1_9(Match,w7,QB); //  
VLG pmos #(3) pmos1_10(Match,w7,w9); //  
VLG endmodule
FSYM
SYM  #9tSram
BB(0,70,20,130)
TITLE 10 63  #9tSram
MODEL 6000
PROP                                                                                                                                    
REC(5,75,10,50,r)
VIS 5
PIN(0,80,0.000,0.000)WWL
PIN(0,100,0.000,0.000)WBL
PIN(0,110,0.000,0.000)WBLB
PIN(0,90,0.000,0.000)RWL
PIN(0,120,0.000,0.000)RBL
PIN(20,90,0.010,0.016)Q
PIN(20,80,0.010,0.016)QB
LIG(0,80,5,80)
LIG(0,100,5,100)
LIG(0,110,5,110)
LIG(0,90,5,90)
LIG(0,120,5,120)
LIG(15,90,20,90)
LIG(15,80,20,80)
LIG(5,75,5,125)
LIG(5,75,15,75)
LIG(15,75,15,125)
LIG(15,125,5,125)
VLG module 9tSram( WWL,WBL,WBLB,RWL,RBL,Q,QB);
VLG input WWL,WBL,WBLB,RWL,RBL;
VLG output Q,QB;
VLG wire w9;
VLG nmos #(2) nmos_1(WBLB,QB,WWL); // 0.3u 0.2u
VLG pmos #(4) pmos_2(Q,vdd,QB); // 0.5u 0.2u
VLG nmos #(4) nmos_3(QB,vss,Q); // 0.3u 0.2u
VLG pmos #(4) pmos_4(QB,vdd,Q); // 0.5u 0.2u
VLG nmos #(4) nmos_5(Q,vss,QB); // 0.3u 0.2u
VLG nmos #(4) nmos_6(Q,WBL,WWL); // 0.3u 0.2u
VLG nmos #(2) nmos_7(w9,RBL,RWL); // 0.3u 0.07u
VLG nmos #(2) nmos_8(RWL,w9,Q); // 0.3u 0.07u
VLG nmos #(2) nmos_9(w9,vss,QB); // 0.3u 0.07u
VLG endmodule
FSYM
SYM  #button61
BB(-19,106,-10,114)
TITLE -15 110  #button23
MODEL 59
PROP                                                                                                                                    
REC(-18,107,6,6,r)
VIS 1
PIN(-10,110,0.000,0.000)in23
LIG(-11,110,-10,110)
LIG(-19,114,-19,106)
LIG(-11,114,-19,114)
LIG(-11,106,-11,114)
LIG(-19,106,-11,106)
LIG(-18,113,-18,107)
LIG(-12,113,-18,113)
LIG(-12,107,-12,113)
LIG(-18,107,-12,107)
FSYM
SYM  #button62
BB(-19,96,-10,104)
TITLE -15 100  #button22
MODEL 59
PROP                                                                                                                                    
REC(-18,97,6,6,r)
VIS 1
PIN(-10,100,0.000,0.000)in22
LIG(-11,100,-10,100)
LIG(-19,104,-19,96)
LIG(-11,104,-19,104)
LIG(-11,96,-11,104)
LIG(-19,96,-11,96)
LIG(-18,103,-18,97)
LIG(-12,103,-18,103)
LIG(-12,97,-12,103)
LIG(-18,97,-12,97)
FSYM
SYM  #button63
BB(-19,86,-10,94)
TITLE -15 90  #button21
MODEL 59
PROP                                                                                                                                    
REC(-18,87,6,6,r)
VIS 1
PIN(-10,90,0.000,0.000)in21
LIG(-11,90,-10,90)
LIG(-19,94,-19,86)
LIG(-11,94,-19,94)
LIG(-11,86,-11,94)
LIG(-19,86,-11,86)
LIG(-18,93,-18,87)
LIG(-12,93,-18,93)
LIG(-12,87,-12,93)
LIG(-18,87,-12,87)
FSYM
SYM  #button64
BB(-19,76,-10,84)
TITLE -15 80  #button20
MODEL 59
PROP                                                                                                                                    
REC(-18,77,6,6,r)
VIS 1
PIN(-10,80,0.000,0.000)in20
LIG(-11,80,-10,80)
LIG(-19,84,-19,76)
LIG(-11,84,-19,84)
LIG(-11,76,-11,84)
LIG(-19,76,-11,76)
LIG(-18,83,-18,77)
LIG(-12,83,-18,83)
LIG(-12,77,-12,83)
LIG(-18,77,-12,77)
FSYM
SYM  #button84
BB(141,-34,150,-26)
TITLE 145 -30  #button20
MODEL 59
PROP                                                                                                                                    
REC(142,-33,6,6,r)
VIS 1
PIN(150,-30,0.000,0.000)in20
LIG(149,-30,150,-30)
LIG(141,-26,141,-34)
LIG(149,-26,141,-26)
LIG(149,-34,149,-26)
LIG(141,-34,149,-34)
LIG(142,-27,142,-33)
LIG(148,-27,142,-27)
LIG(148,-33,148,-27)
LIG(142,-33,148,-33)
FSYM
SYM  #light
BB(508,140,514,154)
TITLE 510 154  #Q1
MODEL 49
PROP                                                                                                                                   
REC(509,141,4,4,r)
VIS 1
PIN(510,155,0.000,0.000)Q1
LIG(513,146,513,141)
LIG(513,141,512,140)
LIG(509,141,509,146)
LIG(512,151,512,148)
LIG(511,151,514,151)
LIG(511,153,513,151)
LIG(512,153,514,151)
LIG(508,148,514,148)
LIG(510,148,510,155)
LIG(508,146,508,148)
LIG(514,146,508,146)
LIG(514,148,514,146)
LIG(510,140,509,141)
LIG(512,140,510,140)
FSYM
SYM  #and2
BB(305,160,340,180)
TITLE 317 171  #&
MODEL 402
PROP                                                                                                                                    
REC(-55,145,0,0, )
VIS 0
PIN(305,175,0.000,0.000)b
PIN(305,165,0.000,0.000)a
PIN(340,170,0.015,0.002)s
LIG(305,175,313,175)
LIG(313,160,313,180)
LIG(333,170,340,170)
LIG(332,172,329,176)
LIG(333,170,332,172)
LIG(332,168,333,170)
LIG(329,164,332,168)
LIG(324,161,329,164)
LIG(329,176,324,179)
LIG(324,179,313,180)
LIG(313,160,324,161)
LIG(305,165,313,165)
VLG and and2(out,a,b);
FSYM
SYM  #and2
BB(350,150,385,170)
TITLE 362 161  #&
MODEL 402
PROP                                                                                                                                    
REC(-55,145,0,0, )
VIS 0
PIN(350,165,0.000,0.000)b
PIN(350,155,0.000,0.000)a
PIN(385,160,0.015,0.004)s
LIG(350,165,358,165)
LIG(358,150,358,170)
LIG(378,160,385,160)
LIG(377,162,374,166)
LIG(378,160,377,162)
LIG(377,158,378,160)
LIG(374,154,377,158)
LIG(369,151,374,154)
LIG(374,166,369,169)
LIG(369,169,358,170)
LIG(358,150,369,151)
LIG(350,155,358,155)
VLG and and2(out,a,b);
FSYM
SYM  #light4c
BB(383,145,389,159)
TITLE 385 159  #light7
MODEL 49
PROP                                                                                                                                    
REC(384,146,4,4,r)
VIS 1
PIN(385,160,0.000,0.000)L1-Match
LIG(388,151,388,146)
LIG(388,146,387,145)
LIG(384,146,384,151)
LIG(387,156,387,153)
LIG(386,156,389,156)
LIG(386,158,388,156)
LIG(387,158,389,156)
LIG(383,153,389,153)
LIG(385,153,385,160)
LIG(383,151,383,153)
LIG(389,151,383,151)
LIG(389,153,389,151)
LIG(385,145,384,146)
LIG(387,145,385,145)
FSYM
SYM  #and2
BB(305,135,340,155)
TITLE 317 146  #&
MODEL 402
PROP                                                                                                                                    
REC(-55,145,0,0, )
VIS 0
PIN(305,150,0.000,0.000)b
PIN(305,140,0.000,0.000)a
PIN(340,145,0.015,0.002)s
LIG(305,150,313,150)
LIG(313,135,313,155)
LIG(333,145,340,145)
LIG(332,147,329,151)
LIG(333,145,332,147)
LIG(332,143,333,145)
LIG(329,139,332,143)
LIG(324,136,329,139)
LIG(329,151,324,154)
LIG(324,154,313,155)
LIG(313,135,324,136)
LIG(305,140,313,140)
VLG and and2(out,a,b);
FSYM
SYM  #light8
BB(548,140,554,154)
TITLE 550 154  #light7
MODEL 49
PROP                                                                                                                                    
REC(549,141,4,4,r)
VIS 1
PIN(550,155,0.000,0.000)V
LIG(553,146,553,141)
LIG(553,141,552,140)
LIG(549,141,549,146)
LIG(552,151,552,148)
LIG(551,151,554,151)
LIG(551,153,553,151)
LIG(552,153,554,151)
LIG(548,148,554,148)
LIG(550,148,550,155)
LIG(548,146,548,148)
LIG(554,146,548,146)
LIG(554,148,554,146)
LIG(550,140,549,141)
LIG(552,140,550,140)
FSYM
SYM  #light7
BB(523,140,529,154)
TITLE 525 154  #Q0
MODEL 49
PROP                                                                                                                                    
REC(524,141,4,4,r)
VIS 1
PIN(525,155,0.000,0.000)Q0
LIG(528,146,528,141)
LIG(528,141,527,140)
LIG(524,141,524,146)
LIG(527,151,527,148)
LIG(526,151,529,151)
LIG(526,153,528,151)
LIG(527,153,529,151)
LIG(523,148,529,148)
LIG(525,148,525,155)
LIG(523,146,523,148)
LIG(529,146,523,146)
LIG(529,148,529,146)
LIG(525,140,524,141)
LIG(527,140,525,140)
FSYM
SYM  #button65
BB(-19,-34,-10,-26)
TITLE -15 -30  #button20
MODEL 59
PROP                                                                                                                                    
REC(-18,-33,6,6,r)
VIS 1
PIN(-10,-30,0.000,0.000)in20
LIG(-11,-30,-10,-30)
LIG(-19,-26,-19,-34)
LIG(-11,-26,-19,-26)
LIG(-11,-34,-11,-26)
LIG(-19,-34,-11,-34)
LIG(-18,-27,-18,-33)
LIG(-12,-27,-18,-27)
LIG(-12,-33,-12,-27)
LIG(-18,-33,-12,-33)
FSYM
SYM  #button66
BB(-19,-24,-10,-16)
TITLE -15 -20  #button21
MODEL 59
PROP                                                                                                                                    
REC(-18,-23,6,6,r)
VIS 1
PIN(-10,-20,0.000,0.000)in21
LIG(-11,-20,-10,-20)
LIG(-19,-16,-19,-24)
LIG(-11,-16,-19,-16)
LIG(-11,-24,-11,-16)
LIG(-19,-24,-11,-24)
LIG(-18,-17,-18,-23)
LIG(-12,-17,-18,-17)
LIG(-12,-23,-12,-17)
LIG(-18,-23,-12,-23)
FSYM
SYM  #button67
BB(-19,-14,-10,-6)
TITLE -15 -10  #button22
MODEL 59
PROP                                                                                                                                    
REC(-18,-13,6,6,r)
VIS 1
PIN(-10,-10,0.000,0.000)in22
LIG(-11,-10,-10,-10)
LIG(-19,-6,-19,-14)
LIG(-11,-6,-19,-6)
LIG(-11,-14,-11,-6)
LIG(-19,-14,-11,-14)
LIG(-18,-7,-18,-13)
LIG(-12,-7,-18,-7)
LIG(-12,-13,-12,-7)
LIG(-18,-13,-12,-13)
FSYM
SYM  #button68
BB(-19,-4,-10,4)
TITLE -15 0  #button23
MODEL 59
PROP                                                                                                                                    
REC(-18,-3,6,6,r)
VIS 1
PIN(-10,0,0.000,0.000)in23
LIG(-11,0,-10,0)
LIG(-19,4,-19,-4)
LIG(-11,4,-19,4)
LIG(-11,-4,-11,4)
LIG(-19,-4,-11,-4)
LIG(-18,3,-18,-3)
LIG(-12,3,-18,3)
LIG(-12,-3,-12,3)
LIG(-18,-3,-12,-3)
FSYM
SYM  #9tSram
BB(0,-40,20,20)
TITLE 10 -47  #9tSram
MODEL 6000
PROP                                                                                                                                    
REC(5,-35,10,50,r)
VIS 5
PIN(0,-30,0.000,0.000)WWL
PIN(0,-10,0.000,0.000)WBL
PIN(0,0,0.000,0.000)WBLB
PIN(0,-20,0.000,0.000)RWL
PIN(0,10,0.000,0.000)RBL
PIN(20,-20,0.010,0.016)Q
PIN(20,-30,0.010,0.016)QB
LIG(0,-30,5,-30)
LIG(0,-10,5,-10)
LIG(0,0,5,0)
LIG(0,-20,5,-20)
LIG(0,10,5,10)
LIG(15,-20,20,-20)
LIG(15,-30,20,-30)
LIG(5,-35,5,15)
LIG(5,-35,15,-35)
LIG(15,-35,15,15)
LIG(15,15,5,15)
VLG module 9tSram( WWL,WBL,WBLB,RWL,RBL,Q,QB);
VLG input WWL,WBL,WBLB,RWL,RBL;
VLG output Q,QB;
VLG wire w9;
VLG nmos #(2) nmos_1(WBLB,QB,WWL); // 0.3u 0.2u
VLG pmos #(4) pmos_2(Q,vdd,QB); // 0.5u 0.2u
VLG nmos #(4) nmos_3(QB,vss,Q); // 0.3u 0.2u
VLG pmos #(4) pmos_4(QB,vdd,Q); // 0.5u 0.2u
VLG nmos #(4) nmos_5(Q,vss,QB); // 0.3u 0.2u
VLG nmos #(4) nmos_6(Q,WBL,WWL); // 0.3u 0.2u
VLG nmos #(2) nmos_7(w9,RBL,RWL); // 0.3u 0.07u
VLG nmos #(2) nmos_8(RWL,w9,Q); // 0.3u 0.07u
VLG nmos #(2) nmos_9(w9,vss,QB); // 0.3u 0.07u
VLG endmodule
FSYM
SYM  #CAM
BB(30,-40,50,0)
TITLE 40 -47  #Match
MODEL 6000
PROP                                                                                                                                    
REC(35,-35,10,30,r)
VIS 1
PIN(30,-20,0.000,0.000)Q
PIN(30,-30,0.000,0.000)QB
PIN(30,-10,0.000,0.000)CAMD
PIN(50,-30,0.010,0.010)Match
LIG(30,-20,35,-20)
LIG(30,-30,35,-30)
LIG(30,-10,35,-10)
LIG(45,-30,50,-30)
LIG(35,-35,35,-5)
LIG(35,-35,45,-35)
LIG(45,-35,45,-5)
LIG(45,-5,35,-5)
VLG module CAM( Q,QB,CAMD,Match);
VLG input Q,QB,CAMD;
VLG output Match;
VLG wire w3,w7,w8,w9;
VLG nmos #(3) nmos_1(w7,vss,CAMD); // 0.3u 0.07u
VLG pmos #(2) pmos_2(w3,vdd,w7); // 0.5u 0.07u
VLG nmos #(2) nmos_3(w3,vss,w7); // 0.3u 0.07u
VLG pmos #(3) pmos_4(w7,vdd,CAMD); // 0.5u 0.07u
VLG not #(1) not1_5(w8,Q);
VLG nmos #(3) nmos1_6(Match,w3,Q); //  
VLG pmos #(3) pmos1_7(Match,w3,w8); //  
VLG not #(1) not1_8(w9,QB);
VLG nmos #(3) nmos1_9(Match,w7,QB); //  
VLG pmos #(3) pmos1_10(Match,w7,w9); //  
VLG endmodule
FSYM
SYM  #button69
BB(-19,6,-10,14)
TITLE -15 10  #button24
MODEL 59
PROP                                                                                                                                    
REC(-18,7,6,6,r)
VIS 1
PIN(-10,10,0.000,0.000)in24
LIG(-11,10,-10,10)
LIG(-19,14,-19,6)
LIG(-11,14,-19,14)
LIG(-11,6,-11,14)
LIG(-19,6,-11,6)
LIG(-18,13,-18,7)
LIG(-12,13,-18,13)
LIG(-12,7,-12,13)
LIG(-18,7,-12,7)
FSYM
SYM  #button70
BB(61,6,70,14)
TITLE 65 10  #button24
MODEL 59
PROP                                                                                                                                    
REC(62,7,6,6,r)
VIS 1
PIN(70,10,0.000,0.000)in24
LIG(69,10,70,10)
LIG(61,14,61,6)
LIG(69,14,61,14)
LIG(69,6,69,14)
LIG(61,6,69,6)
LIG(62,13,62,7)
LIG(68,13,62,13)
LIG(68,7,68,13)
LIG(62,7,68,7)
FSYM
SYM  #CAM
BB(110,-40,130,0)
TITLE 120 -47  #Match
MODEL 6000
PROP                                                                                                                                    
REC(115,-35,10,30,r)
VIS 1
PIN(110,-20,0.000,0.000)Q
PIN(110,-30,0.000,0.000)QB
PIN(110,-10,0.000,0.000)CAMD
PIN(130,-30,0.010,0.010)Match
LIG(110,-20,115,-20)
LIG(110,-30,115,-30)
LIG(110,-10,115,-10)
LIG(125,-30,130,-30)
LIG(115,-35,115,-5)
LIG(115,-35,125,-35)
LIG(125,-35,125,-5)
LIG(125,-5,115,-5)
VLG module CAM( Q,QB,CAMD,Match);
VLG input Q,QB,CAMD;
VLG output Match;
VLG wire w3,w7,w8,w9;
VLG nmos #(3) nmos_1(w7,vss,CAMD); // 0.3u 0.07u
VLG pmos #(2) pmos_2(w3,vdd,w7); // 0.5u 0.07u
VLG nmos #(2) nmos_3(w3,vss,w7); // 0.3u 0.07u
VLG pmos #(3) pmos_4(w7,vdd,CAMD); // 0.5u 0.07u
VLG not #(1) not1_5(w8,Q);
VLG nmos #(3) nmos1_6(Match,w3,Q); //  
VLG pmos #(3) pmos1_7(Match,w3,w8); //  
VLG not #(1) not1_8(w9,QB);
VLG nmos #(3) nmos1_9(Match,w7,QB); //  
VLG pmos #(3) pmos1_10(Match,w7,w9); //  
VLG endmodule
FSYM
SYM  #9tSram
BB(80,-40,100,20)
TITLE 90 -47  #9tSram
MODEL 6000
PROP                                                                                                                                    
REC(85,-35,10,50,r)
VIS 5
PIN(80,-30,0.000,0.000)WWL
PIN(80,-10,0.000,0.000)WBL
PIN(80,0,0.000,0.000)WBLB
PIN(80,-20,0.000,0.000)RWL
PIN(80,10,0.000,0.000)RBL
PIN(100,-20,0.010,0.016)Q
PIN(100,-30,0.010,0.016)QB
LIG(80,-30,85,-30)
LIG(80,-10,85,-10)
LIG(80,0,85,0)
LIG(80,-20,85,-20)
LIG(80,10,85,10)
LIG(95,-20,100,-20)
LIG(95,-30,100,-30)
LIG(85,-35,85,15)
LIG(85,-35,95,-35)
LIG(95,-35,95,15)
LIG(95,15,85,15)
VLG module 9tSram( WWL,WBL,WBLB,RWL,RBL,Q,QB);
VLG input WWL,WBL,WBLB,RWL,RBL;
VLG output Q,QB;
VLG wire w9;
VLG nmos #(2) nmos_1(WBLB,QB,WWL); // 0.3u 0.2u
VLG pmos #(4) pmos_2(Q,vdd,QB); // 0.5u 0.2u
VLG nmos #(4) nmos_3(QB,vss,Q); // 0.3u 0.2u
VLG pmos #(4) pmos_4(QB,vdd,Q); // 0.5u 0.2u
VLG nmos #(4) nmos_5(Q,vss,QB); // 0.3u 0.2u
VLG nmos #(4) nmos_6(Q,WBL,WWL); // 0.3u 0.2u
VLG nmos #(2) nmos_7(w9,RBL,RWL); // 0.3u 0.07u
VLG nmos #(2) nmos_8(RWL,w9,Q); // 0.3u 0.07u
VLG nmos #(2) nmos_9(w9,vss,QB); // 0.3u 0.07u
VLG endmodule
FSYM
SYM  #button71
BB(61,-4,70,4)
TITLE 65 0  #button23
MODEL 59
PROP                                                                                                                                    
REC(62,-3,6,6,r)
VIS 1
PIN(70,0,0.000,0.000)in23
LIG(69,0,70,0)
LIG(61,4,61,-4)
LIG(69,4,61,4)
LIG(69,-4,69,4)
LIG(61,-4,69,-4)
LIG(62,3,62,-3)
LIG(68,3,62,3)
LIG(68,-3,68,3)
LIG(62,-3,68,-3)
FSYM
SYM  #button72
BB(61,-14,70,-6)
TITLE 65 -10  #button22
MODEL 59
PROP                                                                                                                                    
REC(62,-13,6,6,r)
VIS 1
PIN(70,-10,0.000,0.000)in22
LIG(69,-10,70,-10)
LIG(61,-6,61,-14)
LIG(69,-6,61,-6)
LIG(69,-14,69,-6)
LIG(61,-14,69,-14)
LIG(62,-7,62,-13)
LIG(68,-7,62,-7)
LIG(68,-13,68,-7)
LIG(62,-13,68,-13)
FSYM
SYM  #button73
BB(61,-24,70,-16)
TITLE 65 -20  #button21
MODEL 59
PROP                                                                                                                                    
REC(62,-23,6,6,r)
VIS 1
PIN(70,-20,0.000,0.000)in21
LIG(69,-20,70,-20)
LIG(61,-16,61,-24)
LIG(69,-16,61,-16)
LIG(69,-24,69,-16)
LIG(61,-24,69,-24)
LIG(62,-17,62,-23)
LIG(68,-17,62,-17)
LIG(68,-23,68,-17)
LIG(62,-23,68,-23)
FSYM
SYM  #button74
BB(61,-34,70,-26)
TITLE 65 -30  #button20
MODEL 59
PROP                                                                                                                                    
REC(62,-33,6,6,r)
VIS 1
PIN(70,-30,0.000,0.000)in20
LIG(69,-30,70,-30)
LIG(61,-26,61,-34)
LIG(69,-26,61,-26)
LIG(69,-34,69,-26)
LIG(61,-34,69,-34)
LIG(62,-27,62,-33)
LIG(68,-27,62,-27)
LIG(68,-33,68,-27)
LIG(62,-33,68,-33)
FSYM
SYM  #button75
BB(221,-34,230,-26)
TITLE 225 -30  #button20
MODEL 59
PROP                                                                                                                                    
REC(222,-33,6,6,r)
VIS 1
PIN(230,-30,0.000,0.000)in20
LIG(229,-30,230,-30)
LIG(221,-26,221,-34)
LIG(229,-26,221,-26)
LIG(229,-34,229,-26)
LIG(221,-34,229,-34)
LIG(222,-27,222,-33)
LIG(228,-27,222,-27)
LIG(228,-33,228,-27)
LIG(222,-33,228,-33)
FSYM
SYM  #button76
BB(221,-24,230,-16)
TITLE 225 -20  #button21
MODEL 59
PROP                                                                                                                                    
REC(222,-23,6,6,r)
VIS 1
PIN(230,-20,0.000,0.000)in21
LIG(229,-20,230,-20)
LIG(221,-16,221,-24)
LIG(229,-16,221,-16)
LIG(229,-24,229,-16)
LIG(221,-24,229,-24)
LIG(222,-17,222,-23)
LIG(228,-17,222,-17)
LIG(228,-23,228,-17)
LIG(222,-23,228,-23)
FSYM
SYM  #button77
BB(221,-14,230,-6)
TITLE 225 -10  #button22
MODEL 59
PROP                                                                                                                                    
REC(222,-13,6,6,r)
VIS 1
PIN(230,-10,0.000,0.000)in22
LIG(229,-10,230,-10)
LIG(221,-6,221,-14)
LIG(229,-6,221,-6)
LIG(229,-14,229,-6)
LIG(221,-14,229,-14)
LIG(222,-7,222,-13)
LIG(228,-7,222,-7)
LIG(228,-13,228,-7)
LIG(222,-13,228,-13)
FSYM
SYM  #button78
BB(221,-4,230,4)
TITLE 225 0  #button23
MODEL 59
PROP                                                                                                                                    
REC(222,-3,6,6,r)
VIS 1
PIN(230,0,0.000,0.000)in23
LIG(229,0,230,0)
LIG(221,4,221,-4)
LIG(229,4,221,4)
LIG(229,-4,229,4)
LIG(221,-4,229,-4)
LIG(222,3,222,-3)
LIG(228,3,222,3)
LIG(228,-3,228,3)
LIG(222,-3,228,-3)
FSYM
SYM  #9tSram
BB(240,-40,260,20)
TITLE 250 -47  #9tSram
MODEL 6000
PROP                                                                                                                                    
REC(245,-35,10,50,r)
VIS 5
PIN(240,-30,0.000,0.000)WWL
PIN(240,-10,0.000,0.000)WBL
PIN(240,0,0.000,0.000)WBLB
PIN(240,-20,0.000,0.000)RWL
PIN(240,10,0.000,0.000)RBL
PIN(260,-20,0.010,0.016)Q
PIN(260,-30,0.010,0.016)QB
LIG(240,-30,245,-30)
LIG(240,-10,245,-10)
LIG(240,0,245,0)
LIG(240,-20,245,-20)
LIG(240,10,245,10)
LIG(255,-20,260,-20)
LIG(255,-30,260,-30)
LIG(245,-35,245,15)
LIG(245,-35,255,-35)
LIG(255,-35,255,15)
LIG(255,15,245,15)
VLG module 9tSram( WWL,WBL,WBLB,RWL,RBL,Q,QB);
VLG input WWL,WBL,WBLB,RWL,RBL;
VLG output Q,QB;
VLG wire w9;
VLG nmos #(2) nmos_1(WBLB,QB,WWL); // 0.3u 0.2u
VLG pmos #(4) pmos_2(Q,vdd,QB); // 0.5u 0.2u
VLG nmos #(4) nmos_3(QB,vss,Q); // 0.3u 0.2u
VLG pmos #(4) pmos_4(QB,vdd,Q); // 0.5u 0.2u
VLG nmos #(4) nmos_5(Q,vss,QB); // 0.3u 0.2u
VLG nmos #(4) nmos_6(Q,WBL,WWL); // 0.3u 0.2u
VLG nmos #(2) nmos_7(w9,RBL,RWL); // 0.3u 0.07u
VLG nmos #(2) nmos_8(RWL,w9,Q); // 0.3u 0.07u
VLG nmos #(2) nmos_9(w9,vss,QB); // 0.3u 0.07u
VLG endmodule
FSYM
SYM  #and2
BB(310,375,345,395)
TITLE 322 386  #&
MODEL 402
PROP                                                                                                                                    
REC(-50,360,0,0, )
VIS 0
PIN(310,390,0.000,0.000)b
PIN(310,380,0.000,0.000)a
PIN(345,385,0.015,0.002)s
LIG(310,390,318,390)
LIG(318,375,318,395)
LIG(338,385,345,385)
LIG(337,387,334,391)
LIG(338,385,337,387)
LIG(337,383,338,385)
LIG(334,379,337,383)
LIG(329,376,334,379)
LIG(334,391,329,394)
LIG(329,394,318,395)
LIG(318,375,329,376)
LIG(310,380,318,380)
VLG and and2(out,a,b);
FSYM
SYM  #and2
BB(355,365,390,385)
TITLE 367 376  #&
MODEL 402
PROP                                                                                                                                    
REC(-50,360,0,0, )
VIS 0
PIN(355,380,0.000,0.000)b
PIN(355,370,0.000,0.000)a
PIN(390,375,0.015,0.006)s
LIG(355,380,363,380)
LIG(363,365,363,385)
LIG(383,375,390,375)
LIG(382,377,379,381)
LIG(383,375,382,377)
LIG(382,373,383,375)
LIG(379,369,382,373)
LIG(374,366,379,369)
LIG(379,381,374,384)
LIG(374,384,363,385)
LIG(363,365,374,366)
LIG(355,370,363,370)
VLG and and2(out,a,b);
FSYM
SYM  #light4cc
BB(388,360,394,374)
TITLE 390 374  #light7
MODEL 49
PROP                                                                                                                                    
REC(389,361,4,4,r)
VIS 1
PIN(390,375,0.000,0.000)L3-Match
LIG(393,366,393,361)
LIG(393,361,392,360)
LIG(389,361,389,366)
LIG(392,371,392,368)
LIG(391,371,394,371)
LIG(391,373,393,371)
LIG(392,373,394,371)
LIG(388,368,394,368)
LIG(390,368,390,375)
LIG(388,366,388,368)
LIG(394,366,388,366)
LIG(394,368,394,366)
LIG(390,360,389,361)
LIG(392,360,390,360)
FSYM
SYM  #and2
BB(310,350,345,370)
TITLE 322 361  #&
MODEL 402
PROP                                                                                                                                    
REC(-50,360,0,0, )
VIS 0
PIN(310,365,0.000,0.000)b
PIN(310,355,0.000,0.000)a
PIN(345,360,0.015,0.002)s
LIG(310,365,318,365)
LIG(318,350,318,370)
LIG(338,360,345,360)
LIG(337,362,334,366)
LIG(338,360,337,362)
LIG(337,358,338,360)
LIG(334,354,337,358)
LIG(329,351,334,354)
LIG(334,366,329,369)
LIG(329,369,318,370)
LIG(318,350,329,351)
LIG(310,355,318,355)
VLG and and2(out,a,b);
FSYM
SYM  #and2
BB(305,15,340,35)
TITLE 317 26  #&
MODEL 402
PROP                                                                                                                                    
REC(-55,25,0,0, )
VIS 0
PIN(305,30,0.000,0.000)b
PIN(305,20,0.000,0.000)a
PIN(340,25,0.015,0.002)s
LIG(305,30,313,30)
LIG(313,15,313,35)
LIG(333,25,340,25)
LIG(332,27,329,31)
LIG(333,25,332,27)
LIG(332,23,333,25)
LIG(329,19,332,23)
LIG(324,16,329,19)
LIG(329,31,324,34)
LIG(324,34,313,35)
LIG(313,15,324,16)
LIG(305,20,313,20)
VLG and and2(out,a,b);
FSYM
SYM  #light4
BB(383,25,389,39)
TITLE 385 39  #light7
MODEL 49
PROP                                                                                                                                    
REC(384,26,4,4,r)
VIS 1
PIN(385,40,0.000,0.000)L0-Match
LIG(388,31,388,26)
LIG(388,26,387,25)
LIG(384,26,384,31)
LIG(387,36,387,33)
LIG(386,36,389,36)
LIG(386,38,388,36)
LIG(387,38,389,36)
LIG(383,33,389,33)
LIG(385,33,385,40)
LIG(383,31,383,33)
LIG(389,31,383,31)
LIG(389,33,389,31)
LIG(385,25,384,26)
LIG(387,25,385,25)
FSYM
SYM  #and2
BB(350,30,385,50)
TITLE 362 41  #&
MODEL 402
PROP                                                                                                                                    
REC(-55,25,0,0, )
VIS 0
PIN(350,45,0.000,0.000)b
PIN(350,35,0.000,0.000)a
PIN(385,40,0.015,0.006)s
LIG(350,45,358,45)
LIG(358,30,358,50)
LIG(378,40,385,40)
LIG(377,42,374,46)
LIG(378,40,377,42)
LIG(377,38,378,40)
LIG(374,34,377,38)
LIG(369,31,374,34)
LIG(374,46,369,49)
LIG(369,49,358,50)
LIG(358,30,369,31)
LIG(350,35,358,35)
VLG and and2(out,a,b);
FSYM
SYM  #and2
BB(305,40,340,60)
TITLE 317 51  #&
MODEL 402
PROP                                                                                                                                    
REC(-55,25,0,0, )
VIS 0
PIN(305,55,0.000,0.000)b
PIN(305,45,0.000,0.000)a
PIN(340,50,0.015,0.002)s
LIG(305,55,313,55)
LIG(313,40,313,60)
LIG(333,50,340,50)
LIG(332,52,329,56)
LIG(333,50,332,52)
LIG(332,48,333,50)
LIG(329,44,332,48)
LIG(324,41,329,44)
LIG(329,56,324,59)
LIG(324,59,313,60)
LIG(313,40,324,41)
LIG(305,45,313,45)
VLG and and2(out,a,b);
FSYM
SYM  #and2
BB(305,240,340,260)
TITLE 317 251  #&
MODEL 402
PROP                                                                                                                                    
REC(-55,250,0,0, )
VIS 0
PIN(305,255,0.000,0.000)b
PIN(305,245,0.000,0.000)a
PIN(340,250,0.015,0.002)s
LIG(305,255,313,255)
LIG(313,240,313,260)
LIG(333,250,340,250)
LIG(332,252,329,256)
LIG(333,250,332,252)
LIG(332,248,333,250)
LIG(329,244,332,248)
LIG(324,241,329,244)
LIG(329,256,324,259)
LIG(324,259,313,260)
LIG(313,240,324,241)
LIG(305,245,313,245)
VLG and and2(out,a,b);
FSYM
SYM  #light4c
BB(383,250,389,264)
TITLE 385 264  #light7
MODEL 49
PROP                                                                                                                                    
REC(384,251,4,4,r)
VIS 1
PIN(385,265,0.000,0.000)L2-Match
LIG(388,256,388,251)
LIG(388,251,387,250)
LIG(384,251,384,256)
LIG(387,261,387,258)
LIG(386,261,389,261)
LIG(386,263,388,261)
LIG(387,263,389,261)
LIG(383,258,389,258)
LIG(385,258,385,265)
LIG(383,256,383,258)
LIG(389,256,383,256)
LIG(389,258,389,256)
LIG(385,250,384,251)
LIG(387,250,385,250)
FSYM
SYM  #and2
BB(350,255,385,275)
TITLE 362 266  #&
MODEL 402
PROP                                                                                                                                    
REC(-55,250,0,0, )
VIS 0
PIN(350,270,0.000,0.000)b
PIN(350,260,0.000,0.000)a
PIN(385,265,0.015,0.004)s
LIG(350,270,358,270)
LIG(358,255,358,275)
LIG(378,265,385,265)
LIG(377,267,374,271)
LIG(378,265,377,267)
LIG(377,263,378,265)
LIG(374,259,377,263)
LIG(369,256,374,259)
LIG(374,271,369,274)
LIG(369,274,358,275)
LIG(358,255,369,256)
LIG(350,260,358,260)
VLG and and2(out,a,b);
FSYM
SYM  #and2
BB(305,265,340,285)
TITLE 317 276  #&
MODEL 402
PROP                                                                                                                                    
REC(-55,250,0,0, )
VIS 0
PIN(305,280,0.000,0.000)b
PIN(305,270,0.000,0.000)a
PIN(340,275,0.015,0.002)s
LIG(305,280,313,280)
LIG(313,265,313,285)
LIG(333,275,340,275)
LIG(332,277,329,281)
LIG(333,275,332,277)
LIG(332,273,333,275)
LIG(329,269,332,273)
LIG(324,266,329,269)
LIG(329,281,324,284)
LIG(324,284,313,285)
LIG(313,265,324,266)
LIG(305,270,313,270)
VLG and and2(out,a,b);
FSYM
SYM  #encoder
BB(445,155,485,205)
TITLE 455 148  #encoder
MODEL 6000
PROP                                                                                                                                    
REC(450,160,30,40,r)
VIS 5
PIN(445,165,0.000,0.000)D3
PIN(445,175,0.000,0.000)D2
PIN(445,185,0.000,0.000)D1
PIN(445,195,0.000,0.000)D0
PIN(485,185,0.010,0.006)V
PIN(485,165,0.010,0.004)Q0
PIN(485,175,0.010,0.004)Q1
LIG(445,165,450,165)
LIG(445,175,450,175)
LIG(445,185,450,185)
LIG(445,195,450,195)
LIG(480,185,485,185)
LIG(480,165,485,165)
LIG(480,175,485,175)
LIG(450,160,450,200)
LIG(450,160,480,160)
LIG(480,160,480,200)
LIG(480,200,450,200)
VLG module encoder( D3,D2,D1,D0,V,Q0,Q1);
VLG input D3,D2,D1,D0;
VLG output V,Q0,Q1;
VLG wire w9;
VLG nor #(3) nor2_1(Q1,D1,D0);
VLG nor #(3) nor2_2(Q0,D2,D0);
VLG not #(1) not1_3(w9,vdd);
VLG nmos #(2) nmos1_4(V,D3,vdd); //  
VLG pmos #(2) pmos1_5(V,D3,w9); //  
VLG endmodule
FSYM
CNC(185 -10)
CNC(25 -10)
CNC(30 215)
CNC(105 -10)
CNC(265 -10)
CNC(270 215)
CNC(190 215)
CNC(110 215)
LIG(150,10,160,10)
LIG(230,-30,240,-30)
LIG(185,-10,185,100)
LIG(85,-80,85,-50)
LIG(105,-10,105,100)
LIG(25,-10,25,100)
LIG(190,215,195,215)
LIG(70,-80,70,-40)
LIG(270,215,275,215)
LIG(25,-10,30,-10)
LIG(110,215,115,215)
LIG(55,-80,55,-40)
LIG(110,100,110,215)
LIG(25,-40,25,-10)
LIG(30,215,35,215)
LIG(30,100,30,215)
LIG(55,-40,25,-40)
LIG(155,235,165,235)
LIG(155,225,165,225)
LIG(75,235,85,235)
LIG(75,225,85,225)
LIG(75,215,85,215)
LIG(75,205,85,205)
LIG(75,195,85,195)
LIG(105,205,115,205)
LIG(105,195,115,195)
LIG(25,195,35,195)
LIG(25,205,35,205)
LIG(-5,195,5,195)
LIG(-5,205,5,205)
LIG(-5,215,5,215)
LIG(-5,225,5,225)
LIG(-5,235,5,235)
LIG(235,235,245,235)
LIG(235,225,245,225)
LIG(235,215,245,215)
LIG(235,205,245,205)
LIG(235,195,245,195)
LIG(265,205,275,205)
LIG(265,195,275,195)
LIG(185,195,195,195)
LIG(100,-80,100,-55)
LIG(185,205,195,205)
LIG(155,195,165,195)
LIG(155,205,165,205)
LIG(155,215,165,215)
LIG(190,100,190,215)
LIG(105,-40,105,-10)
LIG(270,100,270,215)
LIG(135,195,135,270)
LIG(215,195,215,255)
LIG(295,195,295,245)
LIG(55,195,55,280)
LIG(190,325,195,325)
LIG(260,-30,270,-30)
LIG(100,-20,110,-20)
LIG(525,165,525,155)
LIG(70,-20,80,-20)
LIG(485,165,525,165)
LIG(100,-30,110,-30)
LIG(20,-30,30,-30)
LIG(20,-20,30,-20)
LIG(-10,-30,0,-30)
LIG(-10,-20,0,-20)
LIG(-10,-10,0,-10)
LIG(-10,0,0,0)
LIG(55,305,55,390)
LIG(295,305,295,355)
LIG(385,265,420,265)
LIG(135,305,135,380)
LIG(270,215,270,325)
LIG(190,215,190,325)
LIG(155,325,165,325)
LIG(155,315,165,315)
LIG(155,305,165,305)
LIG(185,315,195,315)
LIG(185,305,195,305)
LIG(265,305,275,305)
LIG(265,315,275,315)
LIG(235,305,245,305)
LIG(235,315,245,315)
LIG(235,325,245,325)
LIG(235,335,245,335)
LIG(235,345,245,345)
LIG(-5,345,5,345)
LIG(-5,335,5,335)
LIG(-5,325,5,325)
LIG(-5,315,5,315)
LIG(-5,305,5,305)
LIG(25,315,35,315)
LIG(25,305,35,305)
LIG(105,305,115,305)
LIG(105,315,115,315)
LIG(75,305,85,305)
LIG(75,315,85,315)
LIG(75,325,85,325)
LIG(75,335,85,335)
LIG(75,345,85,345)
LIG(155,335,165,335)
LIG(155,345,165,345)
LIG(150,0,160,0)
LIG(30,215,30,325)
LIG(30,325,35,325)
LIG(70,10,80,10)
LIG(110,215,110,325)
LIG(110,325,115,325)
LIG(185,100,190,100)
LIG(265,100,270,100)
LIG(265,-10,270,-10)
LIG(105,100,110,100)
LIG(70,0,80,0)
LIG(70,-10,80,-10)
LIG(25,100,30,100)
LIG(70,-40,105,-40)
LIG(85,-50,185,-50)
LIG(150,120,160,120)
LIG(150,110,160,110)
LIG(70,120,80,120)
LIG(70,110,80,110)
LIG(70,100,80,100)
LIG(70,90,80,90)
LIG(70,80,80,80)
LIG(100,90,110,90)
LIG(100,80,110,80)
LIG(20,80,30,80)
LIG(20,90,30,90)
LIG(-10,80,0,80)
LIG(-10,90,0,90)
LIG(-10,100,0,100)
LIG(-10,110,0,110)
LIG(-10,120,0,120)
LIG(230,120,240,120)
LIG(230,110,240,110)
LIG(230,100,240,100)
LIG(230,90,240,90)
LIG(230,80,240,80)
LIG(260,90,270,90)
LIG(260,80,270,80)
LIG(180,80,190,80)
LIG(180,90,190,90)
LIG(150,80,160,80)
LIG(150,90,160,90)
LIG(150,100,160,100)
LIG(105,-10,110,-10)
LIG(345,165,350,165)
LIG(265,-10,265,100)
LIG(130,80,130,165)
LIG(210,80,210,150)
LIG(290,80,290,140)
LIG(50,80,50,175)
LIG(230,-20,240,-20)
LIG(340,145,350,155)
LIG(230,0,240,0)
LIG(230,-10,240,-10)
LIG(510,175,510,155)
LIG(485,175,510,175)
LIG(70,-30,80,-30)
LIG(340,170,345,170)
LIG(345,170,345,165)
LIG(230,10,240,10)
LIG(-10,10,0,10)
LIG(260,-20,270,-20)
LIG(185,-10,190,-10)
LIG(270,325,275,325)
LIG(50,-30,50,55)
LIG(290,0,290,-30)
LIG(210,-30,210,30)
LIG(130,-30,130,45)
LIG(265,-55,265,-10)
LIG(100,-55,265,-55)
LIG(185,-50,185,-10)
LIG(150,-10,160,-10)
LIG(150,-20,160,-20)
LIG(150,-30,160,-30)
LIG(180,-20,190,-20)
LIG(180,-30,190,-30)
LIG(350,380,355,380)
LIG(345,360,355,370)
LIG(345,385,350,385)
LIG(350,385,350,380)
LIG(345,50,345,45)
LIG(340,50,345,50)
LIG(340,25,350,35)
LIG(345,45,350,45)
LIG(345,275,345,270)
LIG(340,275,345,275)
LIG(340,250,350,260)
LIG(345,270,350,270)
LIG(305,20,295,20)
LIG(295,20,295,0)
LIG(295,0,290,0)
LIG(305,30,210,30)
LIG(305,45,130,45)
LIG(305,55,50,55)
LIG(305,140,290,140)
LIG(445,185,385,185)
LIG(305,150,210,150)
LIG(305,165,130,165)
LIG(305,280,55,280)
LIG(305,245,295,245)
LIG(305,175,50,175)
LIG(305,255,215,255)
LIG(305,270,135,270)
LIG(310,355,295,355)
LIG(55,390,310,390)
LIG(310,380,135,380)
LIG(215,305,215,360)
LIG(215,360,310,360)
LIG(310,360,310,365)
LIG(385,40,385,120)
LIG(385,120,425,120)
LIG(425,120,425,195)
LIG(425,195,445,195)
LIG(390,375,435,375)
LIG(550,155,550,185)
LIG(420,175,420,265)
LIG(550,185,485,185)
LIG(435,165,435,375)
LIG(385,185,385,160)
LIG(445,175,420,175)
LIG(435,165,445,165)
TEXT 346 345  #4-input And gate
TEXT 336 120  #4-input And gate
TEXT 341 235  #4-input And gate
TEXT 341 10  #4-input And gate
TEXT 433 120  #when the output is  '1 1', valid bit should be '1' to have valid output, otherwise, valid bit may not be considered
FFIG C:\Users\abood\OneDrive\Desktop\SRAM\match.sch
