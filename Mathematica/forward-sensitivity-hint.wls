#!/usr/bin/env wolframscript
(* ::Package:: *)

ClearAll["Global`*"]
SetOptions[Plot, PlotTheme->"Monochrome"];


(* ::Section:: *)
(*Forward  sensitivity  analysis*)


(* ::Subsection:: *)
(*Equation*)


(* ::Text:: *)
(*We  consider  the  following  differential  equation .*)


eq = y'[t] == -y[t] + Exp[-t];
ic = y[0] == \[Alpha];
tMax = 10;


eq // TraditionalForm
ic // TraditionalForm


(* ::Text:: *)
(*It  is  easy  to  find  the  analytical  solution .*)


exactSol = DSolve[{eq, ic}, y, t]


(* ::Text:: *)
(*We  plot  the  analytical  solution  for  several  values  of  \[Alpha]  parameter .*)


alphaValues = 1 + Subdivide[-1, 1, 6]
Map[First[y[t] /. exactSol /. \[Alpha]->#] &, alphaValues]


Plot[Evaluate[Map[First[y[t] /. exactSol /. \[Alpha]->#] &, alphaValues]], {t, 0, tMax}, PlotLegends->{alphaValues}, PlotRange->All]


(* ::Text:: *)
(*We  can  do  the  same  (numerically) using  ParametricNDSolve  construction.*)


parSol = ParametricNDSolve[{eq, ic}, y, {t, 0, tMax}, {\[Alpha]}]


(* ::Text:: *)
(*This  gives  us  the  solution  for  parameter  value  \[Alpha] = 1/2.*)


y[1/2][t] /. parSol


Plot[Evaluate[Map[y[#][t] /. parSol &, alphaValues]], {t, 0, tMax}, PlotLegends->{alphaValues}, PlotRange->All]


(* ::Subsection:: *)
(*Forward sensitivity analysis using ParametericNDSolve*)


(* ::Text:: *)
(*Now  we  can  ask  the  question:  "How sensitive is the value y[t] to the choice of the initial condition (parameter) \[Alpha]?"  (Here t is a fixed time.) In other words we want to find the derivative of y[t] with respect to \[Alpha]. Note that the solution y[t] is a function of the initial condition. *)


(* ::Text:: *)
(*This  plot  gives  us sensitivity of the solution with the initial condition Subscript[\[Alpha], fixed] to the small perturbations in the neighborhood of this initial condition.*)


Subscript[\[Alpha], fixed] = 1/2;
Plot[D[y[\[Alpha]][t] /. parSol, \[Alpha]] /. \[Alpha] -> Subscript[\[Alpha], fixed], {t, 0, tMax}, PlotRange->All]


Plot[
{
Evaluate[y[Subscript[\[Alpha], fixed]][t] /. parSol],
Evaluate[y[Subscript[\[Alpha], fixed]][t] /. parSol] - 1/10*Evaluate[D[y[\[Alpha]][t] /. parSol, \[Alpha]] /. \[Alpha] -> Subscript[\[Alpha], fixed]],
Evaluate[y[Subscript[\[Alpha], fixed]][t] /. parSol] + 1/10*Evaluate[D[y[\[Alpha]][t] /. parSol, \[Alpha]] /. \[Alpha] -> Subscript[\[Alpha], fixed]]
},
{t, 0, tMax}, 
PlotRange->All,
PlotStyle->{Thick, Dashed, Dashed},
PlotLegends->{"Solution with \!\(\*SubscriptBox[\(\[Alpha]\), \(fixed\)]\)", "Sensitivity (gradient +)", "Sensitivity (gradient -)"}
]


ClearAll["Global`*"]
f[\[Alpha]_,y_]:=Sin[y]+\[Alpha]
tmax=10;

eulerIterations[\[Alpha]_, n_, tfix_] := Module[
	{h, interval,eq,ic,y,t},
	h = tfix/n;
	interval = Table[N[i*(tfix)/(n)], {i,0, n}];
	Nest[#+h*f[\[Alpha],#]&,0,n]
]
D[eulerIterations[\[Alpha],15,tmax],\[Alpha]]


ansolnum[\[Alpha]_] := D[eulerIterations[a, 15, tmax], a] /. a -> \[Alpha]

ansolnumplot = Plot[ansolnum[\[Alpha]], {\[Alpha], -5, 5}]


\[Alpha]=2;
eq = y'[t] == f[\[Alpha],y[t]];
ic = y[0] == \[Alpha];
numsol = NDSolve[{eq,ic},y,{t,0,tmax}]


eqs = s'[t] == s[t]*D[f[\[Alpha], y], y] /. y -> (y[t] /. First[numsol]);
ics = s[0] == 1;
numsols = NDSolve[{eqs,ics},s,{t,0,tmax}]
Plot[s[t]/.numsols, {t,0,tmax}]
ansolnum[\[Alpha]]//N
First[s[tmax]/.numsols]


(* ::Text:: *)
(*Prv\[YAcute], pr\[IAcute]stup sa zd\[AAcute] by\[THacek] ve\:013emi v\[YAcute]po\[CHacek]tovo n\[AAcute]ro\[CHacek]n\[YAcute] v d\[OHat]sledku vyu\[ZHacek]itia funkcie NEST zalo\[ZHacek]enej na rekurzii, ktor\[AAcute] je v\[YAcute]po\[CHacek]etne ve\:013emi n\[AAcute]ro\[CHacek]n\[AAcute]. Pre hodnotu n=5 je gradient v bode tmax a \[Alpha] rovn\[YAcute] 21.6856 a pre hodnotu n=10 dost\[AAcute]vame 7.5887. Chcel som sk\[UAcute]si\[THacek] aj pre hodnotu 15 a 20, av\[SHacek]ak to u\[ZHacek] trvalo naozaj dlho a v\[YAcute]sledku som sa nedo\[CHacek]kal. Tak\[ZHacek]e aby sme dosiahli presnos\[THacek] s prvou met\[OAcute]dou, museli by sme vyu\[ZHacek]i\[THacek] ve\:013ea v\[YAcute]po\[CHacek]tovej sily, \[CHacek]o v porovnan\[IAcute] s druhou met\[OAcute]dou m\[OHat]\[ZHacek]e by\[THacek] celkom pl\[YAcute]tvanie.*)
