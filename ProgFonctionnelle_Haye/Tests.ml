#use "Projet_Robert_Haye_Bottin.ml";;

is_constant("3");;
is_constant("n");;

int_var_to_tree("11");;
int_var_to_tree("x");;

is_symb("+");;
is_symb("a");;

string_to_ope("*");;
string_to_ope("-");;

ope_to_string(PLUS);;
ope_to_string(DIV);;

first_pile(ACC(EMPTY,CST(1)));;
first_pile(ACC(ACC(EMPTY,CST(5)),VAR("n")));;

rem_pile(ACC(EMPTY,CST(1)));;
rem_pile(ACC(ACC(EMPTY,CST(1)),VAR("i")));;


let test : string list = ["13";"2";"5";"*";"1";"1";"/";"-";"+"];;
let test2 : string list = ["a";"7";"*";"c";"*";"e";"9";"+";"*"];;

pars(test);;
pars(test2);;
pars(["13";"2";"5";"*";"6";"3";"/";"-";"~";"+"]);;

tree_symb(OP(FOIS,OP(FOIS,OP(PLUS,CST(5),CST(0)),CST(1)),CST(1)));;
tree_symb(OP(MOINS,CST(5),VAR("x")));;
tree_symb(VAR("o"));;

is_leaf(OP(FOIS,OP(FOIS,OP(PLUS,CST(5),CST(0)),CST(1)),CST(1)));;
is_leaf(OP(MOINS,CST(5),VAR("x")));;
is_leaf(VAR("o"));;

simp(OP(FOIS,OP(FOIS,OP(PLUS,CST(5),CST(0)),CST(1)),CST(1)));;
simp(OP(MOINS,OP(PLUS,VAR("x"),CST(0)),CST(4)));;
simp(OP(MOINS,CST(5),VAR("x")));;


simp(pars(test));;
simp(pars(test2));;
simp(pars(["13";"2";"5";"*";"6";"3";"/";"-";"~";"+"]));;


is_ope(OP(FOIS,OP(FOIS,OP(PLUS,CST(5),CST(0)),CST(1)),CST(1)));;
is_ope(OP(MOINS,CST(5),VAR("x")));;
is_ope(VAR("o"));;


tree_to_string(OP(MOINS,CST(5),VAR("x")));;
tree_to_string(CST(2));;

rule("*","-");;
rule("/","+");;
rule("+","-");;
rule("+","9");;



display(simp(pars(["13";"2";"5";"*";"6";"3";"/";"-";"~";"+"])));;
display(pars(test));;
display(pars(test2));;



divide(CST(5),CST(0));;
divide(VAR("a"),CST(1));;
divide(CST(0),CST(3));;
divide(CST(10),CST(5));;
divide(CST(9),CST(9));;

divide(CST(12),NEG(CST(3)));;
divide(NEG(CST(12)),CST(3));;
divide(CST(3),NEG(CST(3)));;
divide(NEG(CST(3)),CST(3));;
divide(NEG(CST(3)),NEG(CST(3)));;

divide(VAR("a"),CST(6));;
divide(NEG(VAR("a")),CST(6));;
divide(VAR("a"),NEG(CST(6)));;
divide(NEG(VAR("a")),NEG(CST(6)));;


divide(CST(8),VAR("i"));;
divide(CST(8),NEG(VAR("i")));;
divide(NEG(CST(8)),VAR("i"));;
divide(NEG(CST(8)),NEG(VAR("i")));;

divide(VAR("m"),VAR("n"));;
divide(VAR("m"),VAR("m"));;

divide(NEG(VAR("m")),VAR("n"));;
divide(VAR("m"),NEG(VAR("n")));;
divide(NEG(VAR("m")),NEG(VAR("n")));;

divide(NEG(VAR("n")),VAR("n"));;
divide(VAR("n"),NEG(VAR("n")));;
divide(NEG(VAR("m")),NEG(VAR("m")));;







times(CST(5),CST(0));;
times(CST(5),CST(1));;
times(CST(0),CST(3));;
times(CST(10),CST(5));;

times(CST(12),NEG(CST(3)));;
times(NEG(CST(12)),CST(3));;
times(CST(0),NEG(CST(3)));;
times(NEG(CST(3)),CST(0));;
times(NEG(CST(3)),CST(1));;
times(NEG(CST(3)),NEG(CST(3)));;

times(VAR("a"),CST(6));;
times(NEG(VAR("a")),CST(6));;
times(VAR("a"),NEG(CST(6)));;
times(VAR("a"),NEG(CST(0)));;
times(VAR("a"),NEG(CST(1)));;
times(NEG(VAR("a")),NEG(CST(6)));;


times(CST(8),VAR("i"));;
times(CST(8),NEG(VAR("i")));;
times(CST(0),NEG(VAR("i")));;
times(NEG(CST(8)),VAR("i"));;
times(NEG(CST(8)),NEG(VAR("i")));;
times(NEG(CST(0)),NEG(VAR("i")));;

times(VAR("m"),VAR("n"));;
times(VAR("m"),CST(0));;
times(VAR("m"),CST(1));;

times(NEG(VAR("m")),VAR("n"));;
times(VAR("m"),NEG(VAR("n")));;
times(NEG(VAR("m")),NEG(VAR("n")));;

times(NEG(VAR("n")),VAR("n"));;
times(NEG(VAR("m")),NEG(CST(7)));;
times(NEG(VAR("m")),NEG(CST(0)));;
times(NEG(VAR("m")),NEG(CST(1)));;



plus(CST(5),CST(0));;
plus(CST(0),CST(3));;
plus(CST(10),CST(5));;

plus(CST(12),NEG(CST(3)));;
plus(NEG(CST(12)),CST(3));;
plus(NEG(CST(3)),CST(3));;
plus(CST(0),NEG(CST(3)));;
plus(NEG(CST(3)),CST(0));;
plus(NEG(CST(3)),NEG(CST(3)));;

plus(VAR("a"),CST(6));;
plus(NEG(VAR("a")),CST(6));;
plus(VAR("a"),NEG(CST(6)));;
plus(VAR("a"),NEG(CST(0)));;
plus(NEG(VAR("a")),NEG(CST(6)));;


plus(CST(8),VAR("i"));;
plus(CST(8),NEG(VAR("i")));;
plus(CST(0),NEG(VAR("i")));;
plus(NEG(CST(8)),VAR("i"));;
plus(NEG(CST(8)),NEG(VAR("i")));;
plus(NEG(CST(0)),NEG(VAR("i")));;

plus(VAR("m"),VAR("m"));;
plus(VAR("m"),CST(0));;

plus(NEG(VAR("m")),VAR("n"));;
plus(NEG(VAR("m")),VAR("m"));;
plus(VAR("m"),NEG(VAR("n")));;
plus(VAR("m"),NEG(VAR("m")));;
plus(NEG(VAR("m")),NEG(VAR("n")));;

plus(NEG(VAR("n")),VAR("n"));;
plus(NEG(VAR("m")),NEG(CST(7)));;
plus(NEG(VAR("m")),NEG(CST(0)));;






minus(CST(5),CST(0));;
minus(CST(0),CST(3));;
minus(CST(10),CST(5));;

minus(CST(12),NEG(CST(3)));;
minus(NEG(CST(12)),CST(3));;
minus(NEG(CST(3)),CST(3));;
minus(CST(0),NEG(CST(3)));;
minus(NEG(CST(3)),CST(0));;
minus(NEG(CST(6)),NEG(CST(3)));;

minus(VAR("a"),CST(6));;
minus(NEG(VAR("a")),CST(6));;
minus(VAR("a"),NEG(CST(6)));;
minus(VAR("a"),NEG(CST(0)));;
minus(NEG(VAR("a")),NEG(CST(6)));;


minus(CST(8),VAR("i"));;
minus(CST(8),NEG(VAR("i")));;
minus(CST(0),NEG(VAR("i")));;
minus(NEG(CST(8)),VAR("i"));;
minus(NEG(CST(8)),NEG(VAR("i")));;
minus(NEG(CST(0)),NEG(VAR("i")));;

minus(VAR("m"),VAR("m"));;
minus(VAR("m"),CST(0));;

minus(NEG(VAR("m")),VAR("n"));;
minus(NEG(VAR("m")),VAR("m"));;
minus(VAR("m"),NEG(VAR("n")));;
minus(VAR("m"),NEG(VAR("m")));;
minus(NEG(VAR("m")),NEG(VAR("m")));;

minus(NEG(VAR("n")),VAR("n"));;
minus(NEG(VAR("m")),NEG(CST(7)));;
minus(NEG(VAR("m")),NEG(CST(0)));;
