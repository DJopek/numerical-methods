#!/usr/bin/env wolframscript
(* ::Package:: *)

ClearAll["Global`*"]
SetDirectory[NotebookDirectory[]]


(* ::Section:: *)
(*Approximation by a neural network*)


(* ::Text:: *)
(*Function and its node values.*)


(* Function we are going to approximate. *)
f[x_] := Sin[5*x];

NN      = 100;
(* nodes  = RandomReal[{-1, 1}, NN]; *)
nodes  = N@Table[Cos[i*\[Pi]/NN], {i, 0, NN}];
values = Map[f[#] &, nodes];


(* ::Text:: *)
(*Neural - network approximant of a function on [-1, 1] built from a given set of nodal values .*)


(* Parameters for the neural network. *)
width = 10;
depth = 3;
rounds = 4000;

(* Training pairs are {x_i}  ->  {f(x_i)}. We need it in this format for training. *)
data = MapThread[{#1} -> {#2} &, {nodes, values}]


(* Neural network architecture. *)
layers = Flatten @ {
      Table[{LinearLayer[width], ElementwiseLayer["ReLU"]}, depth],
      LinearLayer[1]   
};

neuralNetwork = NetChain[layers, "Input" -> 1, "Output" -> 1];


NetGraph[neuralNetwork]


(* Train the network, and return complete data set characterising the trained network. *)
trainedAll = NetTrain[neuralNetwork, data, All, MaxTrainingRounds ->  rounds, LossFunction -> MeanAbsoluteLossLayer[]]


trainedAll["TrainedNet"]


(* ::Text:: *)
(*We can access parameter values.*)


NetExtract[trainedAll["TrainedNet"], {1, "Weights"}] 
NetExtract[trainedAll["TrainedNet"], {1, "Biases"}] // Normal


(* ::Text:: *)
(*Use the trained neural network as an approximant.*)


approx[x_?NumericQ] := First[trainedAll["TrainedNet"][x]]


Timing[approx[0.1]]


(* ::Text:: *)
(*Visual comparison.*)


Plot[{f[x], approx[x]}, {x, -1, 1},
   PlotLegends -> {"f(x)", "neural network approximant"},
   PlotStyle   -> {Black, Directive[Red, Dashed, Thick]}
]


(* Pointwise error *)
Plot[approx[x] - f[x], {x, -1, 1},
   PlotRange -> All,
   PlotLabel -> "Pointwise error  approx(x) - f(x)"
]


(* ::Text:: *)
(*We could have improved the performance by sampling a larger interval than [-1, 1] and so forth. But this short excursion give an idea regarding the performance of neural networks as universal approximants.*)
