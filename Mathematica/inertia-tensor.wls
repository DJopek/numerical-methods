#!/usr/bin/env wolframscript
(* ::Package:: *)

ClearAll["Global`*"]

InertiaTensor2D[b_,h_,\[Rho]_]:=Module[
	{reg1, reg2, reg3, \[CapitalOmega], rho,r, Integrand, J},
	
	reg1 = RegionProduct[Line[{{-b/2},{b/2}}], Line[{{h/3},{h/2}}]];
	reg2 = RegionProduct[Line[{{-b/4},{b/4}}], Line[{{-h/3},{h/3}}]];
	reg3 = RegionProduct[Line[{{-b/2},{b/2}}], Line[{{-h/3},{-h/2}}]];
	
	\[CapitalOmega] = RegionUnion[reg1, reg2, reg3];
	
	If[NumericQ[b] && NumericQ[h], Print["Our domain is:"] && Print[Region[\[CapitalOmega],Axes->True]], 0];
	
	rho[r_]:=\[Rho];
	r[x_,y_] := {x,y};
	
	Integrand = ((r[x,y] . r[x,y])*IdentityMatrix[2] - TensorProduct[r[x,y],r[x,y]])*rho[r[x,y]];
	Print["We are integrating:"];
	Print[Integrand//MatrixForm];
	Print["Moment of inertia calculated by built-in function (with unit density):"];
	Print[MomentOfInertia[\[CapitalOmega], Assumptions->{b>0, h>0}]//MatrixForm];
	Print["Moment of inertia calculated from scratch:"];
	J = Integrate[Integrand,{x,y}\[Element]\[CapitalOmega], Assumptions->{b>0, h>0}];
	Print[J//MatrixForm];
]

InertiaTensor2D[b,h,\[Rho]];
InertiaTensor2D[1,3,7850];


ClearAll["Global`*"]

InertiaTensor3D[b_,h_,L_,\[Rho]_]:=Module[
	{reg1, reg2, reg3, \[CapitalOmega], rho,r, Integrand, J},
	
	reg1 = RegionProduct[Line[{{-b/2},{b/2}}], Line[{{h/3},{h/2}}], Line[{{-L/2},{L/2}}]];
	reg2 = RegionProduct[Line[{{-b/4},{b/4}}], Line[{{-h/3},{h/3}}], Line[{{-L/2},{L/2}}]];
	reg3 = RegionProduct[Line[{{-b/2},{b/2}}], Line[{{-h/3},{-h/2}}], Line[{{-L/2},{L/2}}]];
	
	\[CapitalOmega] = RegionUnion[reg1, reg2, reg3];
	
	If[NumericQ[b] && NumericQ[h] && NumericQ[L], Print["Our domain is:"] && Print[Region[\[CapitalOmega],Axes->True]], 0];
	
	rho[r_]:=\[Rho];
	r[x_,y_,z_] := {x,y,z};
	
	Integrand = ((r[x,y,z] . r[x,y,z])*IdentityMatrix[3] - TensorProduct[r[x,y,z],r[x,y,z]])*rho[r[x,y,z]];
	Print["We are integrating:"];
	Print[Integrand//MatrixForm];
	Print["Moment of inertia calculated by built-in function (with unit density):"];
	Print[MomentOfInertia[\[CapitalOmega], Assumptions->{b>0, h>0, L>0}]//MatrixForm];
	Print["Moment of inertia calculated from scratch:"];
	J = Integrate[Integrand,{x,y,z}\[Element]\[CapitalOmega], Assumptions->{b>0, h>0, L>0}];
	Print[J//MatrixForm];
]

InertiaTensor3D[b,h,L,\[Rho]];
InertiaTensor3D[1,3,10,7850];



