#!/usr/bin/env wolframscript
(* ::Package:: *)

ClearAll["Global`*"]
SetDirectory[NotebookDirectory[]];

int = RandomInteger[{3,10}];
(* In order to be sure we have even n we multiply the integer by 2 *)
n=2*int 

h = 2*Pi/n;
x[h_,j_]:=j*h

k = Table[-n/2+i,{i,1,n}];
l = Table[-n/2+i,{i,1,n}];

sum = Table[
		Table[
			FullSimplify[
				Sum[
					Exp[I*k[[i]]*x[h,p]]*Exp[-I*l[[j]]*x[h,p]],
					{p,0,n-1}
					]
				],
			{j,1,n}
			],
		{i,1,n}
		];
sum//MatrixForm

If[sum-n*IdentityMatrix[n]== 0*IdentityMatrix[n], Print["Identity is true!"], Print["Identity is false!"]]


ClearAll[k,u]
k = RandomInteger[{1, n/2 - 2}]
u[x_] := Sin[k*x]
Subscript[u,h] = Table[u[x[h,i]],{i,0,n-1}];
(* To be consistent with convention we edit Fourier parameters and multiply by 2\[Pi] to get constant in our convention *)
Chop[2*Pi*Fourier[Subscript[u,h], FourierParameters -> {-1, -1}]]


ClearAll[m,u]
m = RandomInteger[{1, n/2 - 2}]
u[x_] := Cos[m*x]
Subscript[u,h] = Table[u[x[h,i]],{i,0,n-1}];
Chop[2*Pi*Fourier[Subscript[u,h], FourierParameters -> {-1, -1}]]


ClearAll[c, s];

path = "./data/data.csv";
data = Flatten[Import[path, "CSV"]]
nData = Length[data];

F = 2*Pi*Fourier[data, FourierParameters -> {-1, -1}];

c[0] = Re[F[[1]]] / (2 Pi);
c[k_Integer /; k >= 1] := Re[F[[k+1]]] / Pi;

s[0] = 0;
s[k_Integer /; k >= 1] := -Im[F[[k+1]]] / Pi;

(* Maximal meaningful M is n/2 - 2, last nonzero position should be for actual M *)
Mmax = nData/2 - 2;
ck = Chop[Table[c[i], {i, 0, Mmax}]]
sk = Chop[Table[s[i], {i, 0, Mmax}]]

f[x_]:=Sum[ck[[i+1]]*Cos[i*x]+sk[[i+1]]*Sin[i*x],{i,0,Mmax}]
recreation = Table[f[x[2*Pi/nData,i]]//N,{i,0,nData-1}]

If[recreation === data, Print["Recreation successful"], Print["Recreation not successful"]]


Show[
	Plot[f[x],{x,0,2*Pi}],
	ListPlot[Transpose[{Table[x[2*Pi/nData//N,i],{i,0,nData-1}], data}],PlotStyle -> Red]
	]



