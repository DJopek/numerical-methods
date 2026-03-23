#!/usr/bin/env wolframscript
(* ::Package:: *)

ClearAll["Global`*"]


(* ::Section:: *)
(*Firing control system*)


(* ::Text:: *)
(*Famous mathematicians/physicists such as J. E. Littlewood and K.  Schwarzschild spent some time doing ballistic calculations. Let us follow these guys, and let us enhance our curriculum vitae with the same entry. Our task is to find the elevation (the angle between the horizontal plane and the gun barrel) that allows us to hit the target at a given position. We assume that the physical parameters of the system (shell weight m, friction factor d, gravitational acceleration g, muzzle velocity) are known, and that the motion of the shell is described by the evolution equation m r''[t]==-d*r'[t] - g m. (Motion in a homogeneous gravitational field with a frictional force proportional to the velocity. Troublemakers such as the Coriolis force, wind, air humidity and temperature and so forth present in a real world setting are not present in our simple model.)*)


(* ::Subsection:: *)
(*Flat terrain*)


(* ::Subsubsection:: *)
(*Elevation to impact location*)


(* ::Text:: *)
(*The following function takes the elevation and returns the trajectory, the impact point location and the flight time .*)


getSolution[elevation_?NumericQ]:= 
Block[{ m = 10, g= 9.81, d = 1/3, muzzleVelocity = 1000, r, x, y, ic, odes, sol, impactLocation, impactTime},

(*
The function returns trajectory, impact time and impact location for the flat terrain. 
The function takes elevation (rad) as an input, and it solves the corresponding governing 
ordinary differential equation until the vertical coordinate is zero (impact point).

It is assumed that the elevation is positive, and that all parameter values are reasonable. 
Meaning that the problem has a solution.
*)

(* 
The fact that getImpactLocation admits only NUMERICAL values for elevation, pattern test ?NumericQ, is critical. 
Otherwise FindRoot function will try to do some symbolic manipulations first, and it will end with an error. 
*)

(* Position vector. *)
r[t_]:={x[t], y[t]};

(* Set up the initial condition. The artillery system is placed at the origin [0,0]. *)
ic = Join[Thread[r[0] == {0, 0}], Thread[r'[0] == {muzzleVelocity*Cos[elevation], muzzleVelocity*Sin[elevation]}]];

(* Set up the governing differential equation *)
odes = (Thread[ m*r''[t] == -d*r'[t] -m*g*{0, 1}]);

(* Solve the governing differential equation, wait for the impact (y[t] == 0), and then stop the integration (solution process). *)
sol = NDSolve[Join[odes, ic, { WhenEvent[y[t]==0,{impactLocation=x[t], impactTime = t}; "StopIntegration"]}], {x, y}, {t, 0, Infinity}];

(* Return trajectory, impact time and impact location. *)
Join[sol, {impactTime, impactLocation}]
]

getImpactLocation[elevation_?NumericQ]:= getSolution[elevation][[3]]; (* The fact that getImpactLocation admits only NUMERICAL values, pattern test ?NumericQ, is critical. Otherwise the FindRoot function will try to do some symbolic manipulations first, and it will end with an error. *)
getImpactTime[elevation_?NumericQ] := getSolution[elevation][[2]];
getTrajectory[elevation_?NumericQ] := getSolution[elevation][[1]];


(* ::Subsubsection:: *)
(*Some tests*)


getSolution[\[Pi]/6]
trajectory = getTrajectory[\[Pi]/6]
impactLocation = getImpactLocation[\[Pi]/6]
impactTime = getImpactTime[\[Pi]/6]


(* ::Text:: *)
(*Plot of shell trajectory.*)


ParametricPlot[{x[t], y[t]} /. trajectory, {t, 0, impactTime}, PlotRange->All]


(* ::Text:: *)
(*Visualisation of the dependence of the shell trajectory on the elevation .*)


Manipulate[
trajectory = getTrajectory[elevation];
impactTime = getImpactTime[elevation];
ParametricPlot[{x[t], y[t]} /. trajectory, {t, 0, impactTime}, PlotRange->{{0, 30000}, {0, 20000}}],
{elevation, \[Pi]/10, \[Pi]/2-\[Pi]/100}
]


degreeTicksValues = FindDivisions[{0, 90}, 10]
degreeTicks = Map[{# * Degree, StringJoin[ToString[#],"\[Degree]"]} & , degreeTicksValues]


(* ::Text:: *)
(*The important thing is that the function getImpactLocation[elevation] is an ordinary function. (Albeit we can only evaluate in numerically and the numerical evaluation involves a solution of an ordinary differential equation.) We can, for example, plot this function as usual.*)


Plot[getImpactLocation[elevation], {elevation, 1 Degree, 89 Degree}, Ticks->{degreeTicks, Automatic}, AxesLabel->{"Elevation", "Impact location [m]"}] 


(* ::Subsection:: *)
(*Target acquisition and firing solution*)


(* ::Text:: *)
(*First do target acquisition. *)


targetLocation = 21000;


(* ::Text:: *)
(*We are now ready to find the firing solution. We simply adjust the elevation until the (elevation->impact location) returns the impact location that coincides with the target location.*)


firingSolA = FindRoot[getImpactLocation[elevation]== targetLocation, {elevation, 2*\[Pi]/3}]
firingSolB = FindRoot[getImpactLocation[elevation]== targetLocation, {elevation, \[Pi]/10}]


impactTimeA = getImpactTime[elevation]/. firingSolA
trajectoryA = getTrajectory[elevation] /. firingSolA

impactTimeB = getImpactTime[elevation]/. firingSolB
trajectoryB = getTrajectory[elevation] /. firingSolB


plotA = ParametricPlot[{x[t], y[t]} /. trajectoryA, {t,0, impactTimeA}, PlotRange->All, PlotStyle->{Thick, Red}]
plotB = ParametricPlot[{x[t], y[t]} /. trajectoryB, {t,0, impactTimeB}, PlotRange->All, PlotStyle->{Thick, Blue}]


Show[plotA, plotB]


(* ::Section:: *)
(*Problem*)


(* ::Text:: *)
(*Now assume that the terrain is not flat, and solve the same problem -- find the elevation that will allow us to hit the target that is at given _horizontal_ distance (targetLocation) sitting on the top of the terrain profile. Your artillery piece is located at the origin, you want to hit the red point.*)


(* ::Subsection:: *)
(*Generic terrain*)


terrainProfile[x_]:= 2000*Sin[x/10000] - 1000*Sin[x/2000];


terrainPlot = Plot[terrainProfile[x], {x, 0, 30000}, Filling->Bottom, FillingStyle->Gray,  PlotRange->{Automatic, {-1000, 10000}}, Epilog -> {Red, PointSize@Large, Point[{targetLocation, terrainProfile[targetLocation]}]}];
terrainPlot
targetLocationTerrain = N@terrainProfile[targetLocation]


(* ::Text:: *)
(*Vieme, \[ZHacek]e ImpactLocation mus\[IAcute] by\[THacek] v\[ADoubleDot]\[CHacek]\[SHacek]ia ako targetLocation, preto si vykresl\[IAcute]me z\[AAcute]vislos\[THacek] od elevation a hodnotu ImpactLocation, nech vizu\[AAcute]lne (a potom aj v\[YAcute]po\[CHacek]tom) zist\[IAcute]me, kde sa pohybuje rie\[SHacek]enie.*)


Plot[{getImpactLocation[elevation], targetLocation}, {elevation, 0 Degree, 89 Degree}, 
 Ticks -> {degreeTicks, Automatic}, 
 AxesLabel -> {"Elevation", "Impact location [m]"}]
 
sol1 = FindRoot[getImpactLocation[elevation]== targetLocation, {elevation, 2*\[Pi]/3}];
theta1 = elevation/.sol1
sol2 = FindRoot[getImpactLocation[elevation]== targetLocation, {elevation, \[Pi]/10}];
theta2 = elevation/.sol2


getImpactLocationTerrain[elevation_?NumericQ]:= getSolution[elevation][[3]]; (* The fact that getImpactLocation admits only NUMERICAL values, pattern test ?NumericQ, is critical. Otherwise the FindRoot function will try to do some symbolic manipulations first, and it will end with an error. *)
getImpactTimeTerrain[elevation_?NumericQ] := getSolution[elevation][[2]];
getTrajectoryTerrain[elevation_?NumericQ] := getSolution[elevation][[1]];

Manipulate[
 Module[{trajectory, impactTime, plot1},
  trajectory = getTrajectoryTerrain[elevation];
  impactTime = getImpactTimeTerrain[elevation];
  plot1 = ParametricPlot[{x[t], y[t]} /. trajectory, {t, 0, impactTime}, 
    PlotStyle -> {Thick, Red}];
  Show[terrainPlot, plot1, PlotRange -> {{0, 30000}, {-1000, 20000}}]
 ],
 {elevation, theta1, theta2}
]


getSolutionTerrain[elevation_?NumericQ]:= 
Block[{ m = 10, g= 9.81, d = 1/3, muzzleVelocity = 1000, r, x, y, ic, odes, sol, height, impactTime},

(*
The function returns trajectory, impact time and impact location for the flat terrain. 
The function takes elevation (rad) as an input, and it solves the corresponding governing 
ordinary differential equation until the vertical coordinate is zero (impact point).

It is assumed that the elevation is positive, and that all parameter values are reasonable. 
Meaning that the problem has a solution.
*)

(* 
The fact that getImpactLocation admits only NUMERICAL values for elevation, pattern test ?NumericQ, is critical. 
Otherwise FindRoot function will try to do some symbolic manipulations first, and it will end with an error. 
*)

(* Position vector. *)
r[t_]:={x[t], y[t]};

(* Set up the initial condition. The artillery system is placed at the origin [0,0]. *)
ic = Join[Thread[r[0] == {0, 0}], Thread[r'[0] == {muzzleVelocity*Cos[elevation], muzzleVelocity*Sin[elevation]}]];

(* Set up the governing differential equation *)
odes = (Thread[ m*r''[t] == -d*r'[t] -m*g*{0, 1}]);

(* Solve the governing differential equation, wait for the impact (y[t] == 0), and then stop the integration (solution process). *)
sol = NDSolve[Join[odes, ic, { WhenEvent[x[t]==targetLocation,{height=y[t], impactTime = t}; "StopIntegration"]}], {x, y}, {t, 0, Infinity}];

(* Return trajectory, impact time and impact location. *)
Join[sol, {impactTime, height}]
]

getHeight[elevation_?NumericQ]:= getSolutionTerrain[elevation][[3]]; (* The fact that getImpactLocation admits only NUMERICAL values, pattern test ?NumericQ, is critical. Otherwise the FindRoot function will try to do some symbolic manipulations first, and it will end with an error. *)
getImpactTimeTerrain[elevation_?NumericQ] := getSolutionTerrain[elevation][[2]];
getTrajectoryTerrain[elevation_?NumericQ] := getSolutionTerrain[elevation][[1]];

firingSol1 = FindRoot[getHeight[elevation]== targetLocationTerrain, {elevation, theta1}];
firingSol2 = FindRoot[getHeight[elevation]== targetLocationTerrain, {elevation, theta2}];

impactTime1 = getImpactTime[elevation]/. firingSol1;
trajectory1 = getTrajectory[elevation] /. firingSol1;

impactTime2 = getImpactTime[elevation]/. firingSol2;
trajectory2 = getTrajectory[elevation] /. firingSol2;

plot1 = ParametricPlot[{x[t], y[t]} /. trajectory1, {t,0, impactTime1}, PlotRange->All, PlotStyle->{Thick, Red}];
plot2 = ParametricPlot[{x[t], y[t]} /. trajectory2, {t,0, impactTime2}, PlotRange->All, PlotStyle->{Thick, Blue}];

Show[terrainPlot, plot1, plot2]
