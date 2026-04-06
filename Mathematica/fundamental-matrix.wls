(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Wolfram 14.2' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       154,          7]
NotebookDataLength[     18754,        507]
NotebookOptionsPosition[     17534,        479]
NotebookOutlinePosition[     17932,        495]
CellTagsIndexPosition[     17889,        492]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"h", "[", "t_", "]"}], " ", ":=", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"Cos", "[", "t", "]"}], "+", 
      RowBox[{"Sin", "[", "t", "]"}]}], ")"}], "/", 
    RowBox[{"(", 
     RowBox[{"2", "+", 
      RowBox[{"Sin", "[", "t", "]"}], "-", 
      RowBox[{"Cos", "[", "t", "]"}]}], ")"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"P", "[", "t_", "]"}], ":=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"1", ",", "1"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", 
       RowBox[{"h", "[", "t", "]"}]}], "}"}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"r", "[", "t_", "]"}], ":=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"x", "[", "t", "]"}], ",", 
     RowBox[{"y", "[", "t", "]"}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Id", ":=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"1", ",", "0"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"0", ",", "1"}], "}"}]}], "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"\[CapitalPhi]", "[", "t_", "]"}], ":=", " ", 
   RowBox[{"{", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"Subscript", "[", 
         RowBox[{"\[CapitalPhi]", ",", "11"}], "]"}], "[", "t", "]"}], ",", 
       RowBox[{
        RowBox[{"Subscript", "[", 
         RowBox[{"\[CapitalPhi]", ",", "12"}], "]"}], "[", "t", "]"}]}], 
      "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"Subscript", "[", 
         RowBox[{"\[CapitalPhi]", ",", "21"}], "]"}], "[", "t", "]"}], ",", 
       RowBox[{
        RowBox[{"Subscript", "[", 
         RowBox[{"\[CapitalPhi]", ",", "22"}], "]"}], "[", "t", "]"}]}], 
      "}"}]}], "}"}]}], ";"}]}], "Input",
 CellChangeTimes->{{3.984457489104596*^9, 3.984457511722973*^9}, {
  3.984459910942046*^9, 3.984459911111657*^9}, {3.9844602857550793`*^9, 
  3.984460301373788*^9}, {3.9844604531368647`*^9, 3.984460461155607*^9}, {
  3.984460507087029*^9, 3.984460536158452*^9}, {3.984460621791939*^9, 
  3.98446062874218*^9}, {3.98446069682257*^9, 3.984460743721987*^9}, {
  3.9844608589759493`*^9, 3.984460920252068*^9}, {3.9844609607646513`*^9, 
  3.9844609937693987`*^9}, {3.984461069852571*^9, 3.984461112432413*^9}, {
  3.9844611431984453`*^9, 3.9844611708119087`*^9}, {3.984461203561306*^9, 
  3.984461205822863*^9}, {3.984461259521165*^9, 3.984461303992757*^9}, {
  3.984462419127563*^9, 3.9844624621250563`*^9}, {3.9844624983163548`*^9, 
  3.984462570478129*^9}, {3.984462738680937*^9, 3.984462774183855*^9}, {
  3.984462943761756*^9, 3.984463016820985*^9}, {3.984463075279998*^9, 
  3.984463156844887*^9}},
 CellLabel->"In[1]:=",ExpressionUUID->"e8f5ef8a-893b-4045-9b63-6bc9d1925d5c"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"odes", " ", "=", " ", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[CapitalPhi]", "'"}], "[", "t", "]"}], ")"}], "[", 
        RowBox[{"[", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"i", "+", "1", "-", 
            RowBox[{"Mod", "[", 
             RowBox[{
              RowBox[{"i", "-", "1"}], ",", "2"}], "]"}]}], ")"}], "/", "2"}],
          "]"}], "]"}], "[", 
       RowBox[{"[", 
        RowBox[{
         RowBox[{"Mod", "[", 
          RowBox[{
           RowBox[{"i", "-", "1"}], ",", "2"}], "]"}], "+", "1"}], "]"}], 
       "]"}], "==", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"P", "[", "t", "]"}], ".", 
          RowBox[{"\[CapitalPhi]", "[", "t", "]"}]}], ")"}], "[", 
        RowBox[{"[", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"i", "+", "1", "-", 
            RowBox[{"Mod", "[", 
             RowBox[{
              RowBox[{"i", "-", "1"}], ",", "2"}], "]"}]}], ")"}], "/", "2"}],
          "]"}], "]"}], "[", 
       RowBox[{"[", 
        RowBox[{
         RowBox[{"Mod", "[", 
          RowBox[{
           RowBox[{"i", "-", "1"}], ",", "2"}], "]"}], "+", "1"}], "]"}], 
       "]"}]}], ",", 
     RowBox[{"{", 
      RowBox[{"i", ",", "1", ",", "4"}], "}"}]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ic", " ", "=", " ", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"\[CapitalPhi]", "[", "0", "]"}], "[", 
        RowBox[{"[", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"i", "+", "1", "-", 
            RowBox[{"Mod", "[", 
             RowBox[{
              RowBox[{"i", "-", "1"}], ",", "2"}], "]"}]}], ")"}], "/", "2"}],
          "]"}], "]"}], "[", 
       RowBox[{"[", 
        RowBox[{
         RowBox[{"Mod", "[", 
          RowBox[{
           RowBox[{"i", "-", "1"}], ",", "2"}], "]"}], "+", "1"}], "]"}], 
       "]"}], "==", 
      RowBox[{
       RowBox[{"Id", "[", 
        RowBox[{"[", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"i", "+", "1", "-", 
            RowBox[{"Mod", "[", 
             RowBox[{
              RowBox[{"i", "-", "1"}], ",", "2"}], "]"}]}], ")"}], "/", "2"}],
          "]"}], "]"}], "[", 
       RowBox[{"[", 
        RowBox[{
         RowBox[{"Mod", "[", 
          RowBox[{
           RowBox[{"i", "-", "1"}], ",", "2"}], "]"}], "+", "1"}], "]"}], 
       "]"}]}], ",", 
     RowBox[{"{", 
      RowBox[{"i", ",", "1", ",", "4"}], "}"}]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"eq", " ", "=", " ", 
   RowBox[{"Join", "[", 
    RowBox[{"odes", ",", "ic"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"unknowns", " ", "=", " ", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{"\[CapitalPhi]", "[", "t", "]"}], ")"}], "[", 
       RowBox[{"[", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"i", "+", "1", "-", 
           RowBox[{"Mod", "[", 
            RowBox[{
             RowBox[{"i", "-", "1"}], ",", "2"}], "]"}]}], ")"}], "/", "2"}], 
        "]"}], "]"}], "[", 
      RowBox[{"[", 
       RowBox[{
        RowBox[{"Mod", "[", 
         RowBox[{
          RowBox[{"i", "-", "1"}], ",", "2"}], "]"}], "+", "1"}], "]"}], 
      "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"i", ",", "1", ",", "4"}], "}"}]}], "]"}]}], ";"}]}], "Input",
 CellChangeTimes->{{3.984457489104596*^9, 3.984457511722973*^9}, {
  3.984459910942046*^9, 3.984459911111657*^9}, {3.9844602857550793`*^9, 
  3.984460301373788*^9}, {3.9844604531368647`*^9, 3.984460461155607*^9}, {
  3.984460507087029*^9, 3.984460536158452*^9}, {3.984460621791939*^9, 
  3.98446062874218*^9}, {3.98446069682257*^9, 3.984460743721987*^9}, {
  3.9844608589759493`*^9, 3.984460920252068*^9}, {3.9844609607646513`*^9, 
  3.9844609937693987`*^9}, {3.984461069852571*^9, 3.984461112432413*^9}, {
  3.9844611431984453`*^9, 3.9844611708119087`*^9}, {3.984461203561306*^9, 
  3.984461205822863*^9}, {3.984461259521165*^9, 3.984461303992757*^9}, {
  3.984462419127563*^9, 3.9844624621250563`*^9}, {3.9844624983163548`*^9, 
  3.984462570478129*^9}, {3.984462738680937*^9, 3.984462774183855*^9}, {
  3.984462943761756*^9, 3.984463016820985*^9}, {3.984463075279998*^9, 
  3.9844631662231283`*^9}},
 CellLabel->"In[6]:=",ExpressionUUID->"ef2f6d64-493e-4373-bd5b-a2c33e709722"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"sol", " ", "=", " ", 
   RowBox[{"DSolve", "[", 
    RowBox[{"eq", ",", "unknowns", ",", "t"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"\[CapitalPhi]", "[", "t", "]"}], "/.", 
   RowBox[{"sol", "[", 
    RowBox[{"[", "1", "]"}], "]"}]}], "//", 
  "MatrixForm"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQBmIQfStC+dH+9W8dZyh9fwKi7VTvCRwE0psmPQbTczR3
2INooW+rHUG0UeKSEBC959eSUBD98URSNIjmEmKNB9ETwndmgugP+6dngei6
IKliEN0i9b0CRP+yim8H6xPg6AfRbBUSU0D0q3kWM0C0s8fuhSA65BrvchC9
KvLZKhCt8TtyHYi2+Fa4CUQ/DdkFppPWFuwEqzvyfx+I/i+S4nUISJcxHPEH
0VPkvUJA9FUf/1gQbXMqtAhEqzw6Wgai/RJ+dIPoJlepqSB639eMOSD6nvLx
5SD61s7ipOMg/3ddBtMAbDiyKQ==
  "],
 CellLabel->"In[10]:=",ExpressionUUID->"5c08ea44-71a8-4a86-803b-5a5e046fc763"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      SuperscriptBox["\[ExponentialE]", "t"], 
      RowBox[{
       RowBox[{"-", "2"}], "+", 
       RowBox[{"2", " ", 
        SuperscriptBox["\[ExponentialE]", "t"]}], "-", 
       RowBox[{"Sin", "[", "t", "]"}]}]},
     {"0", 
      RowBox[{"2", "-", 
       RowBox[{"Cos", "[", "t", "]"}], "+", 
       RowBox[{"Sin", "[", "t", "]"}]}]}
    },
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{
  3.984459918711225*^9, 3.9844603031880207`*^9, {3.984460457280263*^9, 
   3.984460461561832*^9}, {3.984460864101017*^9, 3.9844608848859167`*^9}, 
   3.984460921184297*^9, {3.984460963566491*^9, 3.984460990662591*^9}, 
   3.984461171309278*^9, 3.9844613043575163`*^9, 3.9844624638789043`*^9, 
   3.98446249888339*^9, {3.9844625547827063`*^9, 3.984462571042074*^9}, {
   3.984462759885337*^9, 3.984462775490403*^9}, {3.984462945734189*^9, 
   3.984462994286105*^9}, {3.984463094295492*^9, 3.984463135899198*^9}, 
   3.984463173463469*^9, 3.984472500331789*^9, 3.984473005762833*^9, 
   3.9844732749740887`*^9},
 CellLabel->
  "Out[11]//MatrixForm=",ExpressionUUID->"53100e52-835d-4a37-8d06-\
b70ab9407dfa"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Ematrix", "[", "T_", "]"}], ":=", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"Inverse", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"\[CapitalPhi]", "[", "t", "]"}], "/.", 
        RowBox[{"sol", "[", 
         RowBox[{"[", "1", "]"}], "]"}]}], "/.", 
       RowBox[{"t", "->", "t0"}]}], "]"}], " ", ".", 
     RowBox[{"\[CapitalPhi]", "[", "t", "]"}]}], "/.", 
    RowBox[{"sol", "[", 
     RowBox[{"[", "1", "]"}], "]"}]}], "/.", 
   RowBox[{"t", "->", 
    RowBox[{"t0", "+", "T"}]}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Ematrix", "[", "T", "]"}], "//", "MatrixForm"}]}], "Input",
 CellChangeTimes->{{3.984472307832597*^9, 3.984472318623584*^9}, {
  3.9844723537250643`*^9, 3.98447247223048*^9}, {3.984472507998622*^9, 
  3.9844725209363947`*^9}, {3.984472673559918*^9, 3.984472756551016*^9}, {
  3.9844728003051023`*^9, 3.984472801937603*^9}, {3.984472858162177*^9, 
  3.984472868003332*^9}, {3.984472904427417*^9, 3.984472914933614*^9}, {
  3.984473209029022*^9, 3.984473222266961*^9}},
 CellLabel->"In[12]:=",ExpressionUUID->"ba3bbc41-b52b-43f2-8610-b40d0a296b95"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      FractionBox[
       RowBox[{
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"T", "+", "t0"}]], " ", 
        RowBox[{"(", 
         RowBox[{"2", "-", 
          RowBox[{"Cos", "[", "t0", "]"}], "+", 
          RowBox[{"Sin", "[", "t0", "]"}]}], ")"}]}], 
       RowBox[{
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", "t0"]}], "-", 
        RowBox[{
         SuperscriptBox["\[ExponentialE]", "t0"], " ", 
         RowBox[{"Cos", "[", "t0", "]"}]}], "+", 
        RowBox[{
         SuperscriptBox["\[ExponentialE]", "t0"], " ", 
         RowBox[{"Sin", "[", "t0", "]"}]}]}]], 
      RowBox[{
       FractionBox[
        RowBox[{
         RowBox[{"(", 
          RowBox[{"2", "-", 
           RowBox[{"Cos", "[", "t0", "]"}], "+", 
           RowBox[{"Sin", "[", "t0", "]"}]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "2"}], "+", 
           RowBox[{"2", " ", 
            SuperscriptBox["\[ExponentialE]", 
             RowBox[{"T", "+", "t0"}]]}], "-", 
           RowBox[{"Sin", "[", 
            RowBox[{"T", "+", "t0"}], "]"}]}], ")"}]}], 
        RowBox[{
         RowBox[{"2", " ", 
          SuperscriptBox["\[ExponentialE]", "t0"]}], "-", 
         RowBox[{
          SuperscriptBox["\[ExponentialE]", "t0"], " ", 
          RowBox[{"Cos", "[", "t0", "]"}]}], "+", 
         RowBox[{
          SuperscriptBox["\[ExponentialE]", "t0"], " ", 
          RowBox[{"Sin", "[", "t0", "]"}]}]}]], "+", 
       FractionBox[
        RowBox[{
         RowBox[{"(", 
          RowBox[{"2", "-", 
           RowBox[{"2", " ", 
            SuperscriptBox["\[ExponentialE]", "t0"]}], "+", 
           RowBox[{"Sin", "[", "t0", "]"}]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{"2", "-", 
           RowBox[{"Cos", "[", 
            RowBox[{"T", "+", "t0"}], "]"}], "+", 
           RowBox[{"Sin", "[", 
            RowBox[{"T", "+", "t0"}], "]"}]}], ")"}]}], 
        RowBox[{
         RowBox[{"2", " ", 
          SuperscriptBox["\[ExponentialE]", "t0"]}], "-", 
         RowBox[{
          SuperscriptBox["\[ExponentialE]", "t0"], " ", 
          RowBox[{"Cos", "[", "t0", "]"}]}], "+", 
         RowBox[{
          SuperscriptBox["\[ExponentialE]", "t0"], " ", 
          RowBox[{"Sin", "[", "t0", "]"}]}]}]]}]},
     {"0", 
      FractionBox[
       RowBox[{
        SuperscriptBox["\[ExponentialE]", "t0"], " ", 
        RowBox[{"(", 
         RowBox[{"2", "-", 
          RowBox[{"Cos", "[", 
           RowBox[{"T", "+", "t0"}], "]"}], "+", 
          RowBox[{"Sin", "[", 
           RowBox[{"T", "+", "t0"}], "]"}]}], ")"}]}], 
       RowBox[{
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", "t0"]}], "-", 
        RowBox[{
         SuperscriptBox["\[ExponentialE]", "t0"], " ", 
         RowBox[{"Cos", "[", "t0", "]"}]}], "+", 
        RowBox[{
         SuperscriptBox["\[ExponentialE]", "t0"], " ", 
         RowBox[{"Sin", "[", "t0", "]"}]}]}]]}
    },
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output",
 CellChangeTimes->{{3.984472462932963*^9, 3.98447247726196*^9}, {
   3.984472509090824*^9, 3.9844725215550222`*^9}, {3.984472683513728*^9, 
   3.984472757406363*^9}, 3.984472806769498*^9, 3.984472868506094*^9, 
   3.98447292850559*^9, {3.9844732106142406`*^9, 3.984473222724779*^9}, 
   3.984473279511128*^9},
 CellLabel->
  "Out[13]//MatrixForm=",ExpressionUUID->"0ad14568-7513-41a6-9ac9-\
6aa33d51b1a9"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Eigenvalues", "[", 
  RowBox[{"Ematrix", "[", "T", "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.984473015773176*^9, 3.9844730356768637`*^9}},
 CellLabel->"In[14]:=",ExpressionUUID->"aea6a4fb-f6b3-46ec-bc67-9242edceab23"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   SuperscriptBox["\[ExponentialE]", "T"], ",", 
   FractionBox[
    RowBox[{
     RowBox[{"-", "2"}], "+", 
     RowBox[{"Cos", "[", 
      RowBox[{"T", "+", "t0"}], "]"}], "-", 
     RowBox[{"Sin", "[", 
      RowBox[{"T", "+", "t0"}], "]"}]}], 
    RowBox[{
     RowBox[{"-", "2"}], "+", 
     RowBox[{"Cos", "[", "t0", "]"}], "-", 
     RowBox[{"Sin", "[", "t0", "]"}]}]]}], "}"}]], "Output",
 CellChangeTimes->{{3.984473020944285*^9, 3.9844730362394447`*^9}, 
   3.984473212939374*^9, 3.984473282500373*^9},
 CellLabel->"Out[14]=",ExpressionUUID->"d2720b39-6de4-423c-a352-bcf45fa19af9"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"(*", 
  RowBox[{
   RowBox[{
   "I", " ", "used", " ", "Claud", " ", "Sonnet", " ", "4.6", " ", "here", " ",
     "for", " ", "syntax", " ", "debugging", " ", 
    RowBox[{"(", 
     RowBox[{
     "resolving", " ", "syntax", " ", "errors", " ", "and", " ", "discussing",
       " ", "syntax", " ", "so", " ", "I", " ", "can", " ", "understand", " ",
       "it", " ", "and", " ", "work", " ", "better", " ", "with", " ", "it"}],
      ")"}], " ", "and", " ", "for", " ", "challenging"}], " ", "-", " ", 
   RowBox[{
   "I", " ", "have", " ", "specified", " ", "persona", " ", "called", " ", 
    "Challenger", " ", "which", " ", "is", " ", "designed", " ", "to", " ", 
    "challenge", " ", "my", " ", "ideas", " ", "and", " ", "work", " ", "in", 
    " ", "order", " ", "to", " ", "find", " ", "flaws", " ", "and", " ", 
    "problematic", " ", "parts", " ", "and", " ", "make", " ", "me", " ", 
    "think", " ", "deeper", " ", "about", " ", "it"}]}], "*)"}]], "Input",
 CellChangeTimes->{
  3.98447337484238*^9, {3.9844737928009*^9, 3.984473888557157*^9}, {
   3.9844739405972013`*^9, 3.984474003648991*^9}, {3.984474038045947*^9, 
   3.984474038433288*^9}},ExpressionUUID->"2d66b119-6374-4042-a6cc-\
6f57ab70679d"]
},
WindowSize->{993, 752},
WindowMargins->{{164, Automatic}, {Automatic, 43}},
FrontEndVersion->"14.2 for Mac OS X ARM (64-bit) (December 26, 2024)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"d9607599-5342-49ea-a952-ea8233cbb9b0"
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
Cell[554, 20, 2885, 74, 151, "Input",ExpressionUUID->"e8f5ef8a-893b-4045-9b63-6bc9d1925d5c"],
Cell[3442, 96, 4538, 128, 111, "Input",ExpressionUUID->"ef2f6d64-493e-4373-bd5b-a2c33e709722"],
Cell[CellGroupData[{
Cell[8005, 228, 821, 19, 70, "Input",ExpressionUUID->"5c08ea44-71a8-4a86-803b-5a5e046fc763"],
Cell[8829, 249, 1524, 37, 61, "Output",ExpressionUUID->"53100e52-835d-4a37-8d06-b70ab9407dfa"]
}, Open  ]],
Cell[CellGroupData[{
Cell[10390, 291, 1135, 26, 49, "Input",ExpressionUUID->"ba3bbc41-b52b-43f2-8610-b40d0a296b95"],
Cell[11528, 319, 3829, 104, 88, "Output",ExpressionUUID->"0ad14568-7513-41a6-9ac9-6aa33d51b1a9"]
}, Open  ]],
Cell[CellGroupData[{
Cell[15394, 428, 245, 4, 29, "Input",ExpressionUUID->"aea6a4fb-f6b3-46ec-bc67-9242edceab23"],
Cell[15642, 434, 631, 17, 49, "Output",ExpressionUUID->"d2720b39-6de4-423c-a352-bcf45fa19af9"]
}, Open  ]],
Cell[16288, 454, 1242, 23, 90, "Input",ExpressionUUID->"2d66b119-6374-4042-a6cc-6f57ab70679d"]
}
]
*)

(* End of internal cache information *)

