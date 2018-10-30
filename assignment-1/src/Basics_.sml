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

structure Basics =
    struct
        type Person_ = RT_Text.t;
        
        type Family_ = RT_s_1.t;
        
        type Families_ = RT_s_2.t;
        
        type Table_ = RT_s_1.t;
        
        type Plan_ = RT_s_2.t;
        
        fun isWellformed'EDE_ fs'F4F_ = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (39, 26)); ((RSL.C_not RT_s_2.equ) (fs'F4F_, RT_s_2.R_fromList [])) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (39, 38)); if RT_Nat.R_gt (RT_s_2.R_card(fs'F4F_), RT_Int.fromLit "1") then (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (39, 58)); ((RT_s_2.R_all (fn (f'F7B_:RT_s_1.t) => not ((RSL.C_not RT_s_1.equ) (f'F7B_, RT_s_1.R_fromList [])) orelse (((RT_s_2.R_all (fn (f''FC2_:RT_s_1.t) => not ((RSL.C_not RT_s_1.equ) (f'F7B_, f''FC2_)) orelse (((RSL.C_not RT_s_1.equ) (f''FC2_, RT_s_1.R_fromList [])) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (41, 34)); RT_s_1.equ (RT_s_1.R_inter (f'F7B_, f''FC2_), RT_s_1.R_fromList [])))) (fs'F4F_))))) (fs'F4F_)))) else (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (44, 15)); true)));
        
        fun areRelatives'4B6_ (p1'527_, p2'52B_, fs'52F_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 34)); ((RT_s_2.R_exists (fn (f'53E_:RT_s_1.t) => ((RSL.C_not RT_Text.equ) (p1'527_, p2'52B_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 81)); (RT_s_1.R_mem (p1'527_, f'53E_)) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (13, 94)); RT_s_1.R_mem (p2'52B_, f'53E_)))) (fs'52F_))));
        
        fun isWellformedTable'AF6_ (t'B6C_, fs'B6F_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (29, 34)); (RT_Nat.equ (RT_s_1.R_card(t'B6C_), RT_Int.fromLit "1")) orelse (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (30, 21)); (((RSL.C_not RT_s_1.equ) (t'B6C_, RT_s_1.R_fromList [])) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (30, 33)); ((RT_s_1.R_all (fn (p'BDE_:RT_Text.t) => ((RT_s_1.R_all (fn (p''C43_:RT_Text.t) => not ((RSL.C_not RT_Text.equ) (p'BDE_, p''C43_)) orelse (not (((areRelatives'4B6_) (p'BDE_, p''C43_, fs'B6F_))))) (t'B6C_)))) (t'B6C_)))))));
        
        fun isCorrectPlan'5E2_ (plan'654_, fs'65A_) = (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (16, 33)); (((RT_s_2.R_all (fn (t'666_:RT_s_1.t) => ((isWellformedTable'AF6_) (t'666_, fs'65A_))) (plan'654_)))) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (18, 16)); (((RT_s_2.R_all (fn (t'71D_:RT_s_1.t) => ((RT_s_2.R_all (fn (t''782_:RT_s_1.t) => not ((RSL.C_not RT_s_1.equ) (t'71D_, t''782_)) orelse (RT_s_1.equ (RT_s_1.R_inter (t'71D_, t''782_), RT_s_1.R_fromList []))) (plan'654_)))) (plan'654_)))) andalso (R_coverage.cancel(RT_Text.fromLit "Basics.rsl", (22, 12)); ((RT_s_2.R_all (fn (f'8A9_:RT_s_1.t) => ((RT_s_1.R_all (fn (p'912_:RT_Text.t) => ((RT_s_2.R_exists (fn (t'974_:RT_s_1.t) => RT_s_1.R_mem (p'912_, t'974_)) (plan'654_)))) (f'8A9_)))) (fs'65A_))))));
        
    end;
    
open Basics;

RSL.print_load_errs();
RSL.set_time();
R_coverage.init();
(R_coverage.mark(RT_Text.fromLit "Basics.rsl", (22, 12), (26, 13));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (18, 16), (26, 13));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (16, 33), (26, 13));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (30, 33), (35, 20));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (30, 21), (35, 21));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (29, 34), (35, 21));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 94), (14, 3));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 81), (14, 3));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (13, 34), (14, 4));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (41, 34), (42, 14));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (44, 15), (44, 20));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (39, 58), (44, 13));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (39, 38), (46, 3));
R_coverage.mark(RT_Text.fromLit "Basics.rsl", (39, 26), (46, 3)));
RSL.print_error_count();
R_coverage.save_marked();
