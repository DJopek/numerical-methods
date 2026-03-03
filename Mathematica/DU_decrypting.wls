(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Wolfram 14.2' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       154,          7]
NotebookDataLength[    116430,       2567]
NotebookOptionsPosition[    115093,       2538]
NotebookOutlinePosition[    115491,       2554]
CellTagsIndexPosition[    115448,       2551]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[{
 RowBox[{
  RowBox[{"freqCzech", " ", "=", " ", 
   RowBox[{
    RowBox[{"LanguageData", "[", "\"\<Czech\>\"", "]"}], 
    "[", "\"\<LetterFrequency\>\"", "]"}]}], "\[IndentingNewLine]"}], "\n", 
 RowBox[{"BarChart", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Values", "[", "freqCzech", "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"ChartLabels", " ", "->", " ", 
    RowBox[{"Keys", "[", "freqCzech", "]"}]}], ",", "\[IndentingNewLine]", 
   RowBox[{
   "PlotLabel", " ", "->", " ", "\"\<Letter frequency (Czech)\>\""}]}], 
  "\[IndentingNewLine]", "]"}]}], "Input",
 CellLabel->"In[61]:=",ExpressionUUID->"65b7da83-e926-4c8c-9a4e-9aea83773f98"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"\<\"a\"\>", "\[Rule]", 
    TemplateBox[{
     "8.4209999999999993747`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"e\"\>", "\[Rule]", 
    TemplateBox[{
     "7.5620000000000002771`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"o\"\>", "\[Rule]", 
    TemplateBox[{
     "6.6950000000000002842`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"n\"\>", "\[Rule]", 
    TemplateBox[{
     "6.4679999999999999716`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"i\"\>", "\[Rule]", 
    TemplateBox[{
     "6.0730000000000003979`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"t\"\>", "\[Rule]", 
    TemplateBox[{
     "5.7270000000000003126`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"v\"\>", "\[Rule]", 
    TemplateBox[{
     "5.3440000000000003055`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"s\"\>", "\[Rule]", 
    TemplateBox[{
     "5.2119999999999997442`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"r\"\>", "\[Rule]", 
    TemplateBox[{
     "4.7990000000000003766`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"l\"\>", "\[Rule]", 
    TemplateBox[{
     "3.8020000000000000462`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"d\"\>", "\[Rule]", 
    TemplateBox[{
     "3.4750000000000000888`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"k\"\>", "\[Rule]", 
    TemplateBox[{
     "2.8940000000000001279`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"m\"\>", "\[Rule]", 
    TemplateBox[{
     "2.4460000000000001741`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"u\"\>", "\[Rule]", 
    TemplateBox[{
     "2.1600000000000001421`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"p\"\>", "\[Rule]", 
    TemplateBox[{
     "1.9059999999999999165`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"\[IAcute]\"\>", "\[Rule]", 
    TemplateBox[{"1.643000000000000016`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"z\"\>", "\[Rule]", 
    TemplateBox[{
     "1.5029999999999998916`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"j\"\>", "\[Rule]", 
    TemplateBox[{
     "1.4330000000000000515`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"h\"\>", "\[Rule]", 
    TemplateBox[{
     "1.3560000000000000941`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"\[EHacek]\"\>", "\[Rule]", 
    TemplateBox[{
     "1.2219999999999999751`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"y\"\>", "\[Rule]", 
    TemplateBox[{
     "1.0429999999999999272`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"\[YAcute]\"\>", "\[Rule]", 
    TemplateBox[{
     "0.9949999999999999956`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"\[AAcute]\"\>", "\[Rule]", 
    TemplateBox[{
     "0.8669999999999999929`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"b\"\>", "\[Rule]", 
    TemplateBox[{
     "0.8219999999999999529`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"c\"\>", "\[Rule]", 
    TemplateBox[{
     "0.7399999999999999911`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"\[ZHacek]\"\>", "\[Rule]", 
    TemplateBox[{
     "0.7209999999999999742`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"\[SHacek]\"\>", "\[Rule]", 
    TemplateBox[{
     "0.6879999999999999449`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"\[EAcute]\"\>", "\[Rule]", 
    TemplateBox[{
     "0.6330000000000000071`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"\[CHacek]\"\>", "\[Rule]", 
    TemplateBox[{
     "0.4620000000000000218`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"\[RHacek]\"\>", "\[Rule]", 
    TemplateBox[{
     "0.3800000000000000044`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"\[URing]\"\>", "\[Rule]", 
    TemplateBox[{
     "0.2039999999999999869`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"g\"\>", "\[Rule]", 
    TemplateBox[{
     "0.0919999999999999984`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"f\"\>", "\[Rule]", 
    TemplateBox[{
     "0.0840000000000000052`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"\[UAcute]\"\>", "\[Rule]", 
    TemplateBox[{
     "0.0449999999999999983`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"x\"\>", "\[Rule]", 
    TemplateBox[{
     "0.0269999999999999997`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"\[OAcute]\"\>", "\[Rule]", 
    TemplateBox[{
     "0.0240000000000000005`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"w\"\>", "\[Rule]", 
    TemplateBox[{
     "0.0160000000000000003`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"\[DHacek]\"\>", "\[Rule]", 
    TemplateBox[{
     "0.0149999999999999994`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"\[NHacek]\"\>", "\[Rule]", 
    TemplateBox[{
     "0.0070000000000000001`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"\[THacek]\"\>", "\[Rule]", 
    TemplateBox[{
     "0.0060000000000000001`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}], ",", 
   RowBox[{"\<\"q\"\>", "\[Rule]", 
    TemplateBox[{"0.001`3.", "\"%\"", "percent", "\"Percent\""},
     "QuantityPostfix"]}]}], "}"}]], "Output",
 CellChangeTimes->{3.9814519266682863`*^9, 3.981463679029632*^9},
 CellLabel->"Out[61]=",ExpressionUUID->"92f98d4b-80ba-4c8d-b9be-3adbb6058e89"],

Cell[BoxData[
 GraphicsBox[{
   {Opacity[0], 
    PointBox[{{-0.1817303711880779, 0.}, {41.36704843383469, 0.}}]}, {{}, 
    {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{0.6329515661653097, 0.}, {1.36704843383469, 8.421},
          RoundingRadius->0],
         StatusArea[#, 8.4209999999999993747`3.]& ,
         TagBoxNote->"8.4209999999999993747`3."],
        StyleBox["8.4209999999999993747`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[8.4209999999999993747`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{1.6329515661653096, 0.}, {2.36704843383469, 7.562},
          RoundingRadius->0],
         StatusArea[#, 7.5620000000000002771`3.]& ,
         TagBoxNote->"7.5620000000000002771`3."],
        StyleBox["7.5620000000000002771`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[7.5620000000000002771`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{2.6329515661653096, 0.}, {3.36704843383469, 6.695},
          RoundingRadius->0],
         StatusArea[#, 6.6950000000000002842`3.]& ,
         TagBoxNote->"6.6950000000000002842`3."],
        StyleBox["6.6950000000000002842`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[6.6950000000000002842`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{3.6329515661653096, 0.}, {4.3670484338346895, 6.468},
          RoundingRadius->0],
         StatusArea[#, 6.4679999999999999716`3.]& ,
         TagBoxNote->"6.4679999999999999716`3."],
        StyleBox["6.4679999999999999716`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[6.4679999999999999716`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{4.632951566165309, 0.}, {5.3670484338346895, 6.073},
          RoundingRadius->0],
         StatusArea[#, 6.0730000000000003979`3.]& ,
         TagBoxNote->"6.0730000000000003979`3."],
        StyleBox["6.0730000000000003979`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[6.0730000000000003979`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{5.632951566165309, 0.}, {6.3670484338346895, 5.727},
          RoundingRadius->0],
         StatusArea[#, 5.7270000000000003126`3.]& ,
         TagBoxNote->"5.7270000000000003126`3."],
        StyleBox["5.7270000000000003126`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[5.7270000000000003126`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{6.632951566165309, 0.}, {7.3670484338346895, 5.344},
          RoundingRadius->0],
         StatusArea[#, 5.3440000000000003055`3.]& ,
         TagBoxNote->"5.3440000000000003055`3."],
        StyleBox["5.3440000000000003055`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[5.3440000000000003055`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{7.632951566165309, 0.}, {8.36704843383469, 5.212},
          RoundingRadius->0],
         StatusArea[#, 5.2119999999999997442`3.]& ,
         TagBoxNote->"5.2119999999999997442`3."],
        StyleBox["5.2119999999999997442`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[5.2119999999999997442`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{8.632951566165309, 0.}, {9.36704843383469, 4.799},
          RoundingRadius->0],
         StatusArea[#, 4.7990000000000003766`3.]& ,
         TagBoxNote->"4.7990000000000003766`3."],
        StyleBox["4.7990000000000003766`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[4.7990000000000003766`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{9.632951566165309, 0.}, {10.36704843383469, 3.802},
          RoundingRadius->0],
         StatusArea[#, 3.8020000000000000462`3.]& ,
         TagBoxNote->"3.8020000000000000462`3."],
        StyleBox["3.8020000000000000462`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[3.8020000000000000462`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{10.632951566165309, 0.}, {11.36704843383469, 3.475},
          RoundingRadius->0],
         StatusArea[#, 3.4750000000000000888`3.]& ,
         TagBoxNote->"3.4750000000000000888`3."],
        StyleBox["3.4750000000000000888`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[3.4750000000000000888`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{11.632951566165309, 0.}, {12.36704843383469, 2.894},
          RoundingRadius->0],
         StatusArea[#, 2.8940000000000001279`3.]& ,
         TagBoxNote->"2.8940000000000001279`3."],
        StyleBox["2.8940000000000001279`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[2.8940000000000001279`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{12.632951566165309, 0.}, {13.36704843383469, 2.446},
          RoundingRadius->0],
         StatusArea[#, 2.4460000000000001741`3.]& ,
         TagBoxNote->"2.4460000000000001741`3."],
        StyleBox["2.4460000000000001741`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[2.4460000000000001741`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{13.632951566165309, 0.}, {14.36704843383469, 2.16},
          RoundingRadius->0],
         StatusArea[#, 2.1600000000000001421`3.]& ,
         TagBoxNote->"2.1600000000000001421`3."],
        StyleBox["2.1600000000000001421`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[2.1600000000000001421`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{14.632951566165309, 0.}, {15.36704843383469, 1.906},
          RoundingRadius->0],
         StatusArea[#, 1.9059999999999999165`3.]& ,
         TagBoxNote->"1.9059999999999999165`3."],
        StyleBox["1.9059999999999999165`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[1.9059999999999999165`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{15.632951566165309, 0.}, {16.36704843383469, 1.643},
          RoundingRadius->0],
         StatusArea[#, 1.643000000000000016`3.]& ,
         TagBoxNote->"1.643000000000000016`3."],
        StyleBox["1.643000000000000016`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[1.643000000000000016`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{16.63295156616531, 0.}, {17.36704843383469, 1.503},
          RoundingRadius->0],
         StatusArea[#, 1.5029999999999998916`3.]& ,
         TagBoxNote->"1.5029999999999998916`3."],
        StyleBox["1.5029999999999998916`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[1.5029999999999998916`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{17.63295156616531, 0.}, {18.36704843383469, 1.433},
          RoundingRadius->0],
         StatusArea[#, 1.4330000000000000515`3.]& ,
         TagBoxNote->"1.4330000000000000515`3."],
        StyleBox["1.4330000000000000515`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[1.4330000000000000515`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{18.63295156616531, 0.}, {19.36704843383469, 1.356},
          RoundingRadius->0],
         StatusArea[#, 1.3560000000000000941`3.]& ,
         TagBoxNote->"1.3560000000000000941`3."],
        StyleBox["1.3560000000000000941`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[1.3560000000000000941`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{19.63295156616531, 0.}, {20.36704843383469, 1.222},
          RoundingRadius->0],
         StatusArea[#, 1.2219999999999999751`3.]& ,
         TagBoxNote->"1.2219999999999999751`3."],
        StyleBox["1.2219999999999999751`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[1.2219999999999999751`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{20.63295156616531, 0.}, {21.36704843383469, 1.043},
          RoundingRadius->0],
         StatusArea[#, 1.0429999999999999272`3.]& ,
         TagBoxNote->"1.0429999999999999272`3."],
        StyleBox["1.0429999999999999272`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[1.0429999999999999272`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{21.63295156616531, 0.}, {22.36704843383469, 0.995},
          RoundingRadius->0],
         StatusArea[#, 0.9949999999999999956`3.]& ,
         TagBoxNote->"0.9949999999999999956`3."],
        StyleBox["0.9949999999999999956`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.9949999999999999956`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{22.63295156616531, 0.}, {23.36704843383469, 0.867},
          RoundingRadius->0],
         StatusArea[#, 0.8669999999999999929`3.]& ,
         TagBoxNote->"0.8669999999999999929`3."],
        StyleBox["0.8669999999999999929`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.8669999999999999929`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{23.63295156616531, 0.}, {24.36704843383469, 0.822},
          RoundingRadius->0],
         StatusArea[#, 0.8219999999999999529`3.]& ,
         TagBoxNote->"0.8219999999999999529`3."],
        StyleBox["0.8219999999999999529`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.8219999999999999529`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{24.63295156616531, 0.}, {25.36704843383469, 0.74},
          RoundingRadius->0],
         StatusArea[#, 0.7399999999999999911`3.]& ,
         TagBoxNote->"0.7399999999999999911`3."],
        StyleBox["0.7399999999999999911`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.7399999999999999911`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{25.63295156616531, 0.}, {26.36704843383469, 0.721},
          RoundingRadius->0],
         StatusArea[#, 0.7209999999999999742`3.]& ,
         TagBoxNote->"0.7209999999999999742`3."],
        StyleBox["0.7209999999999999742`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.7209999999999999742`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{26.63295156616531, 0.}, {27.36704843383469, 0.688},
          RoundingRadius->0],
         StatusArea[#, 0.6879999999999999449`3.]& ,
         TagBoxNote->"0.6879999999999999449`3."],
        StyleBox["0.6879999999999999449`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.6879999999999999449`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{27.63295156616531, 0.}, {28.36704843383469, 0.633},
          RoundingRadius->0],
         StatusArea[#, 0.6330000000000000071`3.]& ,
         TagBoxNote->"0.6330000000000000071`3."],
        StyleBox["0.6330000000000000071`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.6330000000000000071`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{28.63295156616531, 0.}, {29.36704843383469, 0.462},
          RoundingRadius->0],
         StatusArea[#, 0.4620000000000000218`3.]& ,
         TagBoxNote->"0.4620000000000000218`3."],
        StyleBox["0.4620000000000000218`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.4620000000000000218`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{29.63295156616531, 0.}, {30.36704843383469, 0.38},
          RoundingRadius->0],
         StatusArea[#, 0.3800000000000000044`3.]& ,
         TagBoxNote->"0.3800000000000000044`3."],
        StyleBox["0.3800000000000000044`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.3800000000000000044`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{30.63295156616531, 0.}, {31.36704843383469, 0.204},
          RoundingRadius->0],
         StatusArea[#, 0.2039999999999999869`3.]& ,
         TagBoxNote->"0.2039999999999999869`3."],
        StyleBox["0.2039999999999999869`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.2039999999999999869`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{31.63295156616531, 0.}, {32.36704843383469, 0.092},
          RoundingRadius->0],
         StatusArea[#, 0.0919999999999999984`3.]& ,
         TagBoxNote->"0.0919999999999999984`3."],
        StyleBox["0.0919999999999999984`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.0919999999999999984`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{32.63295156616531, 0.}, {33.36704843383469, 0.084},
          RoundingRadius->0],
         StatusArea[#, 0.0840000000000000052`3.]& ,
         TagBoxNote->"0.0840000000000000052`3."],
        StyleBox["0.0840000000000000052`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.0840000000000000052`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{33.63295156616531, 0.}, {34.36704843383469, 0.045},
          RoundingRadius->0],
         StatusArea[#, 0.0449999999999999983`3.]& ,
         TagBoxNote->"0.0449999999999999983`3."],
        StyleBox["0.0449999999999999983`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.0449999999999999983`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{34.63295156616531, 0.}, {35.36704843383469, 0.027},
          RoundingRadius->0],
         StatusArea[#, 0.0269999999999999997`3.]& ,
         TagBoxNote->"0.0269999999999999997`3."],
        StyleBox["0.0269999999999999997`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.0269999999999999997`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{35.63295156616531, 0.}, {36.36704843383469, 0.024},
          RoundingRadius->0],
         StatusArea[#, 0.0240000000000000005`3.]& ,
         TagBoxNote->"0.0240000000000000005`3."],
        StyleBox["0.0240000000000000005`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.0240000000000000005`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{36.63295156616531, 0.}, {37.36704843383469, 0.016},
          RoundingRadius->0],
         StatusArea[#, 0.0160000000000000003`3.]& ,
         TagBoxNote->"0.0160000000000000003`3."],
        StyleBox["0.0160000000000000003`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.0160000000000000003`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{37.63295156616531, 0.}, {38.36704843383469, 0.015},
          RoundingRadius->0],
         StatusArea[#, 0.0149999999999999994`3.]& ,
         TagBoxNote->"0.0149999999999999994`3."],
        StyleBox["0.0149999999999999994`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.0149999999999999994`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{38.63295156616531, 0.}, {39.36704843383469, 0.007},
          RoundingRadius->0],
         StatusArea[#, 0.0070000000000000001`3.]& ,
         TagBoxNote->"0.0070000000000000001`3."],
        StyleBox["0.0070000000000000001`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.0070000000000000001`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{39.63295156616531, 0.}, {40.36704843383469, 0.006},
          RoundingRadius->0],
         StatusArea[#, 0.0060000000000000001`3.]& ,
         TagBoxNote->"0.0060000000000000001`3."],
        StyleBox["0.0060000000000000001`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.0060000000000000001`3., {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.413], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[
         RectangleBox[{40.63295156616531, 0.}, {41.36704843383469, 0.001},
          RoundingRadius->0],
         StatusArea[#, 0.001`3.]& ,
         TagBoxNote->"0.001`3."],
        StyleBox["0.001`3.", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[0.001`3., {}], "Tooltip"]& ]}}, {}, {}}, {}, {}, {}, {}, 
   StyleBox[
    StyleBox[{
      {Thickness[Tiny], 
       LineBox[{{-0.1817303711880779, 0.}, {42.198024009935146`, 0.}}], 
       StyleBox[{}, "GraphicsLabel",
        StripOnInput->False]}, 
      StyleBox[{
        {Thickness[Tiny], 
         LineBox[{{0.6329515661653097, 0.}, 
           Offset[{-1.102182119232618*^-15, -6.}, {0.6329515661653097, 0.}]}],
          LineBox[{{41.36704843383469, 0.}, 
           Offset[{-1.102182119232618*^-15, -6.}, {41.36704843383469, 
            0.}]}], {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {
           LineBox[{{1.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {1.36704843383469, 0.}]}],
            LineBox[{{1.6329515661653096`, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {1.6329515661653096`, 
              0.}]}], LineBox[{{2.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {2.36704843383469, 0.}]}],
            LineBox[{{2.6329515661653096`, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {2.6329515661653096`, 
              0.}]}], LineBox[{{3.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {3.36704843383469, 0.}]}],
            LineBox[{{3.6329515661653096`, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {3.6329515661653096`, 
              0.}]}], LineBox[{{4.3670484338346895`, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {4.3670484338346895`, 
              0.}]}], LineBox[{{4.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {4.63295156616531, 0.}]}],
            LineBox[{{5.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {5.36704843383469, 0.}]}],
            LineBox[{{5.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {5.63295156616531, 0.}]}],
            LineBox[{{6.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {6.36704843383469, 0.}]}],
            LineBox[{{6.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {6.63295156616531, 0.}]}],
            LineBox[{{7.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {7.36704843383469, 0.}]}],
            LineBox[{{7.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {7.63295156616531, 0.}]}],
            LineBox[{{8.367048433834691, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {8.367048433834691, 
              0.}]}], LineBox[{{8.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {8.63295156616531, 0.}]}],
            LineBox[{{9.367048433834691, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {9.367048433834691, 
              0.}]}], LineBox[{{9.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {9.63295156616531, 0.}]}],
            LineBox[{{10.367048433834691`, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {10.367048433834691`, 
              0.}]}], LineBox[{{10.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {10.63295156616531, 
              0.}]}], LineBox[{{11.367048433834691`, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {11.367048433834691`, 
              0.}]}], LineBox[{{11.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {11.63295156616531, 
              0.}]}], LineBox[{{12.367048433834691`, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {12.367048433834691`, 
              0.}]}], LineBox[{{12.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {12.63295156616531, 
              0.}]}], LineBox[{{13.367048433834691`, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {13.367048433834691`, 
              0.}]}], LineBox[{{13.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {13.63295156616531, 
              0.}]}], 
           LineBox[{{14.367048433834691`, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {14.367048433834691`, 
              0.}]}], LineBox[{{14.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {14.63295156616531, 
              0.}]}], LineBox[{{15.367048433834691`, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {15.367048433834691`, 
              0.}]}], LineBox[{{15.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {15.63295156616531, 
              0.}]}], LineBox[{{16.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {16.36704843383469, 
              0.}]}], LineBox[{{16.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {16.63295156616531, 
              0.}]}], LineBox[{{17.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {17.36704843383469, 
              0.}]}], LineBox[{{17.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {17.63295156616531, 
              0.}]}], LineBox[{{18.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {18.36704843383469, 
              0.}]}], LineBox[{{18.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {18.63295156616531, 
              0.}]}], LineBox[{{19.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {19.36704843383469, 
              0.}]}], LineBox[{{19.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {19.63295156616531, 
              0.}]}], LineBox[{{20.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {20.36704843383469, 
              0.}]}], LineBox[{{20.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {20.63295156616531, 
              0.}]}], LineBox[{{21.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {21.36704843383469, 
              0.}]}], LineBox[{{21.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {21.63295156616531, 
              0.}]}], LineBox[{{22.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {22.36704843383469, 
              0.}]}], LineBox[{{22.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {22.63295156616531, 
              0.}]}], LineBox[{{23.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {23.36704843383469, 
              0.}]}], LineBox[{{23.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {23.63295156616531, 
              0.}]}], LineBox[{{24.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {24.36704843383469, 
              0.}]}], LineBox[{{24.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {24.63295156616531, 
              0.}]}], LineBox[{{25.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {25.36704843383469, 
              0.}]}], LineBox[{{25.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {25.63295156616531, 
              0.}]}], LineBox[{{26.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {26.36704843383469, 
              0.}]}], LineBox[{{26.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {26.63295156616531, 
              0.}]}], LineBox[{{27.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {27.36704843383469, 
              0.}]}], LineBox[{{27.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {27.63295156616531, 
              0.}]}], LineBox[{{28.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {28.36704843383469, 
              0.}]}], LineBox[{{28.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {28.63295156616531, 
              0.}]}], LineBox[{{29.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {29.36704843383469, 
              0.}]}], LineBox[{{29.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {29.63295156616531, 
              0.}]}], LineBox[{{30.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {30.36704843383469, 
              0.}]}], LineBox[{{30.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {30.63295156616531, 
              0.}]}], LineBox[{{31.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {31.36704843383469, 
              0.}]}], LineBox[{{31.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {31.63295156616531, 
              0.}]}], LineBox[{{32.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {32.36704843383469, 
              0.}]}], LineBox[{{32.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {32.63295156616531, 
              0.}]}], 
           LineBox[{{33.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {33.36704843383469, 
              0.}]}], LineBox[{{33.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {33.63295156616531, 
              0.}]}], LineBox[{{34.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {34.36704843383469, 
              0.}]}], LineBox[{{34.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {34.63295156616531, 
              0.}]}], LineBox[{{35.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {35.36704843383469, 
              0.}]}], LineBox[{{35.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {35.63295156616531, 
              0.}]}], LineBox[{{36.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {36.36704843383469, 
              0.}]}], LineBox[{{36.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {36.63295156616531, 
              0.}]}], LineBox[{{37.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {37.36704843383469, 
              0.}]}], LineBox[{{37.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {37.63295156616531, 
              0.}]}], LineBox[{{38.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {38.36704843383469, 
              0.}]}], LineBox[{{38.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {38.63295156616531, 
              0.}]}], LineBox[{{39.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {39.36704843383469, 
              0.}]}], LineBox[{{39.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {39.63295156616531, 
              0.}]}], LineBox[{{40.36704843383469, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {40.36704843383469, 
              0.}]}], LineBox[{{40.63295156616531, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {40.63295156616531, 
              0.}]}]}, {}}}, 
        StyleBox[
         {Thickness[Tiny], 
          InsetBox["\<\"a\"\>", Offset[{0, -2}, {0.9999999999999998, 0.}], 
           NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"e\"\>", Offset[{0, -2}, {2., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"o\"\>", Offset[{0, -2}, {3., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"n\"\>", Offset[{0, -2}, {3.9999999999999996, 0.}], 
           NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"i\"\>", Offset[{0, -2}, {5., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"t\"\>", Offset[{0, -2}, {6., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"v\"\>", Offset[{0, -2}, {7., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"s\"\>", Offset[{0, -2}, {8., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"r\"\>", Offset[{0, -2}, {9., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"l\"\>", Offset[{0, -2}, {10., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"d\"\>", Offset[{0, -2}, {11., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"k\"\>", Offset[{0, -2}, {12., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"m\"\>", Offset[{0, -2}, {13., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"u\"\>", Offset[{0, -2}, {14., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"p\"\>", Offset[{0, -2}, {15., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\[IAcute]\"\>", Offset[{0, -2}, {16., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"z\"\>", Offset[{0, -2}, {17., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"j\"\>", Offset[{0, -2}, {18., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"h\"\>", Offset[{0, -2}, {19., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\[EHacek]\"\>", Offset[{0, -2}, {20., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"y\"\>", Offset[{0, -2}, {21., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\[YAcute]\"\>", Offset[{0, -2}, {22., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\[AAcute]\"\>", Offset[{0, -2}, {23., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"b\"\>", Offset[{0, -2}, {24., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"c\"\>", Offset[{0, -2}, {25., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\[ZHacek]\"\>", Offset[{0, -2}, {26., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\[SHacek]\"\>", Offset[{0, -2}, {27., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\[EAcute]\"\>", Offset[{0, -2}, {28., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\[CHacek]\"\>", Offset[{0, -2}, {29., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\[RHacek]\"\>", Offset[{0, -2}, {30., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\[URing]\"\>", Offset[{0, -2}, {31., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"g\"\>", Offset[{0, -2}, {32., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"f\"\>", Offset[{0, -2}, {33., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\[UAcute]\"\>", Offset[{0, -2}, {34., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"x\"\>", Offset[{0, -2}, {35., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\[OAcute]\"\>", Offset[{0, -2}, {36., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"w\"\>", Offset[{0, -2}, {37., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\[DHacek]\"\>", Offset[{0, -2}, {38., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\[NHacek]\"\>", Offset[{0, -2}, {39., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\[THacek]\"\>", Offset[{0, -2}, {40., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"q\"\>", Offset[{0, -2}, {41., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}]}, "GraphicsLabel",
         StripOnInput->False]}, "GraphicsTicks",
       StripOnInput->False]},
     Antialiasing->False], "GraphicsAxes",
    StripOnInput->False]},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{False, True},
  AxesLabel->{None, None},
  AxesOrigin->{-0.1817303711880779, 0.},
  CoordinatesToolOptions:>{"DisplayFunction" -> ({
      Identity[
       Part[#, 1]], 
      Identity[
       Part[#, 2]]}& ), "CopiedValueFunction" -> ({
      Identity[
       Part[#, 1]], 
      Identity[
       Part[#, 2]]}& )},
  DisplayFunction->Identity,
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  PlotLabel->FormBox["\"Letter frequency (Czech)\"", TraditionalForm],
  PlotRange->{{All, All}, {All, All}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{None, Automatic}]], "Output",
 CellChangeTimes->{3.9814519266682863`*^9, 3.981463679547221*^9},
 CellLabel->"Out[62]=",ExpressionUUID->"b7c291ff-5abb-42af-be11-b232009dfb03"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"freqText", "[", "inputFileName_String", "]"}], " ", ":=", " ", 
   "\n", 
   RowBox[{"Module", "[", "\n", "\t", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"content", ",", " ", "encoding"}], "}"}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{"encoding", " ", "=", " ", "\"\<UTF8\>\""}], ";", "\n", "\t", 
      RowBox[{"content", " ", "=", " ", 
       RowBox[{"Import", "[", 
        RowBox[{"inputFileName", ",", " ", "\"\<Text\>\"", ",", " ", 
         RowBox[{"CharacterEncoding", " ", "->", " ", "encoding"}]}], "]"}]}],
       ";", "\[IndentingNewLine]", 
      RowBox[{"freq", " ", "=", " ", 
       RowBox[{"CharacterCounts", "[", "content", "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"BarChart", "[", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Values", "[", "freq", "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"ChartLabels", " ", "->", " ", 
         RowBox[{"Keys", "[", "freq", "]"}]}], ",", "\[IndentingNewLine]", 
        RowBox[{
        "PlotLabel", " ", "->", " ", "\"\<Letter frequency (Text)\>\""}]}], 
       "\[IndentingNewLine]", "]"}]}]}], "\n", "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"freqText", 
  "[", "\"\</Users/davidjopek/Downloads/new-technologies.encrypted.txt\>\"", 
  "]"}], "\[IndentingNewLine]", "freq"}], "Input",
 CellChangeTimes->{{3.981455937471342*^9, 3.981455971369454*^9}, {
   3.981456028726865*^9, 3.981456059549749*^9}, {3.981456810904825*^9, 
   3.981456951381939*^9}, {3.981457047270821*^9, 3.981457139006222*^9}, {
   3.981457176852221*^9, 3.981457245292461*^9}, {3.981457295921138*^9, 
   3.9814573406517467`*^9}, {3.9814574151634417`*^9, 3.981457440446753*^9}, 
   3.9814575166204576`*^9, 3.981457642816807*^9, {3.981457735154291*^9, 
   3.981457777321124*^9}, 3.9814580427722178`*^9, {3.981458153660016*^9, 
   3.981458155746191*^9}, {3.98145819121345*^9, 3.9814581915525627`*^9}, {
   3.981458236223131*^9, 3.981458238050992*^9}, {3.9814583284675713`*^9, 
   3.981458360757702*^9}, {3.981458626849635*^9, 3.981458627763266*^9}, {
   3.981458854882621*^9, 3.981458863298895*^9}, {3.981458972001872*^9, 
   3.981458977197603*^9}, {3.981459018964286*^9, 3.981459042555132*^9}, {
   3.981459442071258*^9, 3.9814594865241632`*^9}},
 CellLabel->"In[16]:=",ExpressionUUID->"24e7f297-cc93-48be-a634-f7ba69a153f9"],

Cell[BoxData[
 GraphicsBox[{
   {Opacity[0], PointBox[{{-0.96, 0.}, {73.5, 0.}}]}, {{}, 
    {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{0.5, 0.}, {1.5, 1401.},
          RoundingRadius->0],
         StatusArea[#, 1401]& ,
         TagBoxNote->"1401"],
        StyleBox["1401", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[1401, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{1.5, 0.}, {2.5, 530.},
          RoundingRadius->0],
         StatusArea[#, 530]& ,
         TagBoxNote->"530"],
        StyleBox["530", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[530, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{2.5, 0.}, {3.5, 491.},
          RoundingRadius->0],
         StatusArea[#, 491]& ,
         TagBoxNote->"491"],
        StyleBox["491", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[491, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{3.5, 0.}, {4.5, 481.},
          RoundingRadius->0],
         StatusArea[#, 481]& ,
         TagBoxNote->"481"],
        StyleBox["481", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[481, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{4.5, 0.}, {5.5, 368.},
          RoundingRadius->0],
         StatusArea[#, 368]& ,
         TagBoxNote->"368"],
        StyleBox["368", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[368, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{5.5, 0.}, {6.5, 337.},
          RoundingRadius->0],
         StatusArea[#, 337]& ,
         TagBoxNote->"337"],
        StyleBox["337", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[337, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{6.5, 0.}, {7.5, 280.},
          RoundingRadius->0],
         StatusArea[#, 280]& ,
         TagBoxNote->"280"],
        StyleBox["280", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[280, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{7.5, 0.}, {8.5, 254.},
          RoundingRadius->0],
         StatusArea[#, 254]& ,
         TagBoxNote->"254"],
        StyleBox["254", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[254, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{8.5, 0.}, {9.5, 237.},
          RoundingRadius->0],
         StatusArea[#, 237]& ,
         TagBoxNote->"237"],
        StyleBox["237", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[237, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{9.5, 0.}, {10.5, 236.},
          RoundingRadius->0],
         StatusArea[#, 236]& ,
         TagBoxNote->"236"],
        StyleBox["236", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[236, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{10.5, 0.}, {11.5, 198.},
          RoundingRadius->0],
         StatusArea[#, 198]& ,
         TagBoxNote->"198"],
        StyleBox["198", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[198, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{11.5, 0.}, {12.5, 188.},
          RoundingRadius->0],
         StatusArea[#, 188]& ,
         TagBoxNote->"188"],
        StyleBox["188", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[188, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{12.5, 0.}, {13.5, 184.},
          RoundingRadius->0],
         StatusArea[#, 184]& ,
         TagBoxNote->"184"],
        StyleBox["184", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[184, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{13.5, 0.}, {14.5, 175.},
          RoundingRadius->0],
         StatusArea[#, 175]& ,
         TagBoxNote->"175"],
        StyleBox["175", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[175, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{14.5, 0.}, {15.5, 169.},
          RoundingRadius->0],
         StatusArea[#, 169]& ,
         TagBoxNote->"169"],
        StyleBox["169", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[169, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{15.5, 0.}, {16.5, 169.},
          RoundingRadius->0],
         StatusArea[#, 169]& ,
         TagBoxNote->"169"],
        StyleBox["169", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[169, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{16.5, 0.}, {17.5, 168.},
          RoundingRadius->0],
         StatusArea[#, 168]& ,
         TagBoxNote->"168"],
        StyleBox["168", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[168, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{17.5, 0.}, {18.5, 165.},
          RoundingRadius->0],
         StatusArea[#, 165]& ,
         TagBoxNote->"165"],
        StyleBox["165", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[165, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{18.5, 0.}, {19.5, 157.},
          RoundingRadius->0],
         StatusArea[#, 157]& ,
         TagBoxNote->"157"],
        StyleBox["157", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[157, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{19.5, 0.}, {20.5, 147.},
          RoundingRadius->0],
         StatusArea[#, 147]& ,
         TagBoxNote->"147"],
        StyleBox["147", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[147, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{20.5, 0.}, {21.5, 141.},
          RoundingRadius->0],
         StatusArea[#, 141]& ,
         TagBoxNote->"141"],
        StyleBox["141", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[141, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{21.5, 0.}, {22.5, 129.},
          RoundingRadius->0],
         StatusArea[#, 129]& ,
         TagBoxNote->"129"],
        StyleBox["129", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[129, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{22.5, 0.}, {23.5, 122.},
          RoundingRadius->0],
         StatusArea[#, 122]& ,
         TagBoxNote->"122"],
        StyleBox["122", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[122, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{23.5, 0.}, {24.5, 104.},
          RoundingRadius->0],
         StatusArea[#, 104]& ,
         TagBoxNote->"104"],
        StyleBox["104", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[104, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{24.5, 0.}, {25.5, 95.},
          RoundingRadius->0],
         StatusArea[#, 95]& ,
         TagBoxNote->"95"],
        StyleBox["95", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[95, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{25.5, 0.}, {26.5, 94.},
          RoundingRadius->0],
         StatusArea[#, 94]& ,
         TagBoxNote->"94"],
        StyleBox["94", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[94, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{26.5, 0.}, {27.5, 94.},
          RoundingRadius->0],
         StatusArea[#, 94]& ,
         TagBoxNote->"94"],
        StyleBox["94", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[94, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{27.5, 0.}, {28.5, 85.},
          RoundingRadius->0],
         StatusArea[#, 85]& ,
         TagBoxNote->"85"],
        StyleBox["85", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[85, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{28.5, 0.}, {29.5, 74.},
          RoundingRadius->0],
         StatusArea[#, 74]& ,
         TagBoxNote->"74"],
        StyleBox["74", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[74, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{29.5, 0.}, {30.5, 62.},
          RoundingRadius->0],
         StatusArea[#, 62]& ,
         TagBoxNote->"62"],
        StyleBox["62", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[62, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{30.5, 0.}, {31.5, 61.},
          RoundingRadius->0],
         StatusArea[#, 61]& ,
         TagBoxNote->"61"],
        StyleBox["61", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[61, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{31.5, 0.}, {32.5, 57.},
          RoundingRadius->0],
         StatusArea[#, 57]& ,
         TagBoxNote->"57"],
        StyleBox["57", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[57, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{32.5, 0.}, {33.5, 49.},
          RoundingRadius->0],
         StatusArea[#, 49]& ,
         TagBoxNote->"49"],
        StyleBox["49", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[49, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{33.5, 0.}, {34.5, 44.},
          RoundingRadius->0],
         StatusArea[#, 44]& ,
         TagBoxNote->"44"],
        StyleBox["44", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[44, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{34.5, 0.}, {35.5, 44.},
          RoundingRadius->0],
         StatusArea[#, 44]& ,
         TagBoxNote->"44"],
        StyleBox["44", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[44, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{35.5, 0.}, {36.5, 39.},
          RoundingRadius->0],
         StatusArea[#, 39]& ,
         TagBoxNote->"39"],
        StyleBox["39", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[39, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{36.5, 0.}, {37.5, 38.},
          RoundingRadius->0],
         StatusArea[#, 38]& ,
         TagBoxNote->"38"],
        StyleBox["38", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[38, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{37.5, 0.}, {38.5, 37.},
          RoundingRadius->0],
         StatusArea[#, 37]& ,
         TagBoxNote->"37"],
        StyleBox["37", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[37, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{38.5, 0.}, {39.5, 33.},
          RoundingRadius->0],
         StatusArea[#, 33]& ,
         TagBoxNote->"33"],
        StyleBox["33", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[33, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{39.5, 0.}, {40.5, 31.},
          RoundingRadius->0],
         StatusArea[#, 31]& ,
         TagBoxNote->"31"],
        StyleBox["31", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[31, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{40.5, 0.}, {41.5, 25.},
          RoundingRadius->0],
         StatusArea[#, 25]& ,
         TagBoxNote->"25"],
        StyleBox["25", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[25, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{41.5, 0.}, {42.5, 25.},
          RoundingRadius->0],
         StatusArea[#, 25]& ,
         TagBoxNote->"25"],
        StyleBox["25", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[25, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{42.5, 0.}, {43.5, 23.},
          RoundingRadius->0],
         StatusArea[#, 23]& ,
         TagBoxNote->"23"],
        StyleBox["23", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[23, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{43.5, 0.}, {44.5, 15.},
          RoundingRadius->0],
         StatusArea[#, 15]& ,
         TagBoxNote->"15"],
        StyleBox["15", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[15, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{44.5, 0.}, {45.5, 13.},
          RoundingRadius->0],
         StatusArea[#, 13]& ,
         TagBoxNote->"13"],
        StyleBox["13", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[13, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{45.5, 0.}, {46.5, 12.},
          RoundingRadius->0],
         StatusArea[#, 12]& ,
         TagBoxNote->"12"],
        StyleBox["12", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[12, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{46.5, 0.}, {47.5, 12.},
          RoundingRadius->0],
         StatusArea[#, 12]& ,
         TagBoxNote->"12"],
        StyleBox["12", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[12, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{47.5, 0.}, {48.5, 12.},
          RoundingRadius->0],
         StatusArea[#, 12]& ,
         TagBoxNote->"12"],
        StyleBox["12", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[12, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{48.5, 0.}, {49.5, 10.},
          RoundingRadius->0],
         StatusArea[#, 10]& ,
         TagBoxNote->"10"],
        StyleBox["10", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[10, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{49.5, 0.}, {50.5, 10.},
          RoundingRadius->0],
         StatusArea[#, 10]& ,
         TagBoxNote->"10"],
        StyleBox["10", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[10, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{50.5, 0.}, {51.5, 5.},
          RoundingRadius->0],
         StatusArea[#, 5]& ,
         TagBoxNote->"5"],
        StyleBox["5", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[5, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{51.5, 0.}, {52.5, 5.},
          RoundingRadius->0],
         StatusArea[#, 5]& ,
         TagBoxNote->"5"],
        StyleBox["5", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[5, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{52.5, 0.}, {53.5, 4.},
          RoundingRadius->0],
         StatusArea[#, 4]& ,
         TagBoxNote->"4"],
        StyleBox["4", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[4, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{53.5, 0.}, {54.5, 4.},
          RoundingRadius->0],
         StatusArea[#, 4]& ,
         TagBoxNote->"4"],
        StyleBox["4", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[4, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{54.5, 0.}, {55.5, 4.},
          RoundingRadius->0],
         StatusArea[#, 4]& ,
         TagBoxNote->"4"],
        StyleBox["4", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[4, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{55.5, 0.}, {56.5, 3.},
          RoundingRadius->0],
         StatusArea[#, 3]& ,
         TagBoxNote->"3"],
        StyleBox["3", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[3, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{56.5, 0.}, {57.5, 3.},
          RoundingRadius->0],
         StatusArea[#, 3]& ,
         TagBoxNote->"3"],
        StyleBox["3", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[3, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{57.5, 0.}, {58.5, 3.},
          RoundingRadius->0],
         StatusArea[#, 3]& ,
         TagBoxNote->"3"],
        StyleBox["3", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[3, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{58.5, 0.}, {59.5, 2.},
          RoundingRadius->0],
         StatusArea[#, 2]& ,
         TagBoxNote->"2"],
        StyleBox["2", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[2, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{59.5, 0.}, {60.5, 2.},
          RoundingRadius->0],
         StatusArea[#, 2]& ,
         TagBoxNote->"2"],
        StyleBox["2", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[2, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{60.5, 0.}, {61.5, 2.},
          RoundingRadius->0],
         StatusArea[#, 2]& ,
         TagBoxNote->"2"],
        StyleBox["2", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[2, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{61.5, 0.}, {62.5, 2.},
          RoundingRadius->0],
         StatusArea[#, 2]& ,
         TagBoxNote->"2"],
        StyleBox["2", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[2, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{62.5, 0.}, {63.5, 2.},
          RoundingRadius->0],
         StatusArea[#, 2]& ,
         TagBoxNote->"2"],
        StyleBox["2", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[2, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{63.5, 0.}, {64.5, 2.},
          RoundingRadius->0],
         StatusArea[#, 2]& ,
         TagBoxNote->"2"],
        StyleBox["2", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[2, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{64.5, 0.}, {65.5, 2.},
          RoundingRadius->0],
         StatusArea[#, 2]& ,
         TagBoxNote->"2"],
        StyleBox["2", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[2, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{65.5, 0.}, {66.5, 2.},
          RoundingRadius->0],
         StatusArea[#, 2]& ,
         TagBoxNote->"2"],
        StyleBox["2", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[2, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{66.5, 0.}, {67.5, 2.},
          RoundingRadius->0],
         StatusArea[#, 2]& ,
         TagBoxNote->"2"],
        StyleBox["2", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[2, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{67.5, 0.},
          RoundingRadius->0],
         StatusArea[#, 1]& ,
         TagBoxNote->"1"],
        StyleBox["1", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[1, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{68.5, 0.},
          RoundingRadius->0],
         StatusArea[#, 1]& ,
         TagBoxNote->"1"],
        StyleBox["1", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[1, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{69.5, 0.},
          RoundingRadius->0],
         StatusArea[#, 1]& ,
         TagBoxNote->"1"],
        StyleBox["1", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[1, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{70.5, 0.},
          RoundingRadius->0],
         StatusArea[#, 1]& ,
         TagBoxNote->"1"],
        StyleBox["1", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[1, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{71.5, 0.},
          RoundingRadius->0],
         StatusArea[#, 1]& ,
         TagBoxNote->"1"],
        StyleBox["1", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[1, {}], "Tooltip"]& ]}, 
     {RGBColor[1., 0.78, 0.2], EdgeForm[{Opacity[0.189], Thickness[Small]}], 
      TagBox[
       TooltipBox[
        TagBox[RectangleBox[{72.5, 0.},
          RoundingRadius->0],
         StatusArea[#, 1]& ,
         TagBoxNote->"1"],
        StyleBox["1", {}, StripOnInput -> False]],
       Annotation[#, 
        Style[1, {}], "Tooltip"]& ]}}, {}, {}}, {}, {}, {}, {}, 
   StyleBox[
    StyleBox[{
      {Thickness[Tiny], LineBox[{{-0.96, 0.}, {74.9892, 0.}}], 
       StyleBox[{}, "GraphicsLabel",
        StripOnInput->False]}, 
      StyleBox[{
        {Thickness[Tiny], 
         LineBox[{{0.5, 0.}, 
           Offset[{-1.102182119232618*^-15, -6.}, {0.5, 0.}]}], 
         LineBox[{{73.5, 0.}, 
           Offset[{-1.102182119232618*^-15, -6.}, {73.5, 
            0.}]}], {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {LineBox[{{1.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {1.5, 0.}]}], 
           LineBox[{{1.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {1.5, 0.}]}], 
           LineBox[{{2.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {2.5, 0.}]}], 
           LineBox[{{2.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {2.5, 0.}]}], 
           LineBox[{{3.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {3.5, 0.}]}], 
           LineBox[{{3.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {3.5, 0.}]}], 
           LineBox[{{4.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {4.5, 0.}]}], 
           LineBox[{{4.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {4.5, 0.}]}], 
           LineBox[{{5.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {5.5, 0.}]}], 
           LineBox[{{5.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {5.5, 0.}]}], 
           LineBox[{{6.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {6.5, 0.}]}], 
           LineBox[{{6.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {6.5, 0.}]}], 
           LineBox[{{7.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {7.5, 0.}]}], 
           LineBox[{{7.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {7.5, 0.}]}], 
           LineBox[{{8.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {8.5, 0.}]}], 
           LineBox[{{8.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {8.5, 0.}]}], 
           LineBox[{{9.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {9.5, 0.}]}], 
           LineBox[{{9.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {9.5, 0.}]}], 
           LineBox[{{10.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {10.5, 0.}]}], 
           LineBox[{{10.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {10.5, 0.}]}], 
           LineBox[{{11.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {11.5, 0.}]}], 
           LineBox[{{11.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {11.5, 0.}]}], 
           LineBox[{{12.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {12.5, 0.}]}], 
           LineBox[{{12.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {12.5, 0.}]}], 
           LineBox[{{13.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {13.5, 0.}]}], 
           LineBox[{{13.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {13.5, 0.}]}], 
           LineBox[{{14.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {14.5, 0.}]}], 
           LineBox[{{14.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {14.5, 0.}]}], 
           LineBox[{{15.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {15.5, 0.}]}], 
           LineBox[{{15.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {15.5, 0.}]}], 
           LineBox[{{16.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {16.5, 0.}]}], 
           LineBox[{{16.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {16.5, 0.}]}], 
           LineBox[{{17.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {17.5, 0.}]}], 
           LineBox[{{17.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {17.5, 0.}]}], 
           LineBox[{{18.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {18.5, 0.}]}], 
           LineBox[{{18.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {18.5, 0.}]}], 
           LineBox[{{19.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {19.5, 0.}]}], 
           LineBox[{{19.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {19.5, 0.}]}], 
           LineBox[{{20.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {20.5, 0.}]}], 
           LineBox[{{20.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {20.5, 0.}]}], 
           LineBox[{{21.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {21.5, 0.}]}], 
           LineBox[{{21.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {21.5, 0.}]}], 
           LineBox[{{22.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {22.5, 0.}]}], 
           LineBox[{{22.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {22.5, 0.}]}], 
           LineBox[{{23.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {23.5, 0.}]}], 
           LineBox[{{23.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {23.5, 0.}]}], 
           LineBox[{{24.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {24.5, 0.}]}], 
           LineBox[{{24.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {24.5, 0.}]}], 
           LineBox[{{25.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {25.5, 0.}]}], 
           LineBox[{{25.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {25.5, 0.}]}], 
           LineBox[{{26.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {26.5, 0.}]}], 
           LineBox[{{26.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {26.5, 0.}]}], 
           LineBox[{{27.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {27.5, 0.}]}], 
           LineBox[{{27.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {27.5, 0.}]}], 
           LineBox[{{28.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {28.5, 0.}]}], 
           LineBox[{{28.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {28.5, 0.}]}], 
           LineBox[{{29.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {29.5, 0.}]}], 
           LineBox[{{29.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {29.5, 0.}]}], 
           LineBox[{{30.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {30.5, 0.}]}], 
           LineBox[{{30.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {30.5, 0.}]}], 
           LineBox[{{31.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {31.5, 0.}]}], 
           LineBox[{{31.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {31.5, 0.}]}], 
           LineBox[{{32.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {32.5, 0.}]}], 
           LineBox[{{32.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {32.5, 0.}]}], 
           LineBox[{{33.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {33.5, 0.}]}], 
           LineBox[{{33.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {33.5, 0.}]}], 
           LineBox[{{34.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {34.5, 0.}]}], 
           LineBox[{{34.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {34.5, 0.}]}], 
           LineBox[{{35.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {35.5, 0.}]}], 
           LineBox[{{35.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {35.5, 0.}]}], 
           LineBox[{{36.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {36.5, 0.}]}], 
           LineBox[{{36.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {36.5, 0.}]}], 
           LineBox[{{37.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {37.5, 0.}]}], 
           LineBox[{{37.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {37.5, 0.}]}], 
           LineBox[{{38.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {38.5, 0.}]}], 
           LineBox[{{38.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {38.5, 0.}]}], 
           LineBox[{{39.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {39.5, 0.}]}], 
           LineBox[{{39.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {39.5, 0.}]}], 
           LineBox[{{40.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {40.5, 0.}]}], 
           LineBox[{{40.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {40.5, 0.}]}], 
           LineBox[{{41.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {41.5, 0.}]}], 
           LineBox[{{41.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {41.5, 0.}]}], 
           LineBox[{{42.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {42.5, 0.}]}], 
           LineBox[{{42.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {42.5, 0.}]}], 
           LineBox[{{43.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {43.5, 0.}]}], 
           LineBox[{{43.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {43.5, 0.}]}], 
           LineBox[{{44.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {44.5, 0.}]}], 
           LineBox[{{44.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {44.5, 0.}]}], 
           LineBox[{{45.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {45.5, 0.}]}], 
           LineBox[{{45.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {45.5, 0.}]}], 
           LineBox[{{46.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {46.5, 0.}]}], 
           LineBox[{{46.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {46.5, 0.}]}], 
           LineBox[{{47.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {47.5, 0.}]}], 
           LineBox[{{47.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {47.5, 0.}]}], 
           LineBox[{{48.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {48.5, 0.}]}], 
           LineBox[{{48.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {48.5, 0.}]}], 
           LineBox[{{49.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {49.5, 0.}]}], 
           LineBox[{{49.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {49.5, 0.}]}], 
           LineBox[{{50.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {50.5, 0.}]}], 
           LineBox[{{50.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {50.5, 0.}]}], 
           LineBox[{{51.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {51.5, 0.}]}], 
           LineBox[{{51.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {51.5, 0.}]}], 
           LineBox[{{52.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {52.5, 0.}]}], 
           LineBox[{{52.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {52.5, 0.}]}], 
           LineBox[{{53.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {53.5, 0.}]}], 
           LineBox[{{53.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {53.5, 0.}]}], 
           LineBox[{{54.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {54.5, 0.}]}], 
           LineBox[{{54.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {54.5, 0.}]}], 
           LineBox[{{55.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {55.5, 0.}]}], 
           LineBox[{{55.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {55.5, 0.}]}], 
           LineBox[{{56.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {56.5, 0.}]}], 
           LineBox[{{56.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {56.5, 0.}]}], 
           LineBox[{{57.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {57.5, 0.}]}], 
           LineBox[{{57.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {57.5, 0.}]}], 
           LineBox[{{58.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {58.5, 0.}]}], 
           LineBox[{{58.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {58.5, 0.}]}], 
           LineBox[{{59.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {59.5, 0.}]}], 
           LineBox[{{59.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {59.5, 0.}]}], 
           LineBox[{{60.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {60.5, 0.}]}], 
           LineBox[{{60.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {60.5, 0.}]}], 
           LineBox[{{61.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {61.5, 0.}]}], 
           LineBox[{{61.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {61.5, 0.}]}], 
           LineBox[{{62.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {62.5, 0.}]}], 
           LineBox[{{62.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {62.5, 0.}]}], 
           LineBox[{{63.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {63.5, 0.}]}], 
           LineBox[{{63.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {63.5, 0.}]}], 
           LineBox[{{64.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {64.5, 0.}]}], 
           LineBox[{{64.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {64.5, 0.}]}], 
           LineBox[{{65.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {65.5, 0.}]}], 
           LineBox[{{65.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {65.5, 0.}]}], 
           LineBox[{{66.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {66.5, 0.}]}], 
           LineBox[{{66.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {66.5, 0.}]}], 
           LineBox[{{67.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {67.5, 0.}]}], 
           LineBox[{{67.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {67.5, 0.}]}], 
           LineBox[{{68.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {68.5, 0.}]}], 
           LineBox[{{68.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {68.5, 0.}]}], 
           LineBox[{{69.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {69.5, 0.}]}], 
           LineBox[{{69.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {69.5, 0.}]}], 
           LineBox[{{70.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {70.5, 0.}]}], 
           LineBox[{{70.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {70.5, 0.}]}], 
           LineBox[{{71.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {71.5, 0.}]}], 
           LineBox[{{71.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {71.5, 0.}]}], 
           LineBox[{{72.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {72.5, 0.}]}], 
           LineBox[{{72.5, 0.}, 
             Offset[{-7.347880794884119*^-16, -4.}, {72.5, 0.}]}]}, {}}}, 
        StyleBox[
         {Thickness[Tiny], 
          InsetBox["\<\" \"\>", Offset[{0, -2}, {1., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0470\"\>", Offset[{0, -2}, {2., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0462\"\>", Offset[{0, -2}, {3., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0466\"\>", Offset[{0, -2}, {4., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:046f\"\>", Offset[{0, -2}, {5., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0475\"\>", Offset[{0, -2}, {6., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:046c\"\>", Offset[{0, -2}, {7., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0465\"\>", Offset[{0, -2}, {8., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0474\"\>", Offset[{0, -2}, {9., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:046d\"\>", Offset[{0, -2}, {10., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:046a\"\>", Offset[{0, -2}, {11., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0477\"\>", Offset[{0, -2}, {12., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0476\"\>", Offset[{0, -2}, {13., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0473\"\>", Offset[{0, -2}, {14., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:046e\"\>", Offset[{0, -2}, {15., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:046b\"\>", Offset[{0, -2}, {16., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0471\"\>", Offset[{0, -2}, {17., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:04ee\"\>", Offset[{0, -2}, {18., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:042d\"\>", Offset[{0, -2}, {19., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:047a\"\>", Offset[{0, -2}, {20., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:04e2\"\>", Offset[{0, -2}, {21., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0464\"\>", Offset[{0, -2}, {22., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0469\"\>", Offset[{0, -2}, {23., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:051c\"\>", Offset[{0, -2}, {24., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:057f\"\>", Offset[{0, -2}, {25., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:047b\"\>", Offset[{0, -2}, {26., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0463\"\>", Offset[{0, -2}, {27., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0562\"\>", Offset[{0, -2}, {28., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:055a\"\>", Offset[{0, -2}, {29., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:042f\"\>", Offset[{0, -2}, {30., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:050e\"\>", Offset[{0, -2}, {31., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:04fe\"\>", Offset[{0, -2}, {32., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\\n\"\>", Offset[{0, -2}, {33., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:241d\"\>", Offset[{0, -2}, {34., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:241f\"\>", Offset[{0, -2}, {35., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:2414\"\>", Offset[{0, -2}, {36., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0422\"\>", Offset[{0, -2}, {37., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:04ea\"\>", Offset[{0, -2}, {38., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0455\"\>", Offset[{0, -2}, {39., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:044b\"\>", Offset[{0, -2}, {40., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0442\"\>", Offset[{0, -2}, {41., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0570\"\>", Offset[{0, -2}, {42., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0440\"\>", Offset[{0, -2}, {43., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:044c\"\>", Offset[{0, -2}, {44., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0451\"\>", Offset[{0, -2}, {45., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:043b\"\>", Offset[{0, -2}, {46., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:044f\"\>", Offset[{0, -2}, {47., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0457\"\>", Offset[{0, -2}, {48., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0566\"\>", Offset[{0, -2}, {49., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:043c\"\>", Offset[{0, -2}, {50., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0445\"\>", Offset[{0, -2}, {51., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0467\"\>", Offset[{0, -2}, {52., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0510\"\>", Offset[{0, -2}, {53., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:044e\"\>", Offset[{0, -2}, {54., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0443\"\>", Offset[{0, -2}, {55., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:2427\"\>", Offset[{0, -2}, {56., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0454\"\>", Offset[{0, -2}, {57., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0450\"\>", Offset[{0, -2}, {58., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0444\"\>", Offset[{0, -2}, {59., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:045b\"\>", Offset[{0, -2}, {60., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:042e\"\>", Offset[{0, -2}, {61., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0549\"\>", Offset[{0, -2}, {62., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0559\"\>", Offset[{0, -2}, {63., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:04fb\"\>", Offset[{0, -2}, {64., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0449\"\>", Offset[{0, -2}, {65., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:044d\"\>", Offset[{0, -2}, {66., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0456\"\>", Offset[{0, -2}, {67., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0447\"\>", Offset[{0, -2}, {68., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:044a\"\>", Offset[{0, -2}, {69., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:0453\"\>", Offset[{0, -2}, {70., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:045a\"\>", Offset[{0, -2}, {71., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:04db\"\>", Offset[{0, -2}, {72., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}], 
          InsetBox["\<\"\:050d\"\>", Offset[{0, -2}, {73., 0.}], NCache[
           ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]], 
           Automatic, {1, 0}]}, "GraphicsLabel",
         StripOnInput->False]}, "GraphicsTicks",
       StripOnInput->False]},
     Antialiasing->False], "GraphicsAxes",
    StripOnInput->False]},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{False, True},
  AxesLabel->{None, None},
  AxesOrigin->{-0.96, 0.},
  CoordinatesToolOptions:>{"DisplayFunction" -> ({
      Identity[
       Part[#, 1]], 
      Identity[
       Part[#, 2]]}& ), "CopiedValueFunction" -> ({
      Identity[
       Part[#, 1]], 
      Identity[
       Part[#, 2]]}& )},
  DisplayFunction->Identity,
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  PlotLabel->FormBox["\"Letter frequency (Text)\"", TraditionalForm],
  PlotRange->{{All, All}, {All, All}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{None, Automatic}]], "Output",
 CellChangeTimes->{3.9814595279666653`*^9},
 CellLabel->"Out[17]=",ExpressionUUID->"4d58b8b7-aba1-4dfb-8152-689e501dc9dc"],

Cell[BoxData[
 RowBox[{"\[LeftAssociation]", 
  RowBox[{
   RowBox[{"\<\" \"\>", "\[Rule]", "1401"}], ",", 
   RowBox[{"\<\"\:0470\"\>", "\[Rule]", "530"}], ",", 
   RowBox[{"\<\"\:0462\"\>", "\[Rule]", "491"}], ",", 
   RowBox[{"\<\"\:0466\"\>", "\[Rule]", "481"}], ",", 
   RowBox[{"\<\"\:046f\"\>", "\[Rule]", "368"}], ",", 
   RowBox[{"\<\"\:0475\"\>", "\[Rule]", "337"}], ",", 
   RowBox[{"\<\"\:046c\"\>", "\[Rule]", "280"}], ",", 
   RowBox[{"\<\"\:0465\"\>", "\[Rule]", "254"}], ",", 
   RowBox[{"\<\"\:0474\"\>", "\[Rule]", "237"}], ",", 
   RowBox[{"\<\"\:046d\"\>", "\[Rule]", "236"}], ",", 
   RowBox[{"\<\"\:046a\"\>", "\[Rule]", "198"}], ",", 
   RowBox[{"\<\"\:0477\"\>", "\[Rule]", "188"}], ",", 
   RowBox[{"\<\"\:0476\"\>", "\[Rule]", "184"}], ",", 
   RowBox[{"\<\"\:0473\"\>", "\[Rule]", "175"}], ",", 
   RowBox[{"\<\"\:046e\"\>", "\[Rule]", "169"}], ",", 
   RowBox[{"\<\"\:046b\"\>", "\[Rule]", "169"}], ",", 
   RowBox[{"\<\"\:0471\"\>", "\[Rule]", "168"}], ",", 
   RowBox[{"\<\"\:04ee\"\>", "\[Rule]", "165"}], ",", 
   RowBox[{"\<\"\:042d\"\>", "\[Rule]", "157"}], ",", 
   RowBox[{"\<\"\:047a\"\>", "\[Rule]", "147"}], ",", 
   RowBox[{"\<\"\:04e2\"\>", "\[Rule]", "141"}], ",", 
   RowBox[{"\<\"\:0464\"\>", "\[Rule]", "129"}], ",", 
   RowBox[{"\<\"\:0469\"\>", "\[Rule]", "122"}], ",", 
   RowBox[{"\<\"\:051c\"\>", "\[Rule]", "104"}], ",", 
   RowBox[{"\<\"\:057f\"\>", "\[Rule]", "95"}], ",", 
   RowBox[{"\<\"\:047b\"\>", "\[Rule]", "94"}], ",", 
   RowBox[{"\<\"\:0463\"\>", "\[Rule]", "94"}], ",", 
   RowBox[{"\<\"\:0562\"\>", "\[Rule]", "85"}], ",", 
   RowBox[{"\<\"\:055a\"\>", "\[Rule]", "74"}], ",", 
   RowBox[{"\<\"\:042f\"\>", "\[Rule]", "62"}], ",", 
   RowBox[{"\<\"\:050e\"\>", "\[Rule]", "61"}], ",", 
   RowBox[{"\<\"\:04fe\"\>", "\[Rule]", "57"}], ",", 
   RowBox[{"\<\"\\n\"\>", "\[Rule]", "49"}], ",", 
   RowBox[{"\<\"\:241d\"\>", "\[Rule]", "44"}], ",", 
   RowBox[{"\<\"\:241f\"\>", "\[Rule]", "44"}], ",", 
   RowBox[{"\<\"\:2414\"\>", "\[Rule]", "39"}], ",", 
   RowBox[{"\<\"\:0422\"\>", "\[Rule]", "38"}], ",", 
   RowBox[{"\<\"\:04ea\"\>", "\[Rule]", "37"}], ",", 
   RowBox[{"\<\"\:0455\"\>", "\[Rule]", "33"}], ",", 
   RowBox[{"\<\"\:044b\"\>", "\[Rule]", "31"}], ",", 
   RowBox[{"\<\"\:0442\"\>", "\[Rule]", "25"}], ",", 
   RowBox[{"\<\"\:0570\"\>", "\[Rule]", "25"}], ",", 
   RowBox[{"\<\"\:0440\"\>", "\[Rule]", "23"}], ",", 
   RowBox[{"\<\"\:044c\"\>", "\[Rule]", "15"}], ",", 
   RowBox[{"\<\"\:0451\"\>", "\[Rule]", "13"}], ",", 
   RowBox[{"\<\"\:043b\"\>", "\[Rule]", "12"}], ",", 
   RowBox[{"\<\"\:044f\"\>", "\[Rule]", "12"}], ",", 
   RowBox[{"\<\"\:0457\"\>", "\[Rule]", "12"}], ",", 
   RowBox[{"\<\"\:0566\"\>", "\[Rule]", "10"}], ",", 
   RowBox[{"\<\"\:043c\"\>", "\[Rule]", "10"}], ",", 
   RowBox[{"\<\"\:0445\"\>", "\[Rule]", "5"}], ",", 
   RowBox[{"\<\"\:0467\"\>", "\[Rule]", "5"}], ",", 
   RowBox[{"\<\"\:0510\"\>", "\[Rule]", "4"}], ",", 
   RowBox[{"\<\"\:044e\"\>", "\[Rule]", "4"}], ",", 
   RowBox[{"\<\"\:0443\"\>", "\[Rule]", "4"}], ",", 
   RowBox[{"\<\"\:2427\"\>", "\[Rule]", "3"}], ",", 
   RowBox[{"\<\"\:0454\"\>", "\[Rule]", "3"}], ",", 
   RowBox[{"\<\"\:0450\"\>", "\[Rule]", "3"}], ",", 
   RowBox[{"\<\"\:0444\"\>", "\[Rule]", "2"}], ",", 
   RowBox[{"\<\"\:045b\"\>", "\[Rule]", "2"}], ",", 
   RowBox[{"\<\"\:042e\"\>", "\[Rule]", "2"}], ",", 
   RowBox[{"\<\"\:0549\"\>", "\[Rule]", "2"}], ",", 
   RowBox[{"\<\"\:0559\"\>", "\[Rule]", "2"}], ",", 
   RowBox[{"\<\"\:04fb\"\>", "\[Rule]", "2"}], ",", 
   RowBox[{"\<\"\:0449\"\>", "\[Rule]", "2"}], ",", 
   RowBox[{"\<\"\:044d\"\>", "\[Rule]", "2"}], ",", 
   RowBox[{"\<\"\:0456\"\>", "\[Rule]", "2"}], ",", 
   RowBox[{"\<\"\:0447\"\>", "\[Rule]", "1"}], ",", 
   RowBox[{"\<\"\:044a\"\>", "\[Rule]", "1"}], ",", 
   RowBox[{"\<\"\:0453\"\>", "\[Rule]", "1"}], ",", 
   RowBox[{"\<\"\:045a\"\>", "\[Rule]", "1"}], ",", 
   RowBox[{"\<\"\:04db\"\>", "\[Rule]", "1"}], ",", 
   RowBox[{"\<\"\:050d\"\>", "\[Rule]", "1"}]}], 
  "\[RightAssociation]"}]], "Output",
 CellChangeTimes->{3.981459527980754*^9},
 CellLabel->"Out[18]=",ExpressionUUID->"fadef6c8-d36c-4ae6-998c-b9c82624c889"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"shift", " ", "=", " ", 
  RowBox[{
   RowBox[{"Abs", "[", 
    RowBox[{
     RowBox[{"ToCharacterCode", "[", 
      RowBox[{
       RowBox[{"Keys", "[", "freq", "]"}], "[", 
       RowBox[{"[", "3", "]"}], "]"}], "]"}], "-", 
     RowBox[{"ToCharacterCode", "[", 
      RowBox[{
       RowBox[{"Keys", "[", "freqCzech", "]"}], "[", 
       RowBox[{"[", "1", "]"}], "]"}], "]"}]}], "]"}], "[", 
   RowBox[{"[", "1", "]"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.9814629029369593`*^9, 3.9814630091242228`*^9}, {
  3.9814633284114857`*^9, 3.981463329485623*^9}, {3.981463692986412*^9, 
  3.9814637285454206`*^9}, {3.981463804608068*^9, 3.981463815826564*^9}, {
  3.9814638598672667`*^9, 3.9814638912040987`*^9}},
 CellLabel->"In[72]:=",ExpressionUUID->"c8f04a52-820a-4672-9f4b-d982f53b853e"],

Cell[BoxData["1025"], "Output",
 CellChangeTimes->{
  3.981463729869331*^9, {3.9814638057133083`*^9, 3.981463816243382*^9}, {
   3.981463870281589*^9, 3.9814638916790257`*^9}},
 CellLabel->"Out[72]=",ExpressionUUID->"b755c097-f8c8-40d7-9020-638200cf1f6a"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"caesarCipher", "[", 
     RowBox[{"str_String", ",", " ", "shift_Integer"}], "]"}], " ", ":=", " ",
     "\n", 
    RowBox[{"Module", " ", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "whitespaceCharacterCodes", ",", " ", "numberOfUnicodeCharacters", ",",
         " ", 
        RowBox[{"encoding", " ", "=", " ", "\"\<Unicode\>\""}]}], "}"}], ",", 
      "\n", "\t", 
      RowBox[{
       RowBox[{"encoding", " ", "=", " ", "\"\<Unicode\>\""}], ";", "\n", 
       "\t", 
       RowBox[{"whitespaceCharacterCodes", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{"10", ",", " ", "13", ",", " ", "9", ",", " ", "32"}], 
         "}"}]}], ";", " ", "\n", "\t", 
       RowBox[{"numberOfUnicodeCharacters", " ", "=", " ", "1114111"}], ";", 
       " ", "\n", "\t", 
       RowBox[{"StringJoin", "[", "\n", "\t\t", 
        RowBox[{"Map", "[", "\n", "\t\t\t", 
         RowBox[{
          RowBox[{
           RowBox[{"If", "[", "\n", "\t\t\t\t", 
            RowBox[{
             RowBox[{"MemberQ", "[", 
              RowBox[{"whitespaceCharacterCodes", ",", " ", "#"}], "]"}], ",",
              " ", "\n", "\t\t\t\t", 
             RowBox[{"FromCharacterCode", "[", 
              RowBox[{
               RowBox[{"{", "#", "}"}], ",", " ", "encoding"}], "]"}], ",", 
             "\n", "\t\t\t\t", 
             RowBox[{"FromCharacterCode", "[", 
              RowBox[{
               RowBox[{"Mod", "[", 
                RowBox[{
                 RowBox[{"#", " ", "+", " ", "shift"}], ",", " ", 
                 "numberOfUnicodeCharacters"}], "]"}], ",", " ", "encoding"}],
               "]"}]}], " ", "\n", "\t\t\t", "]"}], " ", "&"}], ",", "\n", 
          "\t\t\t", 
          RowBox[{"ToCharacterCode", "[", 
           RowBox[{"str", ",", " ", "encoding"}], "]"}]}], "\n", "\t\t", 
         "]"}], "\n", "\t", "]"}]}]}], "\n", "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"caesarCipherFile", "[", 
    RowBox[{
    "inputFileName_String", ",", " ", "outputFileName_String", ",", " ", 
     "shift_Integer"}], "]"}], " ", ":=", " ", "\n", 
   RowBox[{"Module", "[", "\n", "\t", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"content", ",", " ", "encoding"}], "}"}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{"encoding", " ", "=", " ", "\"\<UTF8\>\""}], ";", "\n", "\t", 
      RowBox[{"content", " ", "=", " ", 
       RowBox[{"Import", "[", 
        RowBox[{"inputFileName", ",", " ", "\"\<Text\>\"", ",", " ", 
         RowBox[{"CharacterEncoding", " ", "->", " ", "encoding"}]}], "]"}]}],
       ";", "\n", "\t", 
      RowBox[{"Export", "[", 
       RowBox[{"outputFileName", ",", " ", 
        RowBox[{"caesarCipher", "[", 
         RowBox[{"content", ",", " ", "shift"}], "]"}], ",", 
        " ", "\"\<Text\>\"", ",", " ", 
        RowBox[{"CharacterEncoding", " ", "->", " ", "encoding"}]}], "]"}], 
      ";"}]}], "\n", "]"}]}], ";"}]}], "Input",
 CellChangeTimes->{{3.981463318498499*^9, 3.981463319196981*^9}, 
   3.981463418484955*^9, 3.981463516289832*^9, {3.981463662100161*^9, 
   3.981463673360943*^9}},
 CellLabel->"In[64]:=",ExpressionUUID->"f30510a4-ddba-4d30-8283-40e8acbdebb8"],

Cell[BoxData[
 RowBox[{"caesarCipherFile", "[", 
  RowBox[{"\"\<./new-technologies.encrypted.txt\>\"", ",", 
   " ", "\"\<./new-technologies.plain.txt\>\"", ",", " ", 
   RowBox[{"-", "shift"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.981463383877529*^9, 3.981463392017152*^9}, {
  3.981463642632103*^9, 3.981463644678092*^9}, {3.9814639402164497`*^9, 
  3.981463973065647*^9}, {3.981515730922463*^9, 
  3.981515737891699*^9}},ExpressionUUID->"b406f164-24bb-4c78-965f-\
563e55982585"]
},
WindowSize->{1358, 706},
WindowMargins->{{12, Automatic}, {Automatic, 24}},
FrontEndVersion->"14.2 for Mac OS X ARM (64-bit) (December 26, 2024)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"c5b3ef8f-0209-405e-9222-9024aefd543b"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[576, 22, 672, 14, 151, "Input",ExpressionUUID->"65b7da83-e926-4c8c-9a4e-9aea83773f98"],
Cell[1251, 38, 6684, 166, 119, "Output",ExpressionUUID->"92f98d4b-80ba-4c8d-b9be-3adbb6058e89"],
Cell[7938, 206, 39756, 791, 261, "Output",ExpressionUUID->"b7c291ff-5abb-42af-be11-b232009dfb03"]
}, Open  ]],
Cell[CellGroupData[{
Cell[47731, 1002, 2357, 43, 294, "Input",ExpressionUUID->"24e7f297-cc93-48be-a634-f7ba69a153f9"],
Cell[50091, 1047, 55982, 1290, 265, "Output",ExpressionUUID->"4d58b8b7-aba1-4dfb-8152-689e501dc9dc"],
Cell[106076, 2339, 4148, 78, 97, "Output",ExpressionUUID->"fadef6c8-d36c-4ae6-998c-b9c82624c889"]
}, Open  ]],
Cell[CellGroupData[{
Cell[110261, 2422, 814, 18, 29, "Input",ExpressionUUID->"c8f04a52-820a-4672-9f4b-d982f53b853e"],
Cell[111078, 2442, 255, 4, 33, "Output",ExpressionUUID->"b755c097-f8c8-40d7-9020-638200cf1f6a"]
}, Open  ]],
Cell[111348, 2449, 3253, 76, 499, "Input",ExpressionUUID->"f30510a4-ddba-4d30-8283-40e8acbdebb8"],
Cell[114604, 2527, 485, 9, 29, "Input",ExpressionUUID->"b406f164-24bb-4c78-965f-563e55982585"]
}
]
*)

