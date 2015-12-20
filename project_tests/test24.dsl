-- Needs test14.dsl to have been executed first.
-- db1.tbl3 has a secondary b-tree tree index on col1 and col2, and a clustered index on col7 with the form of a sorted column
-- testing shared scan on 100 queries
--
-- Query in SQL:
-- Q1: SELECT db1.tbl3.col4 FROM db1.tbl3 WHERE db1.tbl3.col4 >= 78091301 and db1.tbl3.col4 < 118548668--
-- Q2: SELECT db1.tbl3.col6 FROM db1.tbl3 WHERE db1.tbl3.col6 >= 153472534 and db1.tbl3.col6 < 190489750--
-- Q3: SELECT db1.tbl3.col4 FROM db1.tbl3 WHERE db1.tbl3.col3 >= -250003324 and db1.tbl3.col3 < -153542055--
-- Q4: SELECT db1.tbl3.col7 FROM db1.tbl3 WHERE db1.tbl3.col1 >= 360161038 and db1.tbl3.col1 < 430400334--
-- Q5: SELECT db1.tbl3.col3 FROM db1.tbl3 WHERE db1.tbl3.col2 >= 174964847 and db1.tbl3.col2 < 234227183--
-- Q6: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col5 >= -367021856 and db1.tbl3.col5 < -284434020--
-- Q7: SELECT db1.tbl3.col7 FROM db1.tbl3 WHERE db1.tbl3.col7 >= 113326821 and db1.tbl3.col7 < 141646368--
-- Q8: SELECT db1.tbl3.col1 FROM db1.tbl3 WHERE db1.tbl3.col1 >= 441002272 and db1.tbl3.col1 < 488716814--
-- Q9: SELECT db1.tbl3.col3 FROM db1.tbl3 WHERE db1.tbl3.col7 >= -185636195 and db1.tbl3.col7 < -119462531--
-- Q10: SELECT db1.tbl3.col4 FROM db1.tbl3 WHERE db1.tbl3.col1 >= 84546226 and db1.tbl3.col1 < 172851319--
-- Q11: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col2 >= -87129792 and db1.tbl3.col2 < -59360427--
-- Q12: SELECT db1.tbl3.col4 FROM db1.tbl3 WHERE db1.tbl3.col6 >= 157890939 and db1.tbl3.col6 < 222902219--
-- Q13: SELECT db1.tbl3.col6 FROM db1.tbl3 WHERE db1.tbl3.col2 >= 67235477 and db1.tbl3.col2 < 120298588--
-- Q14: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col1 >= 275512701 and db1.tbl3.col1 < 307758138--
-- Q15: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col6 >= 447693925 and db1.tbl3.col6 < 505186288--
-- Q16: SELECT db1.tbl3.col3 FROM db1.tbl3 WHERE db1.tbl3.col2 >= -225296608 and db1.tbl3.col2 < -154002650--
-- Q17: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col1 >= -44265141 and db1.tbl3.col1 < -6894806--
-- Q18: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col6 >= 277511390 and db1.tbl3.col6 < 338521394--
-- Q19: SELECT db1.tbl3.col3 FROM db1.tbl3 WHERE db1.tbl3.col4 >= -494991426 and db1.tbl3.col4 < -416548436--
-- Q20: SELECT db1.tbl3.col3 FROM db1.tbl3 WHERE db1.tbl3.col3 >= -420074968 and db1.tbl3.col3 < -361470774--
-- Q21: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col3 >= 369545546 and db1.tbl3.col3 < 445047037--
-- Q22: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col4 >= 410533818 and db1.tbl3.col4 < 474542045--
-- Q23: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col1 >= -10613883 and db1.tbl3.col1 < 48994212--
-- Q24: SELECT db1.tbl3.col3 FROM db1.tbl3 WHERE db1.tbl3.col3 >= 84935049 and db1.tbl3.col3 < 150335078--
-- Q25: SELECT db1.tbl3.col4 FROM db1.tbl3 WHERE db1.tbl3.col2 >= -58653183 and db1.tbl3.col2 < 38997682--
-- Q26: SELECT db1.tbl3.col3 FROM db1.tbl3 WHERE db1.tbl3.col1 >= -497169574 and db1.tbl3.col1 < -432013190--
-- Q27: SELECT db1.tbl3.col1 FROM db1.tbl3 WHERE db1.tbl3.col1 >= -391243588 and db1.tbl3.col1 < -332187713--
-- Q28: SELECT db1.tbl3.col7 FROM db1.tbl3 WHERE db1.tbl3.col4 >= -41359716 and db1.tbl3.col4 < 16378595--
-- Q29: SELECT db1.tbl3.col4 FROM db1.tbl3 WHERE db1.tbl3.col4 >= 226215201 and db1.tbl3.col4 < 318560817--
-- Q30: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col3 >= 149529118 and db1.tbl3.col3 < 242744663--
-- Q31: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col2 >= 119112000 and db1.tbl3.col2 < 195638496--
-- Q32: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col5 >= 329423194 and db1.tbl3.col5 < 390343915--
-- Q33: SELECT db1.tbl3.col6 FROM db1.tbl3 WHERE db1.tbl3.col7 >= -64643317 and db1.tbl3.col7 < 24770102--
-- Q34: SELECT db1.tbl3.col6 FROM db1.tbl3 WHERE db1.tbl3.col7 >= -453764114 and db1.tbl3.col7 < -360281715--
-- Q35: SELECT db1.tbl3.col6 FROM db1.tbl3 WHERE db1.tbl3.col7 >= 481319360 and db1.tbl3.col7 < 527730790--
-- Q36: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col1 >= 95132764 and db1.tbl3.col1 < 189101240--
-- Q37: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col3 >= -420254323 and db1.tbl3.col3 < -380655100--
-- Q38: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col1 >= 499698038 and db1.tbl3.col1 < 591263085--
-- Q39: SELECT db1.tbl3.col4 FROM db1.tbl3 WHERE db1.tbl3.col6 >= 195236794 and db1.tbl3.col6 < 259420890--
-- Q40: SELECT db1.tbl3.col3 FROM db1.tbl3 WHERE db1.tbl3.col5 >= 55519873 and db1.tbl3.col5 < 100461610--
-- Q41: SELECT db1.tbl3.col3 FROM db1.tbl3 WHERE db1.tbl3.col5 >= 127128892 and db1.tbl3.col5 < 167848424--
-- Q42: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col7 >= 371337450 and db1.tbl3.col7 < 445257198--
-- Q43: SELECT db1.tbl3.col1 FROM db1.tbl3 WHERE db1.tbl3.col3 >= -410977715 and db1.tbl3.col3 < -381833981--
-- Q44: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col4 >= 259399505 and db1.tbl3.col4 < 331562621--
-- Q45: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col5 >= 6506961 and db1.tbl3.col5 < 69571682--
-- Q46: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col4 >= -158474130 and db1.tbl3.col4 < -78983150--
-- Q47: SELECT db1.tbl3.col4 FROM db1.tbl3 WHERE db1.tbl3.col4 >= -22991906 and db1.tbl3.col4 < 38001447--
-- Q48: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col6 >= 301096974 and db1.tbl3.col6 < 356491240--
-- Q49: SELECT db1.tbl3.col6 FROM db1.tbl3 WHERE db1.tbl3.col7 >= 492349412 and db1.tbl3.col7 < 571398582--
-- Q50: SELECT db1.tbl3.col1 FROM db1.tbl3 WHERE db1.tbl3.col6 >= 336456972 and db1.tbl3.col6 < 362680808--
-- Q51: SELECT db1.tbl3.col3 FROM db1.tbl3 WHERE db1.tbl3.col3 >= 240442123 and db1.tbl3.col3 < 311215095--
-- Q52: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col2 >= -331469608 and db1.tbl3.col2 < -299310616--
-- Q53: SELECT db1.tbl3.col6 FROM db1.tbl3 WHERE db1.tbl3.col7 >= -280123662 and db1.tbl3.col7 < -199255210--
-- Q54: SELECT db1.tbl3.col7 FROM db1.tbl3 WHERE db1.tbl3.col2 >= 71894452 and db1.tbl3.col2 < 129842903--
-- Q55: SELECT db1.tbl3.col7 FROM db1.tbl3 WHERE db1.tbl3.col7 >= -483951887 and db1.tbl3.col7 < -443852342--
-- Q56: SELECT db1.tbl3.col6 FROM db1.tbl3 WHERE db1.tbl3.col5 >= 22819317 and db1.tbl3.col5 < 108555336--
-- Q57: SELECT db1.tbl3.col6 FROM db1.tbl3 WHERE db1.tbl3.col7 >= -173301758 and db1.tbl3.col7 < -144727706--
-- Q58: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col1 >= 65179224 and db1.tbl3.col1 < 154659451--
-- Q59: SELECT db1.tbl3.col3 FROM db1.tbl3 WHERE db1.tbl3.col5 >= -328569839 and db1.tbl3.col5 < -291739661--
-- Q60: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col7 >= 499837966 and db1.tbl3.col7 < 527173370--
-- Q61: SELECT db1.tbl3.col7 FROM db1.tbl3 WHERE db1.tbl3.col4 >= -150644332 and db1.tbl3.col4 < -95838232--
-- Q62: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col3 >= -354491026 and db1.tbl3.col3 < -264573770--
-- Q63: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col5 >= 222559031 and db1.tbl3.col5 < 321510974--
-- Q64: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col6 >= 322304307 and db1.tbl3.col6 < 373055394--
-- Q65: SELECT db1.tbl3.col4 FROM db1.tbl3 WHERE db1.tbl3.col4 >= -305663742 and db1.tbl3.col4 < -248196424--
-- Q66: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col7 >= -312536623 and db1.tbl3.col7 < -239995514--
-- Q67: SELECT db1.tbl3.col4 FROM db1.tbl3 WHERE db1.tbl3.col7 >= 293598100 and db1.tbl3.col7 < 345612415--
-- Q68: SELECT db1.tbl3.col3 FROM db1.tbl3 WHERE db1.tbl3.col1 >= -448162272 and db1.tbl3.col1 < -399839264--
-- Q69: SELECT db1.tbl3.col7 FROM db1.tbl3 WHERE db1.tbl3.col1 >= -323256760 and db1.tbl3.col1 < -250542801--
-- Q70: SELECT db1.tbl3.col3 FROM db1.tbl3 WHERE db1.tbl3.col2 >= 447384849 and db1.tbl3.col2 < 475592549--
-- Q71: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col4 >= -154662112 and db1.tbl3.col4 < -115042289--
-- Q72: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col3 >= 252345823 and db1.tbl3.col3 < 312462825--
-- Q73: SELECT db1.tbl3.col6 FROM db1.tbl3 WHERE db1.tbl3.col7 >= -326893763 and db1.tbl3.col7 < -235919881--
-- Q74: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col3 >= 13355759 and db1.tbl3.col3 < 105103269--
-- Q75: SELECT db1.tbl3.col3 FROM db1.tbl3 WHERE db1.tbl3.col1 >= 459738708 and db1.tbl3.col1 < 493617104--
-- Q76: SELECT db1.tbl3.col1 FROM db1.tbl3 WHERE db1.tbl3.col6 >= -189161728 and db1.tbl3.col6 < -142414286--
-- Q77: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col7 >= -154417725 and db1.tbl3.col7 < -61376565--
-- Q78: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col5 >= 32526875 and db1.tbl3.col5 < 58443401--
-- Q79: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col5 >= 193408990 and db1.tbl3.col5 < 225676112--
-- Q80: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col4 >= 76962210 and db1.tbl3.col4 < 131897012--
-- Q81: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col3 >= 468813389 and db1.tbl3.col3 < 507951011--
-- Q82: SELECT db1.tbl3.col7 FROM db1.tbl3 WHERE db1.tbl3.col4 >= -425133621 and db1.tbl3.col4 < -339292028--
-- Q83: SELECT db1.tbl3.col1 FROM db1.tbl3 WHERE db1.tbl3.col6 >= -161502296 and db1.tbl3.col6 < -67605868--
-- Q84: SELECT db1.tbl3.col6 FROM db1.tbl3 WHERE db1.tbl3.col3 >= 125330981 and db1.tbl3.col3 < 224335358--
-- Q85: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col2 >= -210798428 and db1.tbl3.col2 < -124248746--
-- Q86: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col2 >= 114703242 and db1.tbl3.col2 < 183546410--
-- Q87: SELECT db1.tbl3.col3 FROM db1.tbl3 WHERE db1.tbl3.col4 >= -468904197 and db1.tbl3.col4 < -443494567--
-- Q88: SELECT db1.tbl3.col1 FROM db1.tbl3 WHERE db1.tbl3.col1 >= 270723639 and db1.tbl3.col1 < 369159775--
-- Q89: SELECT db1.tbl3.col1 FROM db1.tbl3 WHERE db1.tbl3.col3 >= -485371660 and db1.tbl3.col3 < -427823180--
-- Q90: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col5 >= 401555762 and db1.tbl3.col5 < 467932624--
-- Q91: SELECT db1.tbl3.col1 FROM db1.tbl3 WHERE db1.tbl3.col3 >= -40895399 and db1.tbl3.col3 < 9290713--
-- Q92: SELECT db1.tbl3.col1 FROM db1.tbl3 WHERE db1.tbl3.col5 >= -11173457 and db1.tbl3.col5 < 67027144--
-- Q93: SELECT db1.tbl3.col3 FROM db1.tbl3 WHERE db1.tbl3.col1 >= -234686440 and db1.tbl3.col1 < -196480879--
-- Q94: SELECT db1.tbl3.col4 FROM db1.tbl3 WHERE db1.tbl3.col2 >= -421423727 and db1.tbl3.col2 < -357056300--
-- Q95: SELECT db1.tbl3.col1 FROM db1.tbl3 WHERE db1.tbl3.col1 >= -379615260 and db1.tbl3.col1 < -301710639--
-- Q96: SELECT db1.tbl3.col6 FROM db1.tbl3 WHERE db1.tbl3.col6 >= 75792799 and db1.tbl3.col6 < 148433333--
-- Q97: SELECT db1.tbl3.col6 FROM db1.tbl3 WHERE db1.tbl3.col3 >= 9759189 and db1.tbl3.col3 < 88237605--
-- Q98: SELECT db1.tbl3.col5 FROM db1.tbl3 WHERE db1.tbl3.col5 >= 146309601 and db1.tbl3.col5 < 211477802--
-- Q99: SELECT db1.tbl3.col2 FROM db1.tbl3 WHERE db1.tbl3.col3 >= 191299214 and db1.tbl3.col3 < 247717378--
-- Q100: SELECT db1.tbl3.col7 FROM db1.tbl3 WHERE db1.tbl3.col3 >= 169353766 and db1.tbl3.col3 < 203021296--

s1=schedule_select(db1.tbl3.col4,78091301,118548668)
s2=schedule_select(db1.tbl3.col6,153472534,190489750)
s3=schedule_select(db1.tbl3.col3,-250003324,-153542055)
s4=schedule_select(db1.tbl3.col1,360161038,430400334)
s5=schedule_select(db1.tbl3.col2,174964847,234227183)
s6=schedule_select(db1.tbl3.col5,-367021856,-284434020)
s7=schedule_select(db1.tbl3.col7,113326821,141646368)
s8=schedule_select(db1.tbl3.col1,441002272,488716814)
s9=schedule_select(db1.tbl3.col7,-185636195,-119462531)
s10=schedule_select(db1.tbl3.col1,84546226,172851319)
s11=schedule_select(db1.tbl3.col2,-87129792,-59360427)
s12=schedule_select(db1.tbl3.col6,157890939,222902219)
s13=schedule_select(db1.tbl3.col2,67235477,120298588)
s14=schedule_select(db1.tbl3.col1,275512701,307758138)
s15=schedule_select(db1.tbl3.col6,447693925,505186288)
s16=schedule_select(db1.tbl3.col2,-225296608,-154002650)
s17=schedule_select(db1.tbl3.col1,-44265141,-6894806)
s18=schedule_select(db1.tbl3.col6,277511390,338521394)
s19=schedule_select(db1.tbl3.col4,-494991426,-416548436)
s20=schedule_select(db1.tbl3.col3,-420074968,-361470774)
s21=schedule_select(db1.tbl3.col3,369545546,445047037)
s22=schedule_select(db1.tbl3.col4,410533818,474542045)
s23=schedule_select(db1.tbl3.col1,-10613883,48994212)
s24=schedule_select(db1.tbl3.col3,84935049,150335078)
s25=schedule_select(db1.tbl3.col2,-58653183,38997682)
s26=schedule_select(db1.tbl3.col1,-497169574,-432013190)
s27=schedule_select(db1.tbl3.col1,-391243588,-332187713)
s28=schedule_select(db1.tbl3.col4,-41359716,16378595)
s29=schedule_select(db1.tbl3.col4,226215201,318560817)
s30=schedule_select(db1.tbl3.col3,149529118,242744663)
s31=schedule_select(db1.tbl3.col2,119112000,195638496)
s32=schedule_select(db1.tbl3.col5,329423194,390343915)
s33=schedule_select(db1.tbl3.col7,-64643317,24770102)
s34=schedule_select(db1.tbl3.col7,-453764114,-360281715)
s35=schedule_select(db1.tbl3.col7,481319360,527730790)
s36=schedule_select(db1.tbl3.col1,95132764,189101240)
s37=schedule_select(db1.tbl3.col3,-420254323,-380655100)
s38=schedule_select(db1.tbl3.col1,499698038,591263085)
s39=schedule_select(db1.tbl3.col6,195236794,259420890)
s40=schedule_select(db1.tbl3.col5,55519873,100461610)
s41=schedule_select(db1.tbl3.col5,127128892,167848424)
s42=schedule_select(db1.tbl3.col7,371337450,445257198)
s43=schedule_select(db1.tbl3.col3,-410977715,-381833981)
s44=schedule_select(db1.tbl3.col4,259399505,331562621)
s45=schedule_select(db1.tbl3.col5,6506961,69571682)
s46=schedule_select(db1.tbl3.col4,-158474130,-78983150)
s47=schedule_select(db1.tbl3.col4,-22991906,38001447)
s48=schedule_select(db1.tbl3.col6,301096974,356491240)
s49=schedule_select(db1.tbl3.col7,492349412,571398582)
s50=schedule_select(db1.tbl3.col6,336456972,362680808)
s51=schedule_select(db1.tbl3.col3,240442123,311215095)
s52=schedule_select(db1.tbl3.col2,-331469608,-299310616)
s53=schedule_select(db1.tbl3.col7,-280123662,-199255210)
s54=schedule_select(db1.tbl3.col2,71894452,129842903)
s55=schedule_select(db1.tbl3.col7,-483951887,-443852342)
s56=schedule_select(db1.tbl3.col5,22819317,108555336)
s57=schedule_select(db1.tbl3.col7,-173301758,-144727706)
s58=schedule_select(db1.tbl3.col1,65179224,154659451)
s59=schedule_select(db1.tbl3.col5,-328569839,-291739661)
s60=schedule_select(db1.tbl3.col7,499837966,527173370)
s61=schedule_select(db1.tbl3.col4,-150644332,-95838232)
s62=schedule_select(db1.tbl3.col3,-354491026,-264573770)
s63=schedule_select(db1.tbl3.col5,222559031,321510974)
s64=schedule_select(db1.tbl3.col6,322304307,373055394)
s65=schedule_select(db1.tbl3.col4,-305663742,-248196424)
s66=schedule_select(db1.tbl3.col7,-312536623,-239995514)
s67=schedule_select(db1.tbl3.col7,293598100,345612415)
s68=schedule_select(db1.tbl3.col1,-448162272,-399839264)
s69=schedule_select(db1.tbl3.col1,-323256760,-250542801)
s70=schedule_select(db1.tbl3.col2,447384849,475592549)
s71=schedule_select(db1.tbl3.col4,-154662112,-115042289)
s72=schedule_select(db1.tbl3.col3,252345823,312462825)
s73=schedule_select(db1.tbl3.col7,-326893763,-235919881)
s74=schedule_select(db1.tbl3.col3,13355759,105103269)
s75=schedule_select(db1.tbl3.col1,459738708,493617104)
s76=schedule_select(db1.tbl3.col6,-189161728,-142414286)
s77=schedule_select(db1.tbl3.col7,-154417725,-61376565)
s78=schedule_select(db1.tbl3.col5,32526875,58443401)
s79=schedule_select(db1.tbl3.col5,193408990,225676112)
s80=schedule_select(db1.tbl3.col4,76962210,131897012)
s81=schedule_select(db1.tbl3.col3,468813389,507951011)
s82=schedule_select(db1.tbl3.col4,-425133621,-339292028)
s83=schedule_select(db1.tbl3.col6,-161502296,-67605868)
s84=schedule_select(db1.tbl3.col3,125330981,224335358)
s85=schedule_select(db1.tbl3.col2,-210798428,-124248746)
s86=schedule_select(db1.tbl3.col2,114703242,183546410)
s87=schedule_select(db1.tbl3.col4,-468904197,-443494567)
s88=schedule_select(db1.tbl3.col1,270723639,369159775)
s89=schedule_select(db1.tbl3.col3,-485371660,-427823180)
s90=schedule_select(db1.tbl3.col5,401555762,467932624)
s91=schedule_select(db1.tbl3.col3,-40895399,9290713)
s92=schedule_select(db1.tbl3.col5,-11173457,67027144)
s93=schedule_select(db1.tbl3.col1,-234686440,-196480879)
s94=schedule_select(db1.tbl3.col2,-421423727,-357056300)
s95=schedule_select(db1.tbl3.col1,-379615260,-301710639)
s96=schedule_select(db1.tbl3.col6,75792799,148433333)
s97=schedule_select(db1.tbl3.col3,9759189,88237605)
s98=schedule_select(db1.tbl3.col5,146309601,211477802)
s99=schedule_select(db1.tbl3.col3,191299214,247717378)
s100=schedule_select(db1.tbl3.col3,169353766,203021296)
execute_scheduled
r1=fetch(db1.tbl3.col4,s1)
tuple(r1)
r2=fetch(db1.tbl3.col6,s2)
tuple(r2)
r3=fetch(db1.tbl3.col4,s3)
tuple(r3)
r4=fetch(db1.tbl3.col7,s4)
tuple(r4)
r5=fetch(db1.tbl3.col3,s5)
tuple(r5)
r6=fetch(db1.tbl3.col5,s6)
tuple(r6)
r7=fetch(db1.tbl3.col7,s7)
tuple(r7)
r8=fetch(db1.tbl3.col1,s8)
tuple(r8)
r9=fetch(db1.tbl3.col3,s9)
tuple(r9)
r10=fetch(db1.tbl3.col4,s10)
tuple(r10)
r11=fetch(db1.tbl3.col2,s11)
tuple(r11)
r12=fetch(db1.tbl3.col4,s12)
tuple(r12)
r13=fetch(db1.tbl3.col6,s13)
tuple(r13)
r14=fetch(db1.tbl3.col5,s14)
tuple(r14)
r15=fetch(db1.tbl3.col2,s15)
tuple(r15)
r16=fetch(db1.tbl3.col3,s16)
tuple(r16)
r17=fetch(db1.tbl3.col2,s17)
tuple(r17)
r18=fetch(db1.tbl3.col5,s18)
tuple(r18)
r19=fetch(db1.tbl3.col3,s19)
tuple(r19)
r20=fetch(db1.tbl3.col3,s20)
tuple(r20)
r21=fetch(db1.tbl3.col5,s21)
tuple(r21)
r22=fetch(db1.tbl3.col2,s22)
tuple(r22)
r23=fetch(db1.tbl3.col5,s23)
tuple(r23)
r24=fetch(db1.tbl3.col3,s24)
tuple(r24)
r25=fetch(db1.tbl3.col4,s25)
tuple(r25)
r26=fetch(db1.tbl3.col3,s26)
tuple(r26)
r27=fetch(db1.tbl3.col1,s27)
tuple(r27)
r28=fetch(db1.tbl3.col7,s28)
tuple(r28)
r29=fetch(db1.tbl3.col4,s29)
tuple(r29)
r30=fetch(db1.tbl3.col5,s30)
tuple(r30)
r31=fetch(db1.tbl3.col2,s31)
tuple(r31)
r32=fetch(db1.tbl3.col5,s32)
tuple(r32)
r33=fetch(db1.tbl3.col6,s33)
tuple(r33)
r34=fetch(db1.tbl3.col6,s34)
tuple(r34)
r35=fetch(db1.tbl3.col6,s35)
tuple(r35)
r36=fetch(db1.tbl3.col5,s36)
tuple(r36)
r37=fetch(db1.tbl3.col2,s37)
tuple(r37)
r38=fetch(db1.tbl3.col2,s38)
tuple(r38)
r39=fetch(db1.tbl3.col4,s39)
tuple(r39)
r40=fetch(db1.tbl3.col3,s40)
tuple(r40)
r41=fetch(db1.tbl3.col3,s41)
tuple(r41)
r42=fetch(db1.tbl3.col5,s42)
tuple(r42)
r43=fetch(db1.tbl3.col1,s43)
tuple(r43)
r44=fetch(db1.tbl3.col2,s44)
tuple(r44)
r45=fetch(db1.tbl3.col2,s45)
tuple(r45)
r46=fetch(db1.tbl3.col2,s46)
tuple(r46)
r47=fetch(db1.tbl3.col4,s47)
tuple(r47)
r48=fetch(db1.tbl3.col5,s48)
tuple(r48)
r49=fetch(db1.tbl3.col6,s49)
tuple(r49)
r50=fetch(db1.tbl3.col1,s50)
tuple(r50)
r51=fetch(db1.tbl3.col3,s51)
tuple(r51)
r52=fetch(db1.tbl3.col2,s52)
tuple(r52)
r53=fetch(db1.tbl3.col6,s53)
tuple(r53)
r54=fetch(db1.tbl3.col7,s54)
tuple(r54)
r55=fetch(db1.tbl3.col7,s55)
tuple(r55)
r56=fetch(db1.tbl3.col6,s56)
tuple(r56)
r57=fetch(db1.tbl3.col6,s57)
tuple(r57)
r58=fetch(db1.tbl3.col5,s58)
tuple(r58)
r59=fetch(db1.tbl3.col3,s59)
tuple(r59)
r60=fetch(db1.tbl3.col5,s60)
tuple(r60)
r61=fetch(db1.tbl3.col7,s61)
tuple(r61)
r62=fetch(db1.tbl3.col5,s62)
tuple(r62)
r63=fetch(db1.tbl3.col5,s63)
tuple(r63)
r64=fetch(db1.tbl3.col2,s64)
tuple(r64)
r65=fetch(db1.tbl3.col4,s65)
tuple(r65)
r66=fetch(db1.tbl3.col2,s66)
tuple(r66)
r67=fetch(db1.tbl3.col4,s67)
tuple(r67)
r68=fetch(db1.tbl3.col3,s68)
tuple(r68)
r69=fetch(db1.tbl3.col7,s69)
tuple(r69)
r70=fetch(db1.tbl3.col3,s70)
tuple(r70)
r71=fetch(db1.tbl3.col5,s71)
tuple(r71)
r72=fetch(db1.tbl3.col2,s72)
tuple(r72)
r73=fetch(db1.tbl3.col6,s73)
tuple(r73)
r74=fetch(db1.tbl3.col5,s74)
tuple(r74)
r75=fetch(db1.tbl3.col3,s75)
tuple(r75)
r76=fetch(db1.tbl3.col1,s76)
tuple(r76)
r77=fetch(db1.tbl3.col5,s77)
tuple(r77)
r78=fetch(db1.tbl3.col5,s78)
tuple(r78)
r79=fetch(db1.tbl3.col2,s79)
tuple(r79)
r80=fetch(db1.tbl3.col5,s80)
tuple(r80)
r81=fetch(db1.tbl3.col2,s81)
tuple(r81)
r82=fetch(db1.tbl3.col7,s82)
tuple(r82)
r83=fetch(db1.tbl3.col1,s83)
tuple(r83)
r84=fetch(db1.tbl3.col6,s84)
tuple(r84)
r85=fetch(db1.tbl3.col2,s85)
tuple(r85)
r86=fetch(db1.tbl3.col2,s86)
tuple(r86)
r87=fetch(db1.tbl3.col3,s87)
tuple(r87)
r88=fetch(db1.tbl3.col1,s88)
tuple(r88)
r89=fetch(db1.tbl3.col1,s89)
tuple(r89)
r90=fetch(db1.tbl3.col5,s90)
tuple(r90)
r91=fetch(db1.tbl3.col1,s91)
tuple(r91)
r92=fetch(db1.tbl3.col1,s92)
tuple(r92)
r93=fetch(db1.tbl3.col3,s93)
tuple(r93)
r94=fetch(db1.tbl3.col4,s94)
tuple(r94)
r95=fetch(db1.tbl3.col1,s95)
tuple(r95)
r96=fetch(db1.tbl3.col6,s96)
tuple(r96)
r97=fetch(db1.tbl3.col6,s97)
tuple(r97)
r98=fetch(db1.tbl3.col5,s98)
tuple(r98)
r99=fetch(db1.tbl3.col2,s99)
tuple(r99)
r100=fetch(db1.tbl3.col7,s100)
tuple(r100)
