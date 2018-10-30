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

structure Design =
    struct
        type Person_ = RT_Text.t;
        
        type Family_ = RT_s_1.t;
        
        type Families_ = RT_s_2.t;
        
        type Table_ = RT_s_1.t;
        
        type Plan_ = RT_s_2.t;
        
        fun isWellformed'200E_ fs'207F_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (40, 26)); ((RSL.C_not RT_s_2.equ) (fs'207F_, RT_s_2.R_fromList [])) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (40, 38)); if RT_Nat.R_gt (RT_s_2.R_card(fs'207F_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (40, 58)); ((RT_s_2.R_all (fn (f'20AB_:RT_s_1.t) => not ((RSL.C_not RT_s_1.equ) (f'20AB_, RT_s_1.R_fromList [])) orelse (((RT_s_2.R_all (fn (f''20F2_:RT_s_1.t) => not ((RSL.C_not RT_s_1.equ) (f'20AB_, f''20F2_)) orelse (((RSL.C_not RT_s_1.equ) (f''20F2_, RT_s_1.R_fromList [])) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (42, 34)); RT_s_1.equ (RT_s_1.R_inter (f'20AB_, f''20F2_), RT_s_1.R_fromList [])))) (fs'207F_))))) (fs'207F_)))) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (45, 15)); true)));
        
        fun areRelatives'1582_ (p1'15F3_, p2'15F7_, fs'15FB_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 34)); ((RT_s_2.R_exists (fn (f'160A_:RT_s_1.t) => ((RSL.C_not RT_Text.equ) (p1'15F3_, p2'15F7_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 81)); (RT_s_1.R_mem (p1'15F3_, f'160A_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 94)); RT_s_1.R_mem (p2'15F7_, f'160A_)))) (fs'15FB_))));
        
        fun isWellformedTable'1BC2_ (t'1C38_, fs'1C3B_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (29, 34)); (RT_Nat.equ (RT_s_1.R_card(t'1C38_), RT_Int.fromLit "1")) orelse (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (30, 21)); (((RSL.C_not RT_s_1.equ) (t'1C38_, RT_s_1.R_fromList [])) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (30, 33)); ((RT_s_1.R_all (fn (p'1CAA_:RT_Text.t) => ((RT_s_1.R_all (fn (p''1D0F_:RT_Text.t) => not ((RSL.C_not RT_Text.equ) (p'1CAA_, p''1D0F_)) orelse (not (((areRelatives'1582_) (p'1CAA_, p''1D0F_, fs'1C3B_))))) (t'1C38_)))) (t'1C38_)))))));
        
        fun isCorrectPlan'16AE_ (plan'1720_, fs'1726_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 33)); (((RT_s_2.R_all (fn (t'1732_:RT_s_1.t) => ((isWellformedTable'1BC2_) (t'1732_, fs'1726_))) (plan'1720_)))) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (18, 16)); (((RT_s_2.R_all (fn (t'17E9_:RT_s_1.t) => ((RT_s_2.R_all (fn (t''184E_:RT_s_1.t) => not ((RSL.C_not RT_s_1.equ) (t'17E9_, t''184E_)) orelse (RT_s_1.equ (RT_s_1.R_inter (t'17E9_, t''184E_), RT_s_1.R_fromList []))) (plan'1720_)))) (plan'1720_)))) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (22, 12)); ((RT_s_2.R_all (fn (f'1975_:RT_s_1.t) => ((RT_s_1.R_all (fn (p'19DE_:RT_Text.t) => ((RT_s_2.R_exists (fn (t'1A40_:RT_s_1.t) => RT_s_1.R_mem (p'19DE_, t'1A40_)) (plan'1720_)))) (f'1975_)))) (fs'1726_))))));
        
        fun mergePlans'771_ (pl1'7E0_, pl2'7E5_) = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (20, 29)); if (RT_Nat.equ (RT_s_2.R_card((pl1'7E0_)), RT_Int.fromLit "1")) andalso (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (20, 49)); RT_Nat.equ (RT_s_2.R_card((pl2'7E5_)), RT_Int.fromLit "1")) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (21, 19)); RT_s_2.R_fromList ([RT_s_1.R_union (RT_s_2.R_hd((pl1'7E0_)), RT_s_2.R_hd((pl2'7E5_)))])) else if (RT_Nat.R_ge (RT_s_2.R_card((pl1'7E0_)), RT_Int.fromLit "1")) andalso (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (22, 40)); RT_Nat.R_ge (RT_s_2.R_card((pl2'7E5_)), RT_Int.fromLit "1")) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (23, 15)); RT_s_2.R_union (RT_s_2.R_fromList ([RT_s_1.R_union (RT_s_2.R_hd((pl1'7E0_)), RT_s_2.R_hd((pl2'7E5_)))]), ((mergePlans'771_) (RT_s_2.R_diff (pl1'7E0_, RT_s_2.R_fromList ([RT_s_2.R_hd((pl1'7E0_))])), RT_s_2.R_diff (pl2'7E5_, RT_s_2.R_fromList ([RT_s_2.R_hd((pl2'7E5_))])))))) else if (RT_Nat.R_gt (RT_s_2.R_card((pl1'7E0_)), RT_Int.fromLit "1")) andalso (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (24, 31)); RT_s_2.equ (pl2'7E5_, RT_s_2.R_fromList [])) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (25, 11)); RT_s_2.R_union (RT_s_2.R_fromList ([RT_s_1.R_union (RT_s_2.R_hd((pl1'7E0_)), RT_s_1.R_fromList [])]), ((mergePlans'771_) (RT_s_2.R_diff (pl1'7E0_, RT_s_2.R_fromList ([RT_s_2.R_hd((pl1'7E0_))])), RT_s_2.R_fromList [])))) else if (RT_s_2.equ (pl1'7E0_, RT_s_2.R_fromList [])) andalso (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (26, 26)); RT_Nat.R_gt (RT_s_2.R_card((pl2'7E5_)), RT_Int.fromLit "1")) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (27, 11)); RT_s_2.R_union (RT_s_2.R_fromList ([RT_s_1.R_union (RT_s_1.R_fromList [], RT_s_2.R_hd((pl2'7E5_)))]), ((mergePlans'771_) (RT_s_2.R_fromList [], RT_s_2.R_diff (pl2'7E5_, RT_s_2.R_fromList ([RT_s_2.R_hd((pl2'7E5_))])))))) else if (RT_Nat.equ (RT_s_2.R_card((pl1'7E0_)), RT_Int.fromLit "1")) andalso (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (28, 31)); RT_s_2.equ (pl2'7E5_, RT_s_2.R_fromList [])) then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (29, 11)); RT_s_2.R_fromList ([RT_s_1.R_union (RT_s_2.R_hd((pl1'7E0_)), RT_s_1.R_fromList [])])) else (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (31, 11)); RT_s_2.R_fromList ([RT_s_1.R_union (RT_s_1.R_fromList [], RT_s_2.R_hd((pl2'7E5_)))])));
        
        fun createPlanForFamily'325_ f'39D_ = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (9, 31)); if RT_Nat.R_gt (RT_s_1.R_card((f'39D_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (10, 16)); RT_s_2.R_union (RT_s_2.R_fromList ([RT_s_1.R_fromList ([RT_s_1.R_hd((f'39D_))])]), ((createPlanForFamily'325_) (RT_s_1.R_diff (f'39D_, RT_s_1.R_fromList ([RT_s_1.R_hd((f'39D_))])))))) else (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (11, 15)); RT_s_2.R_fromList ([RT_s_1.R_fromList ([RT_s_1.R_hd((f'39D_))])])));
        
        fun createPlanForFamilies'519_ fs'593_ = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (14, 34)); if RT_Nat.R_gt (RT_s_2.R_card((fs'593_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (15, 16)); ((mergePlans'771_) (((createPlanForFamily'325_) (RT_s_2.R_hd((fs'593_)))), ((createPlanForFamilies'519_) (RT_s_2.R_diff (fs'593_, RT_s_2.R_fromList ([RT_s_2.R_hd((fs'593_))]))))))) else (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (17, 15)); ((createPlanForFamily'325_) (RT_s_2.R_hd((fs'593_))))));
        
        fun plan'D4D_ fs'DB6_ = (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (35, 17)); if not(((isWellformed'200E_) (fs'DB6_))) then raise RSL.RSL_exception ("Design.rsl:41:9: Precondition of plan" ^ "(" ^ RT_s_2.toString fs'DB6_ ^ ")" ^ " not satisfied") else let val RSL_res_'D4D_ = (if RT_Nat.equ (RT_s_2.R_card((fs'DB6_)), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (36, 15)); ((createPlanForFamily'325_) (RT_s_2.R_hd((fs'DB6_))))) else (R_coverage.cancel(RT_Text.fromLit "Design.rsl", (38, 6)); ((createPlanForFamilies'519_) (fs'DB6_)))) in if not(let val p'F47_ = RSL_res_'D4D_ in ((isCorrectPlan'16AE_) (p'F47_, fs'DB6_)) end) then raise RSL.RSL_exception ("Design.rsl:34:5: Result " ^ RT_s_2.toString RSL_res_'D4D_ ^ " of plan" ^ "(" ^ RT_s_2.toString fs'DB6_ ^ ")" ^ " does not satisfy postcondition") else RSL_res_'D4D_ end);
        
    end;
    
open Design;

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
RSL.print_error_count();
R_coverage.save_marked();
