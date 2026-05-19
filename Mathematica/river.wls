#!/usr/bin/env wolframscript
(* ::Package:: *)

ClearAll["Global`*"]
$PlotTheme = "Monochrome";
SetDirectory[NotebookDirectory[]];


(* ::Subsection::Closed:: *)
(*Geometry approach*)


(* ::Text:: *)
(*I'll use here something I learned when I was on high school and we had a mathematical seminar and we were solving there some problems from "synthetic geometry" (where I thought that even though it's really cool one might never use that in application, I was wrong :D ). *)
(*One particular problem I remember was the flat reflection problem. Imagine you have two points in the same half-plane and you have a line of reflection (a flat river :D). You want to find the shortest path from one point to the other while "visiting" the line (the river). The solution was to reflect the second point by the line (mirror symmetry), connect the first point with the reflected point and then reflect back the part of the path that is in other half-plane. (I think I even tried back then to write it analytically, find the minimum using derivatives and use this as an analytical proof of the "synthetic" solution.)*)
(*This looked to be a very similar problem. So as a person who often visits Karlin building, I tried to reformulate the problem to the problem above, so to the problem I can solve. Every smooth, well behaved curve is locally flat. Using derivatives, we can find the infinitesimal approximation of the local "flat" behavior. So we will reflect the second point by this tangent line. But since we need to add additional constraint as we need to actually get to the river.*)


(* setup of things we know *)
f[x_]:=-1/100*(x-3)^2-2
c = 10;
xA = {-c,0};
xB = {c,0};

(* river point *)
xR[xr_]:={xr,f[xr]}

(* tangent line to the curve in the river point *)
k[xr_]:=f'[xr]
q[xr_]:=f[xr]-k[xr]*xr
yt[xr_,x_]:=k[xr]*x+q[xr]

(* Tangent line to the tangent line that crosses the point B, we need this in order to construct the reflected point *)
yT[xr_,x_]:=1/k[xr]*(xB[[1]]-x)+xB[[2]]

(* intersection of our tangent lines *)
Px[xr_]:=(1/k[xr]*xB[[1]]+xB[[2]]-q[xr])*1/(k[xr]+1/k[xr])
P[xr_]:={Px[xr],yt[xr,Px[xr]]}
(* here we calculated the reflected point as we know that average of the original point and the reflected point is the point P, the midpoint *)
xBreflected[xr_] := 2*P[xr] - xB

(* connection of A and the reflected point *)
yShort[xr_,x_,reflected_]:=(reflected[[2]]-xA[[2]])/(reflected[[1]]-xA[[1]])*(x-xA[[1]])+xA[[2]]

(* intersection of the path from A to the reflected point and the tangent line, this is the candidate for xminimal *)
xMinCandidate[xr_]:= x/.Solve[yt[xr, x] == yShort[xr, x,xBreflected[xr]], x][[1]]

(* intersection as an actual {x,y} point *)
minpoint[xr_] := {xMinCandidate[xr],yt[xr,xMinCandidate[xr]]}

(* here we use the additional constraint that the intersection point need to line on the river as we actually need to get to the river *)
xmin = xmin/.FindRoot[minpoint[xmin][[2]]==f[xmin],{xmin,0}];
xR[xmin]


(* Plot of the construction with some value of a river point *)
Show[
	Plot[{f[x], yt[-2, x],yT[-2,x],yShort[1,x,xBreflected[-2]]}, {x, -11, 11}, PlotRange -> {-10, 10}],
	ListPlot[{xA, xB, xR[-2],P[-2], xBreflected[-2],minpoint[-2]}, PlotStyle -> PointSize[Large]]
]
Norm[xA-xR[-2]]+Norm[xB-xR[-2]]//N

(* Plot of the construction with the value of the river point that minimizes the distance *)
Show[
	Plot[{f[x], yt[xmin, x],yT[xmin,x],yShort[xmin,x,xBreflected[xmin]]}, {x, -11, 11}, PlotRange -> {-10, 10}],
	ListPlot[{xA, xB, xR[xmin],P[xmin], xBreflected[xmin],minpoint[xmin]}, PlotStyle -> PointSize[Large]]
]

Norm[xA-xR[xmin]]+Norm[xB-xR[xmin]]


(* side by side comparison, one party zoo-like image to celebrate the last hw :) *)
Show[
    Plot[
		{f[x],
		yt[-2, x], yShort[-2, x, xBreflected[-2]],
		yt[xmin, x], yShort[xmin, x, xBreflected[xmin]]},
		{x, -11, 11}, 
		PlotRange -> {-10, 10},
		PlotStyle -> {
			Black,
			Black, Black,
			Green, Red}],
    ListPlot[{xA, xB}, PlotStyle -> {Blue, PointSize[Large]}],
    ListPlot[{xR[-2], P[-2], xBreflected[-2], minpoint[-2]}, PlotStyle -> {Black, PointSize[Large]}],
    ListPlot[{xR[xmin], P[xmin], xBreflected[xmin], minpoint[xmin]}, PlotStyle -> {Red, PointSize[Large]}]
]


(* ::Text:: *)
(**)


(* ::Input:: *)
(**)


(* ::Subsection::Closed:: *)
(*Analytical approach*)


d[xr_] := Sqrt[(xA[[1]]-xr)^2 + (xA[[2]]-f[xr])^2] + Sqrt[(xB[[1]]-xr)^2 + (xB[[2]]-f[xr])^2] (* Norm doesn't work here, full expansion is needed *)

xminanalytical = xr/.FindRoot[D[d[xr],xr]==0,{xr,0}];
xR[xminanalytical]


Norm[xA-xR[xminanalytical]]+Norm[xB-xR[xminanalytical]]
d[xminanalytical]



