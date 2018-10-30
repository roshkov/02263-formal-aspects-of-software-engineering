structure RT_Text = RT_Text;

structure RT_s_1 = RT_Set(structure Elem = RT_Text);

structure RT_s_2 = RT_Set(structure Elem = RT_s_1);

structure RT_x_3 =
    struct
        type t = RT_Text.t * RT_Text.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_Text.equ(#1 x, #1 y) andalso 
                             RT_Text.equ(#2 x, #2 y) andalso 
                             RT_s_2.equ(#3 x, #3 y);
        
        fun toString (x:t) = "(" ^
                             (RT_Text.toString(#1 x )) ^ "," ^
                             (RT_Text.toString(#2 x )) ^ "," ^
                             (RT_s_2.toString(#3 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_Text.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure RT_Bool = RT_Bool;

structure RT_x_4 =
    struct
        type t = RT_s_2.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_s_2.equ(#1 x, #1 y) andalso 
                             RT_s_2.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_2.toString(#1 x )) ^ "," ^
                             (RT_s_2.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_2.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure RT_x_5 =
    struct
        type t = RT_s_1.t * RT_s_2.t;
        
        fun equ (x:t, y:t) = RT_s_1.equ(#1 x, #1 y) andalso 
                             RT_s_2.equ(#2 x, #2 y);
        
        fun toString (x:t) = "(" ^
                             (RT_s_1.toString(#1 x )) ^ "," ^
                             (RT_s_2.toString(#2 x )) ^
                             ")";
        
        fun toStringSafe x = toString(x())
          handle RSL.RSL_exception s => (RSL.inc_exception_count(); s);
        
        fun typeToString () = "(" ^
                              (RT_s_1.typeToString ()) ^ " >< " ^
                              (RT_s_2.typeToString ()) ^
                              ")";
    end;
    
structure RT_Nat = RT_Nat;

structure DesignTest =
    struct
        type Person_ = RT_Text.t;
        
        type Family_ = RT_s_1.t;
        
        type Families_ = RT_s_2.t;
        
        type Table_ = RT_s_1.t;
        
        type Plan_ = RT_s_2.t;
        
        fun isWellformed'6A46_ fs'6AB7_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (40, 26)); ((RSL.C_not RT_s_2.equ) (fs'6AB7_, RT_s_2.R_fromList [])) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (40, 38)); if RT_Nat.R_gt (RT_s_2.R_card(fs'6AB7_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (40, 58)); ((RT_s_2.R_all (fn (f'6AE3_:RT_s_1.t) => not ((RSL.C_not RT_s_1.equ) (f'6AE3_, RT_s_1.R_fromList [])) orelse (((RT_s_2.R_all (fn (f''6B2A_:RT_s_1.t) => not ((RSL.C_not RT_s_1.equ) (f'6AE3_, f''6B2A_)) orelse (((RSL.C_not RT_s_1.equ) (f''6B2A_, RT_s_1.R_fromList [])) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (42, 34)); RT_s_1.equ (RT_s_1.R_inter (f'6AE3_, f''6B2A_), RT_s_1.R_fromList [])))) (fs'6AB7_))))) (fs'6AB7_)))) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (45, 15)); true)));
        
        fun areRelatives'5FBA_ (p1'602B_, p2'602F_, fs'6033_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 34)); ((RT_s_2.R_exists (fn (f'6042_:RT_s_1.t) => ((RSL.C_not RT_Text.equ) (p1'602B_, p2'602F_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 81)); (RT_s_1.R_mem (p1'602B_, f'6042_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 94)); RT_s_1.R_mem (p2'602F_, f'6042_)))) (fs'6033_))));
        
        fun isWellformedTable'65FA_ (t'6670_, fs'6673_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (29, 34)); (RT_Nat.equ (RT_s_1.R_card(t'6670_), RT_Int.fromLit "1")) orelse (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (30, 21)); (((RSL.C_not RT_s_1.equ) (t'6670_, RT_s_1.R_fromList [])) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (30, 33)); ((RT_s_1.R_all (fn (p'66E2_:RT_Text.t) => ((RT_s_1.R_all (fn (p''6747_:RT_Text.t) => not ((RSL.C_not RT_Text.equ) (p'66E2_, p''6747_)) orelse (not (((areRelatives'5FBA_) (p'66E2_, p''6747_, fs'6673_))))) (t'6670_)))) (t'6670_)))))));
        
        fun isCorrectPlan'60E6_ (plan'6158_, fs'615E_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 33)); (((RT_s_2.R_all (fn (t'616A_:RT_s_1.t) => ((isWellformedTable'65FA_) (t'616A_, fs'615E_))) (plan'6158_)))) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (18, 16)); (((RT_s_2.R_all (fn (t'6221_:RT_s_1.t) => ((RT_s_2.R_all (fn (t''6286_:RT_s_1.t) => not ((RSL.C_not RT_s_1.equ) (t'6221_, t''6286_)) orelse (RT_s_1.equ (RT_s_1.R_inter (t'6221_, t''6286_), RT_s_1.R_fromList []))) (plan'6158_)))) (plan'6158_)))) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (22, 12)); ((RT_s_2.R_all (fn (f'63AD_:RT_s_1.t) => ((RT_s_1.R_all (fn (p'6416_:RT_Text.t) => ((RT_s_2.R_exists (fn (t'6478_:RT_s_1.t) => RT_s_1.R_mem (p'6416_, t'6478_)) (plan'6158_)))) (f'63AD_)))) (fs'615E_))))));
        
        fun mergePlans'51A9_ (pl1'5218_, pl2'521D_) = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (20, 29)); if (RT_Nat.equ (RT_s_2.R_card((pl1'5218_)), RT_Int.fromLit "1")) andalso (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (20, 49)); RT_Nat.equ (RT_s_2.R_card((pl2'521D_)), RT_Int.fromLit "1")) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (21, 19)); RT_s_2.R_fromList ([RT_s_1.R_union (RT_s_2.R_hd((pl1'5218_)), RT_s_2.R_hd((pl2'521D_)))])) else if (RT_Nat.R_ge (RT_s_2.R_card((pl1'5218_)), RT_Int.fromLit "1")) andalso (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (22, 40)); RT_Nat.R_ge (RT_s_2.R_card((pl2'521D_)), RT_Int.fromLit "1")) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (23, 15)); RT_s_2.R_union (RT_s_2.R_fromList ([RT_s_1.R_union (RT_s_2.R_hd((pl1'5218_)), RT_s_2.R_hd((pl2'521D_)))]), ((mergePlans'51A9_) (RT_s_2.R_diff (pl1'5218_, RT_s_2.R_fromList ([RT_s_2.R_hd((pl1'5218_))])), RT_s_2.R_diff (pl2'521D_, RT_s_2.R_fromList ([RT_s_2.R_hd((pl2'521D_))])))))) else if (RT_Nat.R_gt (RT_s_2.R_card((pl1'5218_)), RT_Int.fromLit "1")) andalso (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (24, 31)); RT_s_2.equ (pl2'521D_, RT_s_2.R_fromList [])) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (25, 11)); RT_s_2.R_union (RT_s_2.R_fromList ([RT_s_1.R_union (RT_s_2.R_hd((pl1'5218_)), RT_s_1.R_fromList [])]), ((mergePlans'51A9_) (RT_s_2.R_diff (pl1'5218_, RT_s_2.R_fromList ([RT_s_2.R_hd((pl1'5218_))])), RT_s_2.R_fromList [])))) else if (RT_s_2.equ (pl1'5218_, RT_s_2.R_fromList [])) andalso (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (26, 26)); RT_Nat.R_gt (RT_s_2.R_card((pl2'521D_)), RT_Int.fromLit "1")) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (27, 11)); RT_s_2.R_union (RT_s_2.R_fromList ([RT_s_1.R_union (RT_s_1.R_fromList [], RT_s_2.R_hd((pl2'521D_)))]), ((mergePlans'51A9_) (RT_s_2.R_fromList [], RT_s_2.R_diff (pl2'521D_, RT_s_2.R_fromList ([RT_s_2.R_hd((pl2'521D_))])))))) else if (RT_Nat.equ (RT_s_2.R_card((pl1'5218_)), RT_Int.fromLit "1")) andalso (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (28, 31)); RT_s_2.equ (pl2'521D_, RT_s_2.R_fromList [])) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (29, 11)); RT_s_2.R_fromList ([RT_s_1.R_union (RT_s_2.R_hd((pl1'5218_)), RT_s_1.R_fromList [])])) else (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (31, 11)); RT_s_2.R_fromList ([RT_s_1.R_union (RT_s_1.R_fromList [], RT_s_2.R_hd((pl2'521D_)))])));
        
        fun createPlanForFamily'4D5D_ f'4DD5_ = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (9, 31)); if RT_Nat.R_gt (RT_s_1.R_card((f'4DD5_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (10, 16)); RT_s_2.R_union (RT_s_2.R_fromList ([RT_s_1.R_fromList ([RT_s_1.R_hd((f'4DD5_))])]), ((createPlanForFamily'4D5D_) (RT_s_1.R_diff (f'4DD5_, RT_s_1.R_fromList ([RT_s_1.R_hd((f'4DD5_))])))))) else (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (11, 15)); RT_s_2.R_fromList ([RT_s_1.R_fromList ([RT_s_1.R_hd((f'4DD5_))])])));
        
        fun createPlanForFamilies'4F51_ fs'4FCB_ = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (14, 34)); if RT_Nat.R_gt (RT_s_2.R_card((fs'4FCB_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (15, 16)); ((mergePlans'51A9_) (((createPlanForFamily'4D5D_) (RT_s_2.R_hd((fs'4FCB_)))), ((createPlanForFamilies'4F51_) (RT_s_2.R_diff (fs'4FCB_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'4FCB_))]))))))) else (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (17, 15)); ((createPlanForFamily'4D5D_) (RT_s_2.R_hd((fs'4FCB_))))));
        
        fun plan'5785_ fs'57EE_ = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (35, 17)); if not(((isWellformed'6A46_) (fs'57EE_))) then raise RSL.RSL_exception ("Design.rsl:41:9: Precondition of plan" ^ "(" ^ RT_s_2.toString fs'57EE_ ^ ")" ^ " not satisfied") else let val RSL_res_'5785_ = (if RT_Nat.equ (RT_s_2.R_card((fs'57EE_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (36, 15)); ((createPlanForFamily'4D5D_) (RT_s_2.R_hd((fs'57EE_))))) else (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (38, 6)); ((createPlanForFamilies'4F51_) (fs'57EE_)))) in if not(let val p'597F_ = RSL_res_'5785_ in ((isCorrectPlan'60E6_) (p'597F_, fs'57EE_)) end) then raise RSL.RSL_exception ("Design.rsl:34:5: Result " ^ RT_s_2.toString RSL_res_'5785_ ^ " of plan" ^ "(" ^ RT_s_2.toString fs'57EE_ ^ ")" ^ " does not satisfy postcondition") else RSL_res_'5785_ end);
        
        val tBadEmpty'11FA_ = RT_s_1.R_fromList [];
        
        val p8'5DE_ = RT_Text.fromLit "Torsten";
        
        val p4'44E_ = RT_Text.fromLit "Frederik";
        
        val t1'E76_ = RT_s_1.R_fromList ([p8'5DE_, p4'44E_]);
        
        val p2'386_ = RT_Text.fromLit "Lillian";
        
        val p9'642_ = RT_Text.fromLit "Camilla";
        
        val p6'516_ = RT_Text.fromLit "Anne";
        
        val t2'EDA_ = RT_s_1.R_fromList ([p2'386_, p9'642_, p6'516_]);
        
        val p7'57A_ = RT_Text.fromLit "Lotte";
        
        val t5'1006_ = RT_s_1.R_fromList ([p7'57A_]);
        
        val p5'4B2_ = RT_Text.fromLit "Henrik";
        
        val p10'6A6_ = RT_Text.fromLit "Jacob";
        
        val t3'F3E_ = RT_s_1.R_fromList ([p10'6A6_, p5'4B2_]);
        
        val p1'322_ = RT_Text.fromLit "Elisabeth";
        
        val p11'70A_ = RT_Text.fromLit "Pernille";
        
        val p3'3EA_ = RT_Text.fromLit "Erik";
        
        val t4'FA2_ = RT_s_1.R_fromList ([p3'3EA_, p11'70A_, p1'322_]);
        
        val planBadEmptyTable'14B6_ = RT_s_2.R_fromList ([t1'E76_, t2'EDA_, t3'F3E_, t4'FA2_, t5'1006_, tBadEmpty'11FA_]);
        
        val f1'836_ = RT_s_1.R_fromList ([p1'322_]);
        
        val plan'1326_ = RT_s_2.R_fromList ([t1'E76_, t2'EDA_, t3'F3E_, t4'FA2_, t5'1006_]);
        
        val f2'89A_ = RT_s_1.R_fromList ([p2'386_, p3'3EA_]);
        
        val planBadNotAllPer'138A_ = RT_s_2.R_fromList ([t1'E76_, t2'EDA_, t3'F3E_, t4'FA2_]);
        
        val f3'8FE_ = RT_s_1.R_fromList ([p4'44E_, p5'4B2_, p6'516_]);
        
        val tBadRep'106A_ = RT_s_1.R_fromList ([p1'322_]);
        
        val planBadPerRep'13EE_ = RT_s_2.R_fromList ([t1'E76_, t2'EDA_, t3'F3E_, t4'FA2_, t5'1006_, tBadRep'106A_]);
        
        val tBadSameF'10CE_ = RT_s_1.R_fromList ([p2'386_, p3'3EA_]);
        
        val f4'962_ = RT_s_1.R_fromList ([p7'57A_, p8'5DE_, p9'642_, p10'6A6_, p11'70A_]);
        
        val tGood'1132_ = RT_s_1.R_fromList ([p1'322_, p2'386_, p4'44E_, p7'57A_]);
        
        val fEmpty'9C6_ = RT_s_1.R_fromList [];
        
        val tGoodOneP'1196_ = RT_s_1.R_fromList ([p1'322_]);
        
        val f2Rep'A2A_ = RT_s_1.R_fromList ([p2'386_, p3'3EA_]);
        
        val planBadSameF'1452_ = RT_s_2.R_fromList ([tBadSameF'10CE_]);
        
        val families'B56_ = RT_s_2.R_fromList ([f1'836_, f2'89A_, f3'8FE_, f4'962_]);
        
        val famBadPerRep'D4A_ = RT_s_2.R_fromList ([f2'89A_, f2Rep'A2A_]);
        
        val famSingleFamily'BBA_ = RT_s_2.R_fromList ([f4'962_]);
        
        val famBadEmpty'CE6_ = RT_s_2.R_fromList [];
        
        val famBadTable'C1E_ = RT_s_2.R_fromList ([f2'89A_]);
        
        val famBadEmptyF'C82_ = RT_s_2.R_fromList ([f1'836_, f2'89A_, f3'8FE_, f4'962_, fEmpty'9C6_]);
        
    end;
    
open DesignTest;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "Design.rsl", (38, 6), (39, 3));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (36, 15), (37, 6));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (35, 17), (43, 3));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (17, 15), (17, 43));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (15, 16), (17, 13));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (14, 34), (17, 46));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (11, 15), (11, 25));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (10, 16), (11, 13));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (9, 31), (11, 28));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (28, 31), (28, 43));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (26, 26), (26, 43));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (24, 31), (24, 43));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (22, 40), (22, 58));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (20, 49), (20, 66));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (31, 11), (32, 8));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (29, 11), (30, 11));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (27, 11), (28, 12));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (25, 11), (26, 12));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (23, 15), (24, 12));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (21, 19), (22, 16));
R_coverage.mark(RT_Text.fromLit "Design.rsl", (20, 29), (32, 11));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (22, 12), (26, 13));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (18, 16), (26, 13));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 33), (26, 13));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (30, 33), (35, 20));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (30, 21), (35, 21));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (29, 34), (35, 21));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 94), (14, 3));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 81), (14, 3));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 34), (14, 4));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (42, 34), (43, 14));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (45, 15), (45, 20));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (40, 58), (45, 13));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (40, 38), (47, 3));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (40, 26), (47, 3)));
(RSL.C_output "[t101] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isCorrectPlan'60E6_) (plan'1326_, families'B56_)), true)));

(RSL.C_output "[t102] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isCorrectPlan'60E6_) (planBadNotAllPer'138A_, families'B56_)), false)));

(RSL.C_output "[t103] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isCorrectPlan'60E6_) (planBadPerRep'13EE_, families'B56_)), false)));

(RSL.C_output "[t104] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isCorrectPlan'60E6_) (planBadSameF'1452_, famBadTable'C1E_)), false)));

(RSL.C_output "[t105] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isCorrectPlan'60E6_) (planBadEmptyTable'14B6_, families'B56_)), false)));

(RSL.C_output "[t201] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformedTable'65FA_) (tGood'1132_, families'B56_)), true)));

(RSL.C_output "[t202] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformedTable'65FA_) (tGoodOneP'1196_, families'B56_)), true)));

(RSL.C_output "[t203] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformedTable'65FA_) (tBadEmpty'11FA_, families'B56_)), false)));

(RSL.C_output "[t204] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformedTable'65FA_) (tBadSameF'10CE_, families'B56_)), false)));

(RSL.C_output "[t301] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'6A46_) (families'B56_)), true)));

(RSL.C_output "[t302] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'6A46_) (famBadEmptyF'C82_)), false)));

(RSL.C_output "[t303] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'6A46_) (famBadEmpty'CE6_)), false)));

(RSL.C_output "[t304] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((isWellformed'6A46_) (famBadPerRep'D4A_)), false)));

(RSL.C_output "[t401] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areRelatives'5FBA_) (p2'386_, p3'3EA_, families'B56_)), true)));

(RSL.C_output "[t402] " RT_Bool.toStringSafe (fn _ => RT_Bool.equ (((areRelatives'5FBA_) (p1'322_, p2'386_, families'B56_)), false)));

(RSL.C_output "[t501] " RT_Bool.toStringSafe (fn _ => RT_s_2.equ (((createPlanForFamily'4D5D_) (f3'8FE_)), RT_s_2.R_fromList ([RT_s_1.R_fromList ([p6'516_]), RT_s_1.R_fromList ([p4'44E_]), RT_s_1.R_fromList ([p5'4B2_])]))));

(RSL.C_output "[t601] " RT_Bool.toStringSafe (fn _ => RT_s_2.equ (((mergePlans'51A9_) (RT_s_2.R_fromList ([RT_s_1.R_fromList ([p6'516_]), RT_s_1.R_fromList ([p4'44E_]), RT_s_1.R_fromList ([p5'4B2_])]), RT_s_2.R_fromList ([RT_s_1.R_fromList []]))), RT_s_2.R_fromList ([RT_s_1.R_fromList ([p6'516_]), RT_s_1.R_fromList ([p4'44E_]), RT_s_1.R_fromList ([p5'4B2_])]))));

(RSL.C_output "[t602] " RT_Bool.toStringSafe (fn _ => RT_s_2.equ (((mergePlans'51A9_) (RT_s_2.R_fromList ([RT_s_1.R_fromList ([p6'516_]), RT_s_1.R_fromList ([p4'44E_]), RT_s_1.R_fromList ([p5'4B2_])]), RT_s_2.R_fromList ([RT_s_1.R_fromList ([p1'322_]), RT_s_1.R_fromList ([p2'386_]), RT_s_1.R_fromList ([p3'3EA_])]))), RT_s_2.R_fromList ([RT_s_1.R_fromList ([p6'516_, p1'322_]), RT_s_1.R_fromList ([p4'44E_, p2'386_]), RT_s_1.R_fromList ([p5'4B2_, p3'3EA_])]))));

(RSL.C_output "[t603] " RT_Bool.toStringSafe (fn _ => RT_s_2.equ (((mergePlans'51A9_) (((createPlanForFamily'4D5D_) (f1'836_)), ((createPlanForFamily'4D5D_) (f2'89A_)))), RT_s_2.R_fromList ([RT_s_1.R_fromList ([p1'322_, p3'3EA_]), RT_s_1.R_fromList ([p2'386_])]))));

(RSL.C_output "[t604] " RT_Bool.toStringSafe (fn _ => RT_s_2.equ (((mergePlans'51A9_) (((createPlanForFamily'4D5D_) (f2'89A_)), ((createPlanForFamily'4D5D_) (f1'836_)))), RT_s_2.R_fromList ([RT_s_1.R_fromList ([p3'3EA_, p1'322_]), RT_s_1.R_fromList ([p2'386_])]))));

(RSL.C_output "[t605] " RT_Bool.toStringSafe (fn _ => RT_s_2.equ (((mergePlans'51A9_) (((createPlanForFamily'4D5D_) (f1'836_)), ((createPlanForFamily'4D5D_) (f3'8FE_)))), RT_s_2.R_fromList ([RT_s_1.R_fromList ([p1'322_, p6'516_]), RT_s_1.R_fromList ([p4'44E_]), RT_s_1.R_fromList ([p5'4B2_])]))));

(RSL.C_output "[t606] " RT_Bool.toStringSafe (fn _ => RT_s_2.equ (((mergePlans'51A9_) (((createPlanForFamily'4D5D_) (f3'8FE_)), ((createPlanForFamily'4D5D_) (f1'836_)))), RT_s_2.R_fromList ([RT_s_1.R_fromList ([p6'516_, p1'322_]), RT_s_1.R_fromList ([p4'44E_]), RT_s_1.R_fromList ([p5'4B2_])]))));

(RSL.C_output "[t701] " RT_Bool.toStringSafe (fn _ => RT_s_2.equ (((createPlanForFamilies'4F51_) (famSingleFamily'BBA_)), RT_s_2.R_fromList ([RT_s_1.R_fromList ([p7'57A_]), RT_s_1.R_fromList ([p8'5DE_]), RT_s_1.R_fromList ([p9'642_]), RT_s_1.R_fromList ([p10'6A6_]), RT_s_1.R_fromList ([p11'70A_])]))));

(RSL.C_output "[t702] " RT_Bool.toStringSafe (fn _ => RT_s_2.equ (((createPlanForFamilies'4F51_) (families'B56_)), RT_s_2.R_fromList ([RT_s_1.R_fromList ([p1'322_, p3'3EA_, p6'516_, p11'70A_]), RT_s_1.R_fromList ([p2'386_, p5'4B2_, p9'642_]), RT_s_1.R_fromList ([p4'44E_, p7'57A_]), RT_s_1.R_fromList ([p10'6A6_]), RT_s_1.R_fromList ([p8'5DE_])]))));

(RSL.C_output "[t801] " RT_Bool.toStringSafe (fn _ => RT_s_2.equ (((plan'5785_) (families'B56_)), RT_s_2.R_fromList ([RT_s_1.R_fromList ([p1'322_, p3'3EA_, p6'516_, p11'70A_]), RT_s_1.R_fromList ([p2'386_, p5'4B2_, p9'642_]), RT_s_1.R_fromList ([p4'44E_, p7'57A_]), RT_s_1.R_fromList ([p10'6A6_]), RT_s_1.R_fromList ([p8'5DE_])]))));

(RSL.C_output "[t802] " RT_s_2.toStringSafe (fn _ => ((plan'5785_) (famBadPerRep'D4A_))));

(RSL.C_output "[t803] " RT_s_2.toStringSafe (fn _ => famBadPerRep'D4A_));

RSL.print_error_count();
R_coverage.save_marked();
