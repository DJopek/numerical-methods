(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Wolfram 14.2' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       154,          7]
NotebookDataLength[      8407,        225]
NotebookOptionsPosition[      7519,        202]
NotebookOutlinePosition[      7914,        218]
CellTagsIndexPosition[      7871,        215]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"Zavedenie", " ", "rekurzie"}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"forwardEularMethod", "[", 
      RowBox[{"f_", ",", "h_", ",", "0", ",", "x0_", ",", "t0_"}], "]"}], ":=",
      "x0"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"forwardEularMethod", "[", 
     RowBox[{"f_", ",", "h_", ",", "N_", ",", "x0_", ",", "t0_"}], "]"}], ":=", 
    RowBox[{
     RowBox[{"forwardEularMethod", "[", 
      RowBox[{"f", ",", "h", ",", 
       RowBox[{"N", "-", "1"}], ",", "x0", ",", "t0"}], "]"}], "+", 
     RowBox[{"h", "*", 
      RowBox[{"f", "[", 
       RowBox[{
        RowBox[{"t0", "+", 
         RowBox[{"h", "*", 
          RowBox[{"(", 
           RowBox[{"N", "-", "1"}], ")"}]}]}], ",", 
        RowBox[{"forwardEularMethod", "[", 
         RowBox[{"f", ",", "h", ",", 
          RowBox[{"N", "-", "1"}], ",", "x0", ",", "t0"}], "]"}]}], 
       "]"}]}]}]}]}]}]], "Input",
 CellChangeTimes->{{3.982684900334663*^9, 3.982684903310953*^9}, {
  3.9826849352137527`*^9, 3.982684965305694*^9}, {3.982685023392715*^9, 
  3.982685066416151*^9}, {3.982685137117408*^9, 3.982685141088653*^9}, {
  3.982685189260601*^9, 3.982685225605729*^9}, {3.9826853280254183`*^9, 
  3.982685334019149*^9}, {3.9826874508106213`*^9, 3.982687453701457*^9}, {
  3.982689301775201*^9, 3.98268930401204*^9}, {3.9826896169165773`*^9, 
  3.9826896241641197`*^9}, {3.982690097401133*^9, 3.982690099042025*^9}, {
  3.982691505813147*^9, 
  3.982691522089694*^9}},ExpressionUUID->"4f317c9d-c606-45db-b8a2-\
44827947f8eb"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"f", "[", 
      RowBox[{"t_", ",", "x_"}], "]"}], "=", "x"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"Simplify", "[", 
      RowBox[{"forwardEularMethod", "[", 
       RowBox[{"f", ",", "h", ",", "i", ",", "1", ",", "0"}], "]"}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"i", ",", "1", ",", "20"}], "}"}]}], "]"}]}]}]], "Input",
 CellChangeTimes->{{3.9826874561110497`*^9, 3.982687464210524*^9}, {
   3.982687549138432*^9, 3.9826876336983757`*^9}, 3.9826876641595182`*^9, {
   3.982687949737677*^9, 3.982687987491384*^9}, {3.982688263734165*^9, 
   3.982688311932314*^9}, {3.98268835406429*^9, 3.982688423815052*^9}, {
   3.98268930788795*^9, 3.982689365349436*^9}, {3.982689576809081*^9, 
   3.9826895790755463`*^9}, {3.982689637934724*^9, 3.982689669169804*^9}, {
   3.982689710480432*^9, 3.9826897321081553`*^9}, {3.982689788639682*^9, 
   3.982689789888908*^9}, {3.982689826192696*^9, 3.982689867132001*^9}, {
   3.98268990795448*^9, 3.9826899095473967`*^9}, {3.9826900549400883`*^9, 
   3.982690139845903*^9}, {3.982690184255167*^9, 3.982690224745174*^9}, {
   3.982690256508463*^9, 3.982690266357931*^9}, {3.9826904113515167`*^9, 
   3.982690425634665*^9}, {3.98269050296461*^9, 3.9826905174108753`*^9}, {
   3.982690635580699*^9, 3.982690644634571*^9}, {3.982690687724978*^9, 
   3.9826906883054953`*^9}, {3.9826907753569727`*^9, 3.982690808739303*^9}, 
   3.982690902197455*^9, {3.9826913688339157`*^9, 3.982691381166326*^9}, {
   3.98269170761278*^9, 3.982691713870496*^9}, {3.9826918022002287`*^9, 
   3.982691802536542*^9}},
 CellLabel->
  "In[139]:=",ExpressionUUID->"d70fa194-f0d9-40cd-8052-3cd79f69ec87"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"1", "+", "h"}], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "2"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "3"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "4"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "5"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "6"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "7"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "8"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "9"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "10"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "11"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "12"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "13"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "14"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "15"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "16"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "17"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "18"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "19"], ",", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "+", "h"}], ")"}], "20"]}], "}"}]], "Output",
 CellChangeTimes->{
  3.982691317981329*^9, {3.982691369951665*^9, 3.9826913814675217`*^9}, {
   3.98269170918038*^9, 3.982691714324697*^9}, 3.982691811040234*^9},
 CellLabel->
  "Out[140]=",ExpressionUUID->"58cac9c6-8005-44c4-9476-959baffe70df"]
}, Open  ]],

Cell["Ak za h dosad\[IAcute]me 1/N, tak m\[AAcute]me postupnos\[THacek] \
(1+1/N)^N.", "Text",
 CellChangeTimes->{{3.98269133143773*^9, 3.9826913483431377`*^9}, {
  3.98269145739909*^9, 3.9826914760650177`*^9}, {3.982691570644705*^9, 
  3.982691571100142*^9}, {3.982691631388994*^9, 
  3.982691726402916*^9}},ExpressionUUID->"f34b7045-effc-4aa8-b992-\
2345dc64b978"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Table", "[", 
  RowBox[{
   RowBox[{"N", "[", 
    RowBox[{"forwardEularMethod", "[", 
     RowBox[{"f", ",", 
      RowBox[{"1", "/", "i"}], ",", "i", ",", "1", ",", "0"}], "]"}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"i", ",", "1", ",", "20"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.9826917295965652`*^9, 3.982691796963306*^9}},
 CellLabel->
  "In[138]:=",ExpressionUUID->"0d669b63-98a4-449c-851d-d28107e7ff63"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "2.`", ",", "2.25`", ",", "2.3703703703703702`", ",", "2.44140625`", ",", 
   "2.48832`", ",", "2.5216263717421126`", ",", "2.546499697040713`", ",", 
   "2.565784513950348`", ",", "2.581174791713197`", ",", "2.5937424601`", ",",
    "2.604199011897531`", ",", "2.613035290224678`", ",", 
   "2.620600887885732`", ",", "2.6271515563008694`", ",", 
   "2.632878717727919`", ",", "2.6379284973666`", ",", "2.642414375183109`", ",",
    "2.646425821097685`", ",", "2.6500343266404447`", ",", 
   "2.6532977051444204`"}], "}"}]], "Output",
 CellChangeTimes->{{3.9826917322618837`*^9, 3.982691801026423*^9}},
 CellLabel->
  "Out[138]=",ExpressionUUID->"d545f958-7d02-4edd-ae14-36df4389e3fa"]
}, Open  ]]
},
WindowSize->{808, 741},
WindowMargins->{{4, Automatic}, {Automatic, 4}},
FrontEndVersion->"14.2 for Mac OS X ARM (64-bit) (December 26, 2024)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"07845d97-87e8-4538-b00b-f2744621590a"
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
Cell[554, 20, 1590, 37, 111, "Input",ExpressionUUID->"4f317c9d-c606-45db-b8a2-44827947f8eb"],
Cell[CellGroupData[{
Cell[2169, 61, 1764, 32, 70, "Input",ExpressionUUID->"d70fa194-f0d9-40cd-8052-3cd79f69ec87"],
Cell[3936, 95, 1979, 65, 57, "Output",ExpressionUUID->"58cac9c6-8005-44c4-9476-959baffe70df"]
}, Open  ]],
Cell[5930, 163, 366, 6, 33, "Text",ExpressionUUID->"f34b7045-effc-4aa8-b992-2345dc64b978"],
Cell[CellGroupData[{
Cell[6321, 173, 451, 11, 29, "Input",ExpressionUUID->"0d669b63-98a4-449c-851d-d28107e7ff63"],
Cell[6775, 186, 728, 13, 53, "Output",ExpressionUUID->"d545f958-7d02-4edd-ae14-36df4389e3fa"]
}, Open  ]]
}
]
*)

