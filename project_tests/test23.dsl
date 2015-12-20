-- Needs test14.dsl to have been executed first.
-- db1.tbl3 has a secondary b-tree tree index on col1 and col2, and a clustered index on col7 with the form of a sorted column
-- testing shared scan on 50 queries
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
