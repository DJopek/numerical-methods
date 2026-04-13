(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Wolfram 14.2' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       154,          7]
NotebookDataLength[     24519,        602]
NotebookOptionsPosition[     22878,        568]
NotebookOutlinePosition[     23275,        584]
CellTagsIndexPosition[     23232,        581]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "1.", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"companionMatrix", "[", 
     RowBox[{"coeffs_", ",", "nn_"}], "]"}], " ", ":=", " ", 
    RowBox[{"Module", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"polynomial", ",", "C"}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"polynomial", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"coeffs", "[", 
            RowBox[{"[", 
             RowBox[{"i", "+", "1"}], "]"}], "]"}], "*", 
           RowBox[{"x", "^", "i"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"i", ",", "0", ",", 
            RowBox[{"nn", "-", "1"}]}], "}"}]}], "]"}]}], ";", " ", 
       RowBox[{"(*", 
        RowBox[{
         RowBox[{"we", " ", "only", " ", "need", " ", "n"}], "-", 
         RowBox[{
         "1", " ", "coefficients", " ", "for", " ", "this", " ", "matrix"}]}],
         "*)"}], 
       RowBox[{"M1", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{"i", "==", "nn"}], ",", 
              RowBox[{"-", 
               RowBox[{"coeffs", "[", 
                RowBox[{"[", "j", "]"}], "]"}]}], ",", "0"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", "nn"}], "}"}]}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"j", ",", "1", ",", "nn"}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"M2", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Table", "[", 
           RowBox[{
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"j", "-", "1"}], "==", "i"}], ",", "1", ",", "0", ",", 
              "0"}], "]"}], ",", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", "nn"}], "}"}]}], "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"j", ",", "1", ",", "nn"}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"C", "=", 
        RowBox[{"M1", "+", "M2"}]}]}]}], "\[IndentingNewLine]", "]"}]}], 
   "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQBmIQPTfs3u1vG946puga3QXRzrKqv0F0tYjrXxB9yOaI
4ncgve8ziwqIllraoQei9//bZQiiA1LtfED0i7NpASD6VsniJBDNsepiPojW
c28vAdEmnxtKQbTA1P1tIPr5lfypINrv8t1ZYPXXOleC6C29Tw+BaJ93646C
aObKzZdBdNuUR09A9Ls/oe9AdKCv+0cQnWHk/BUsf7LtD4i+MYGZ8QeQvn9p
IgeI/lOgJAyib621EAHRbE8WqoDo1SJnwfRfQwdHEG3k6QKmbZQeTwDRnId/
TAfRElubTX+CzL002xJEAwDjxrsv
  "],
 CellLabel->"In[56]:=",ExpressionUUID->"8c9e72f1-2620-4634-a055-82a70ae16b55"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", "testing", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"nnTest", " ", "=", " ", "10"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"coeffsTest", " ", "=", " ", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"Subscript", "[", 
        RowBox[{"c", ",", "i"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"i", ",", "0", ",", "nnTest"}], "}"}]}], "]"}]}], ";"}], " ", 
   
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
     "coefficients", " ", "for", " ", "polynomial", " ", "of", " ", "degree", 
      " ", "n"}], "-", "1"}], " ", "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"CMatrixTest", " ", "=", " ", 
     RowBox[{"companionMatrix", "[", 
      RowBox[{"coeffsTest", ",", "nnTest"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"CMatrixTestVisual", " ", "=", " ", 
    RowBox[{"CMatrixTest", "//", "MatrixForm"}]}], 
   "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->{{3.985094366948073*^9, 3.985094377568041*^9}, {
   3.985094617159822*^9, 3.98509463415875*^9}, {3.9850949261324167`*^9, 
   3.9850949441547537`*^9}, {3.985095028270154*^9, 3.985095053843597*^9}, {
   3.9850952659498672`*^9, 3.985095299212635*^9}, {3.985095445108014*^9, 
   3.985095550552006*^9}, {3.985095588227439*^9, 3.985095596029688*^9}, {
   3.985095733986946*^9, 3.985095851494739*^9}, {3.985095894932044*^9, 
   3.985096012307377*^9}, {3.9850962151735477`*^9, 3.985096237466589*^9}, {
   3.985096349608522*^9, 3.9850964870806303`*^9}, {3.985096562687125*^9, 
   3.985096586228188*^9}, {3.985096618099903*^9, 3.985096671995235*^9}, {
   3.985096774775416*^9, 3.985096841805203*^9}, {3.985097950305032*^9, 
   3.985097989863658*^9}, 3.985099183512499*^9},
 CellLabel->"In[57]:=",ExpressionUUID->"b7b039ec-5e7c-4d49-a931-21f4d1baf250"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"0", "0", "0", "0", "0", "0", "0", "0", "0", 
      RowBox[{"-", 
       SubscriptBox["c", "0"]}]},
     {"1", "0", "0", "0", "0", "0", "0", "0", "0", 
      RowBox[{"-", 
       SubscriptBox["c", "1"]}]},
     {"0", "1", "0", "0", "0", "0", "0", "0", "0", 
      RowBox[{"-", 
       SubscriptBox["c", "2"]}]},
     {"0", "0", "1", "0", "0", "0", "0", "0", "0", 
      RowBox[{"-", 
       SubscriptBox["c", "3"]}]},
     {"0", "0", "0", "1", "0", "0", "0", "0", "0", 
      RowBox[{"-", 
       SubscriptBox["c", "4"]}]},
     {"0", "0", "0", "0", "1", "0", "0", "0", "0", 
      RowBox[{"-", 
       SubscriptBox["c", "5"]}]},
     {"0", "0", "0", "0", "0", "1", "0", "0", "0", 
      RowBox[{"-", 
       SubscriptBox["c", "6"]}]},
     {"0", "0", "0", "0", "0", "0", "1", "0", "0", 
      RowBox[{"-", 
       SubscriptBox["c", "7"]}]},
     {"0", "0", "0", "0", "0", "0", "0", "1", "0", 
      RowBox[{"-", 
       SubscriptBox["c", "8"]}]},
     {"0", "0", "0", "0", "0", "0", "0", "0", "1", 
      RowBox[{"-", 
       SubscriptBox["c", "9"]}]}
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
 CellChangeTimes->{3.9851004542759657`*^9},
 CellLabel->
  "Out[60]//MatrixForm=",ExpressionUUID->"51d3ec0f-f642-4bda-91cb-\
f006cc4a8155"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "2.", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"nn", " ", "=", " ", "10"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"coefficients", " ", "=", " ", 
     RowBox[{"RandomReal", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"0", ",", "10"}], "}"}], ",", "nn"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
     "coefficients", " ", "for", " ", "polynomial", " ", "of", " ", "degree", 
      " ", "n"}], "-", "1"}], " ", "*)"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"CMatrix", " ", "=", " ", 
     RowBox[{"companionMatrix", "[", 
      RowBox[{"coefficients", ",", " ", "nn"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"CMatrixVisual", " ", "=", " ", 
    RowBox[{"CMatrix", "//", "MatrixForm"}]}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Idnn", " ", "=", " ", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"i", "==", "j"}], ",", "1", ",", "0"}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"i", ",", "1", ",", "nn"}], "}"}]}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"j", ",", "1", ",", "nn"}], "}"}]}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"Det", "[", 
    RowBox[{"CMatrix", "-", 
     RowBox[{"\[Lambda]", "*", "Idnn"}]}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"CharacteristicPolynomial", "[", 
    RowBox[{"CMatrix", ",", "x"}], "]"}], "\[IndentingNewLine]"}]}]], "Input",\

 CellChangeTimes->{{3.985096789603677*^9, 3.985096809708784*^9}, {
   3.98509684581402*^9, 3.985097086209277*^9}, {3.9850972741806383`*^9, 
   3.9850974333834343`*^9}, {3.9850974810703287`*^9, 
   3.9850975065094233`*^9}, {3.985097996671452*^9, 3.985097997345791*^9}, {
   3.985099115494755*^9, 3.985099119178116*^9}, 3.985099185984103*^9},
 CellLabel->"In[61]:=",ExpressionUUID->"8ed91306-bbd1-41e3-956e-b4f46e67e80d"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"0", "0", "0", "0", "0", "0", "0", "0", "0", 
      RowBox[{"-", "1.4391199108603692`"}]},
     {"1", "0", "0", "0", "0", "0", "0", "0", "0", 
      RowBox[{"-", "6.152550927007097`"}]},
     {"0", "1", "0", "0", "0", "0", "0", "0", "0", 
      RowBox[{"-", "5.779804865561928`"}]},
     {"0", "0", "1", "0", "0", "0", "0", "0", "0", 
      RowBox[{"-", "0.20784304538050913`"}]},
     {"0", "0", "0", "1", "0", "0", "0", "0", "0", 
      RowBox[{"-", "9.734627035494448`"}]},
     {"0", "0", "0", "0", "1", "0", "0", "0", "0", 
      RowBox[{"-", "9.660318380593305`"}]},
     {"0", "0", "0", "0", "0", "1", "0", "0", "0", 
      RowBox[{"-", "2.8177193621739027`"}]},
     {"0", "0", "0", "0", "0", "0", "1", "0", "0", 
      RowBox[{"-", "6.127780998610848`"}]},
     {"0", "0", "0", "0", "0", "0", "0", "1", "0", 
      RowBox[{"-", "5.873381229636365`"}]},
     {"0", "0", "0", "0", "0", "0", "0", "0", "1", 
      RowBox[{"-", "1.3601927842981265`"}]}
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
 CellChangeTimes->{3.9851004562967663`*^9},
 CellLabel->
  "Out[64]//MatrixForm=",ExpressionUUID->"a7dcf569-1910-43e0-b581-\
9e95cfb7de11"],

Cell[BoxData[
 RowBox[{"1.4391199108603692`", "\[VeryThinSpace]", "+", 
  RowBox[{"6.152550927007097`", " ", "\[Lambda]"}], "+", 
  RowBox[{"5.779804865561928`", " ", 
   SuperscriptBox["\[Lambda]", "2"]}], "+", 
  RowBox[{"0.20784304538050913`", " ", 
   SuperscriptBox["\[Lambda]", "3"]}], "+", 
  RowBox[{"9.734627035494448`", " ", 
   SuperscriptBox["\[Lambda]", "4"]}], "+", 
  RowBox[{"9.660318380593305`", " ", 
   SuperscriptBox["\[Lambda]", "5"]}], "+", 
  RowBox[{"2.8177193621739027`", " ", 
   SuperscriptBox["\[Lambda]", "6"]}], "+", 
  RowBox[{"6.127780998610848`", " ", 
   SuperscriptBox["\[Lambda]", "7"]}], "+", 
  RowBox[{"5.873381229636365`", " ", 
   SuperscriptBox["\[Lambda]", "8"]}], "+", 
  RowBox[{"1.3601927842981265`", " ", 
   SuperscriptBox["\[Lambda]", "9"]}], "+", 
  SuperscriptBox["\[Lambda]", "10"]}]], "Output",
 CellChangeTimes->{3.9851004563225718`*^9},
 CellLabel->"Out[66]=",ExpressionUUID->"495512dd-139f-4da5-bab5-031f3b140df9"],

Cell[BoxData[
 RowBox[{"1.439119910860383`", "\[VeryThinSpace]", "+", 
  RowBox[{"6.152550927007127`", " ", "x"}], "+", 
  RowBox[{"5.779804865561949`", " ", 
   SuperscriptBox["x", "2"]}], "+", 
  RowBox[{"0.20784304538052334`", " ", 
   SuperscriptBox["x", "3"]}], "+", 
  RowBox[{"9.734627035494498`", " ", 
   SuperscriptBox["x", "4"]}], "+", 
  RowBox[{"9.66031838059333`", " ", 
   SuperscriptBox["x", "5"]}], "+", 
  RowBox[{"2.8177193621739067`", " ", 
   SuperscriptBox["x", "6"]}], "+", 
  RowBox[{"6.127780998610881`", " ", 
   SuperscriptBox["x", "7"]}], "+", 
  RowBox[{"5.873381229636368`", " ", 
   SuperscriptBox["x", "8"]}], "+", 
  RowBox[{"1.3601927842981316`", " ", 
   SuperscriptBox["x", "9"]}], "+", 
  SuperscriptBox["x", "10"]}]], "Output",
 CellChangeTimes->{3.985100456323634*^9},
 CellLabel->"Out[67]=",ExpressionUUID->"9a43d808-a65d-472e-94e8-32d1df41e8f8"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "3.", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"coefficientsFull", " ", "=", " ", 
     RowBox[{"Join", "[", 
      RowBox[{"coefficients", ",", " ", 
       RowBox[{"{", "1", "}"}]}], "]"}]}], " ", ";"}], 
   RowBox[{"(*", " ", 
    RowBox[{
     RowBox[{
      RowBox[{
      "we", " ", "generated", " ", "coefficients", " ", "for", " ", 
       "polynomial", " ", "of", " ", "degree", " ", "n"}], "-", "1"}], ",", 
     " ", 
     RowBox[{
     "we", " ", "know", " ", "the", " ", "full", " ", "polynomial", " ", "is",
       " ", "of", " ", "degree", " ", "n", " ", "and", " ", "leading", " ", 
      "coeffient", " ", "is", " ", "1", " ", "so", " ", "we", " ", "will", " ",
       "just", " ", "expand", " ", "the", " ", "coefficients", " ", 
      "list"}]}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{"polynomialFull", " ", "=", " ", 
    RowBox[{"Sum", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"coefficientsFull", "[", 
        RowBox[{"[", 
         RowBox[{"i", "+", "1"}], "]"}], "]"}], "*", 
       RowBox[{"x", "^", "i"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "0", ",", "nn"}], "}"}]}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"roots", " ", "=", " ", 
    RowBox[{"Flatten", "[", 
     RowBox[{"Values", "[", 
      RowBox[{"Solve", "[", 
       RowBox[{"polynomialFull", "==", "0"}], "]"}], "]"}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"eigenvals", " ", "=", " ", 
    RowBox[{"Chop", "[", 
     RowBox[{"Eigenvalues", "[", "CMatrix", "]"}], "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.985097637242453*^9, 3.985097653411027*^9}, {
   3.985097794824164*^9, 3.9850977968225517`*^9}, {3.985098010143017*^9, 
   3.9850982296156588`*^9}, {3.985098376256527*^9, 3.9850984631938868`*^9}, {
   3.98509850333435*^9, 3.985098506326729*^9}, {3.9850985820128603`*^9, 
   3.9850985843077993`*^9}, {3.985098622691256*^9, 3.985098624399066*^9}, {
   3.985098665165164*^9, 3.98509874989839*^9}, {3.985098812079167*^9, 
   3.985098814220127*^9}, {3.985098855040633*^9, 3.985098889362562*^9}, {
   3.985098928015994*^9, 3.9850989351817217`*^9}, 3.985099056302967*^9, {
   3.985100294370214*^9, 3.9851003069270773`*^9}},
 CellLabel->"In[68]:=",ExpressionUUID->"a7e504c2-a898-4523-8e09-46bf370a6699"],

Cell[BoxData[
 RowBox[{"1.4391199108603692`", "\[VeryThinSpace]", "+", 
  RowBox[{"6.152550927007097`", " ", "x"}], "+", 
  RowBox[{"5.779804865561928`", " ", 
   SuperscriptBox["x", "2"]}], "+", 
  RowBox[{"0.20784304538050913`", " ", 
   SuperscriptBox["x", "3"]}], "+", 
  RowBox[{"9.734627035494448`", " ", 
   SuperscriptBox["x", "4"]}], "+", 
  RowBox[{"9.660318380593305`", " ", 
   SuperscriptBox["x", "5"]}], "+", 
  RowBox[{"2.8177193621739027`", " ", 
   SuperscriptBox["x", "6"]}], "+", 
  RowBox[{"6.127780998610848`", " ", 
   SuperscriptBox["x", "7"]}], "+", 
  RowBox[{"5.873381229636365`", " ", 
   SuperscriptBox["x", "8"]}], "+", 
  RowBox[{"1.3601927842981265`", " ", 
   SuperscriptBox["x", "9"]}], "+", 
  SuperscriptBox["x", "10"]}]], "Output",
 CellChangeTimes->{3.985100461109871*^9},
 CellLabel->"Out[69]=",ExpressionUUID->"1615d6b2-e42e-4c28-ae81-a52365641fbb"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{"-", "1.0825090017323702`"}], "-", 
    RowBox[{"0.38564517448038976`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "1.0825090017323702`"}], "+", 
    RowBox[{"0.38564517448038976`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.41685857752868266`"}], "-", 
    RowBox[{"0.06804968360149839`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.41685857752868266`"}], "+", 
    RowBox[{"0.06804968360149839`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.269034720077168`"}], "-", 
    RowBox[{"2.304767447754574`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.269034720077168`"}], "+", 
    RowBox[{"2.304767447754574`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.4139475325179066`", "\[VeryThinSpace]", "-", 
    RowBox[{"1.0305242473790122`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.4139475325179066`", "\[VeryThinSpace]", "+", 
    RowBox[{"1.0305242473790122`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.6743583746712508`", "\[VeryThinSpace]", "-", 
    RowBox[{"0.6819978900035538`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.6743583746712508`", "\[VeryThinSpace]", "+", 
    RowBox[{"0.6819978900035538`", " ", "\[ImaginaryI]"}]}]}], 
  "}"}]], "Output",
 CellChangeTimes->{3.98510046111174*^9},
 CellLabel->"Out[70]=",ExpressionUUID->"1cc5c319-9310-43be-8b26-ae05193d2d8c"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{
    RowBox[{"-", "0.2690347200771678`"}], "+", 
    RowBox[{"2.304767447754574`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.2690347200771678`"}], "-", 
    RowBox[{"2.304767447754574`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "1.0825090017323724`"}], "+", 
    RowBox[{"0.38564517448038804`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "1.0825090017323724`"}], "-", 
    RowBox[{"0.38564517448038804`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.41394753251790656`", "\[VeryThinSpace]", "+", 
    RowBox[{"1.030524247379012`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.41394753251790656`", "\[VeryThinSpace]", "-", 
    RowBox[{"1.030524247379012`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.674358374671251`", "\[VeryThinSpace]", "+", 
    RowBox[{"0.6819978900035544`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{"0.674358374671251`", "\[VeryThinSpace]", "-", 
    RowBox[{"0.6819978900035544`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.41685857752868327`"}], "+", 
    RowBox[{"0.0680496836015021`", " ", "\[ImaginaryI]"}]}], ",", 
   RowBox[{
    RowBox[{"-", "0.41685857752868327`"}], "-", 
    RowBox[{"0.0680496836015021`", " ", "\[ImaginaryI]"}]}]}], 
  "}"}]], "Output",
 CellChangeTimes->{3.985100461113017*^9},
 CellLabel->"Out[71]=",ExpressionUUID->"88599746-d982-4e05-bb0c-b7fc91ca658f"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
    "Now", " ", "we", " ", "will", " ", "evaluate", " ", "the", " ", 
     "polynomial", " ", "at", " ", "found", " ", "values", " ", "and", " ", 
     "check", " ", "if", " ", "the", " ", "absolute", " ", "value", " ", "of",
      " ", "the", " ", "evaluation", " ", "is", " ", "within", " ", 
     "tolerance", " ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
       "effectivelly", " ", "check", " ", "if", " ", "they", " ", "evaluate", 
        " ", "to", " ", "0"}], ")"}], ".", " ", "If"}], " ", "so", " ", "we", 
     " ", "will", " ", "replace", " ", "them", " ", "with", " ", "True"}], ",",
     " ", 
    RowBox[{
    "otherwise", " ", "we", " ", "will", " ", "replace", " ", "them", " ", 
     "with", " ", 
     RowBox[{"False", ".", " ", "Then"}], " ", "we", " ", "are", " ", "going",
      " ", "to", " ", "check", " ", "if", " ", "these", " ", "lists", " ", 
     "are", " ", "the", " ", "same", " ", "in", " ", "order", " ", "to", " ", 
     "confirm", " ", "both", " ", "are", " ", "the", " ", "roots", " ", "of", 
     " ", "the", " ", 
     RowBox[{"polynomial", "."}]}]}], "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"evalToZeroCheckRoots", " ", "=", " ", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Abs", "[", 
           RowBox[{"polynomialFull", "/.", 
            RowBox[{"{", 
             RowBox[{"x", "->", 
              RowBox[{"roots", "[", 
               RowBox[{"[", "i", "]"}], "]"}]}], "}"}]}], "]"}], "<", " ", 
          RowBox[{"10", "^", 
           RowBox[{"-", "10"}]}]}], ",", " ", "True", ",", " ", "False"}], 
        "]"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"i", ",", "1", ",", 
         RowBox[{"Length", "[", "roots", "]"}]}], "}"}]}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"evalToZeroCheckEigvals", " ", "=", " ", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Abs", "[", 
           RowBox[{"polynomialFull", "/.", 
            RowBox[{"{", 
             RowBox[{"x", "->", 
              RowBox[{"eigenvals", "[", 
               RowBox[{"[", "i", "]"}], "]"}]}], "}"}]}], "]"}], "<", 
          RowBox[{"10", "^", 
           RowBox[{"-", "10"}]}]}], ",", "True", ",", "False"}], "]"}], ",", 
       " ", 
       RowBox[{"{", 
        RowBox[{"i", ",", "1", ",", 
         RowBox[{"Length", "[", "eigenvals", "]"}]}], "}"}]}], "]"}]}], ";"}],
    "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"If", "[", 
    RowBox[{
     RowBox[{
     "evalToZeroCheckEigvals", " ", "===", " ", "evalToZeroCheckRoots"}], ",",
      " ", 
     RowBox[{
     "Print", "[", "\"\<Vlastn\[EAcute] hodnoty companion matrix s\[UAcute] \
rovn\[EAcute] kore\[NHacek]om polyn\[OAcute]mu.\>\"", "]"}], ",", " ", 
     RowBox[{
     "Print", "[", "\"\<Vlastn\[EAcute] hodnoty companion matrix nie s\
\[UAcute] rovn\[EAcute] kore\[NHacek]om polyn\[OAcute]mu.\>\"", "]"}]}], 
    "]"}], "\[IndentingNewLine]", "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->{{3.985097637242453*^9, 3.985097653411027*^9}, {
   3.985097794824164*^9, 3.9850977968225517`*^9}, {3.985098010143017*^9, 
   3.9850982296156588`*^9}, {3.985098376256527*^9, 3.9850984631938868`*^9}, {
   3.98509850333435*^9, 3.985098506326729*^9}, {3.9850985820128603`*^9, 
   3.9850985843077993`*^9}, {3.985098622691256*^9, 3.985098624399066*^9}, {
   3.985098665165164*^9, 3.98509874989839*^9}, {3.985098812079167*^9, 
   3.985098814220127*^9}, {3.985098855040633*^9, 3.985098889362562*^9}, {
   3.985098928015994*^9, 3.9850989351817217`*^9}, 3.985099056302967*^9, {
   3.9850993550972843`*^9, 3.985100011075066*^9}, {3.9851003420632477`*^9, 
   3.985100345998996*^9}, {3.985100384257884*^9, 3.985100385430731*^9}},
 CellLabel->"In[72]:=",ExpressionUUID->"630de93b-b83a-45f7-b114-bcc52a4a36fc"],

Cell[BoxData["\<\"Vlastn\[EAcute] hodnoty companion matrix s\[UAcute] rovn\
\[EAcute] kore\[NHacek]om polyn\[OAcute]mu.\"\>"], "Print",
 CellChangeTimes->{3.985100468473764*^9},
 CellLabel->
  "During evaluation of \
In[72]:=",ExpressionUUID->"d6e19bac-8c77-4124-893e-053dac07cef5"]
}, Open  ]]
},
WindowSize->{808, 742},
WindowMargins->{{76, Automatic}, {Automatic, 44}},
FrontEndVersion->"14.2 for Mac OS X ARM (64-bit) (December 26, 2024)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"8a83aad9-3391-49a6-840f-3ec05cb25087"
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
Cell[554, 20, 2764, 71, 213, "Input",ExpressionUUID->"8c9e72f1-2620-4634-a055-82a70ae16b55"],
Cell[CellGroupData[{
Cell[3343, 95, 1859, 38, 172, "Input",ExpressionUUID->"b7b039ec-5e7c-4d49-a931-21f4d1baf250"],
Cell[5205, 135, 1648, 47, 197, "Output",ExpressionUUID->"51d3ec0f-f642-4bda-91cb-f006cc4a8155"]
}, Open  ]],
Cell[CellGroupData[{
Cell[6890, 187, 2079, 49, 254, "Input",ExpressionUUID->"8ed91306-bbd1-41e3-956e-b4f46e67e80d"],
Cell[8972, 238, 1553, 37, 197, "Output",ExpressionUUID->"a7dcf569-1910-43e0-b581-9e95cfb7de11"],
Cell[10528, 277, 970, 21, 53, "Output",ExpressionUUID->"495512dd-139f-4da5-bab5-031f3b140df9"],
Cell[11501, 300, 886, 21, 53, "Output",ExpressionUUID->"9a43d808-a65d-472e-94e8-32d1df41e8f8"]
}, Open  ]],
Cell[CellGroupData[{
Cell[12424, 326, 2307, 49, 172, "Input",ExpressionUUID->"a7e504c2-a898-4523-8e09-46bf370a6699"],
Cell[14734, 377, 888, 21, 53, "Output",ExpressionUUID->"1615d6b2-e42e-4c28-ae81-a52365641fbb"],
Cell[15625, 400, 1448, 31, 74, "Output",ExpressionUUID->"1cc5c319-9310-43be-8b26-ae05193d2d8c"],
Cell[17076, 433, 1447, 31, 74, "Output",ExpressionUUID->"88599746-d982-4e05-bb0c-b7fc91ca658f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[18560, 469, 4017, 89, 376, "Input",ExpressionUUID->"630de93b-b83a-45f7-b114-bcc52a4a36fc"],
Cell[22580, 560, 282, 5, 23, "Print",ExpressionUUID->"d6e19bac-8c77-4124-893e-053dac07cef5"]
}, Open  ]]
}
]
*)

