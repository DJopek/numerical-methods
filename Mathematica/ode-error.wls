#!/usr/bin/env wolframscript
(* ::Package:: *)

ClearAll["Global`*"]
SetDirectory[NotebookDirectory[]]


(* ::Text:: *)
(*Function which is non- zero outside the interval [centre - diam, centre + diam] . Integral is always equal to one .*)


rhs[x_, centre_:0, diam_:1] := 1/diam*UnitTriangle[(x - centre)/diam]


(* ::Text:: *)
(*Let us set some parameters.*)


TT = 10;
a = 1;
b = 0.001;


(* ::Text:: *)
(*We solve a simple ordinary differential equation and we plot the solution .*)


sol1 = NDSolve[{x''[t] == -x'[t] + rhs[t, a, b], x[0] == 0, x'[0] == 0}, x, {t, a, TT}]
plot1 = Plot[x[t] /. sol1, {t, a, TT}, PlotRange->All]
sol2 = NDSolve[{x''[t] == -x'[t] + rhs[t, a, b], x[0] == 0, x'[0] == 0}, x, {t, 0, a}]
plot2 = Plot[x[t] /. sol2, {t, 0, a}, PlotRange->All]
Show[plot1, plot2, 
   PlotRange -> All, 
   AxesLabel -> {"t", "x(t)"}, 
   PlotLabel -> "Rie\[SHacek]enie roztrhnut\[IAcute]m a zlepen\[IAcute]m"]


(* ::Text:: *)
(*a je nezauj\[IAcute]mav\[YAcute] parameter, ten n\[AAcute]m len pos\[UAcute]va trojuholn\[IAcute]k doprava alebo do\:013eava. Av\[SHacek]ak b n\[AAcute]m pos\[UAcute]va vrcholy trojuholn\[IAcute]ka k sebe, ke\[DHacek] ho zmen\[SHacek]ujeme a z\[AAcute]rove\[NHacek] \[CHacek]len 1/b prudko rastie. Preto prav\[AAcute] strana je aproxim\[AAcute]ciou delta "funkcie".  T\[YAcute]m p\[AAcute]dom rie\[SHacek]enie tejto rovnice zodpoved\[AAcute] h\:013eadaniu fundament\[AAcute]lneho rie\[SHacek]enie v zmysle distrib\[UAcute]ci\[IAcute], teda y''+y'=dirac delta. Univerz\[AAcute]lne/kucha\[RHacek]kov\[EAcute] rie\[SHacek]enie je v tomto pr\[IAcute]pade met\[OAcute]da lepenia.*)
(*Najprv vyrie\[SHacek]ime rovnicu mimo probl\[EAcute]mov\[EAcute]ho bodu a . Fundament\[AAcute]lny syst\[EAcute]m je v tvare*)
(*pre *)
(*t>a*)


x1[t_] := A*Exp[-t]+B


(* ::Text:: *)
(*t<a*)


x2[t_]:=C*Exp[-t]+D


(* ::Text:: *)
(*Zlepovacia podmienka n\[AAcute]m d\[AAcute] (integr\[AAcute]ciou v epsilonovom okol\[IAcute] bodu a, prav\[AAcute] stran\[AAcute] bude rovn\[AAcute] 1,  x je spojit\[AAcute], preto integr\[AAcute]cia \[CHacek]lenu x' vypadne a ostane x'(eps+) - x'(eps-) = 1).*)


x1'[a]-x2'[a]


(* ::Text:: *)
(*Spojitos\[THacek] n\[AAcute]m z\[AAcute]rove\[NHacek] d\[AAcute]va x1[a] = x2[a].*)


(* ::Text:: *)
(*Z t\[YAcute]chto dvoch podmienok dost\[AAcute]vame*)


C = A+Exp[a]
B = 1+D


(* ::Text:: *)
(*Na ur\[CHacek]enie kon\[SHacek]t\[AAcute]nt n\[AAcute]m pom\[OHat]\[ZHacek]u po\[CHacek]iato\[CHacek]n\[EAcute] podmienky (ak 0>a alebo ak 0<a)*)


x1[0] = 0
x1'[0]=0
x2[0] = 0
x2'[0]=0


A=-B
A=0
B=0
C=-D
C=0
D=0


(* ::Text:: *)
(*Pre 0>a dost\[AAcute]vame*)


C=Exp[a]
D=-1
x1 = 0
x2 = -1+Exp[-t+a]


(* ::Text:: *)
(*Pre 0<a dost\[AAcute]vame*)


A=-Exp[a]
B=1
x1=1-Exp[-t+a]
x2=0


(* ::Text:: *)
(*Teda idea na numerick\[EAcute] rie\[SHacek]enie je tak\[EAcute], \[ZHacek]e to vlaste len roztrhnem na dve \[CHacek]asti rovnako ako to m\[AAcute]m analyticky, \[CHacek]\[IAcute]m sa vyhnem probl\[EAcute]mov\[EAcute]mu bodu a potom to zlep\[IAcute]m dokopy.*)
