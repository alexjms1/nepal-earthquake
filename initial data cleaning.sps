* Encoding: UTF-8.
DataSet activate Dataset1.
RECODE A.A A.B A.C A.E A.F A.G A.H A.I A.J A.K A.L A.M (2=0) (3=0). /* A.K and A.M should not have been recoded
EXECUTE.

RECODE DistressT1 (2=0).
EXECUTE.
RECODE A.6 A.7 A.8  (2=0) (4=1) (5=0).
EXECUTE.

COMPUTE casteBinary=A.2G.
EXECUTE.

IF  (A.2G ~= 1) casteBinary=0.
EXECUTE.

VALUE LABELS
casteBinary
0 'Other'
1 'ब्राम्हण/क्षेत्री'.
EXECUTE.

COMPUTE EQtraumaT1 = A.B + A.C + A.E + A.F + A.G + A.H.
EXECUTE.

COMPUTE OtherTraumaT1 = A.J + A.L.
EXECUTE.

RECODE A.O A.P A.Q A.R A.S A.T A.U A.V A.W (4=3) (3=2) (2=1) (1=0).
EXECUTE.
RECODE A_1 A_2 A_3 A_4 A_1.0 A_2.0 A_3.0 A_4.0 A_5 A_6 A_7 A_8  (SYSMIS=0).
EXECUTE.
recode HelpGivingMentalT1
HelpGivingDisT1 (2=0) (3=0).
EXECUTE.
recode A.1K
A_1
A_2
A_3
A_4
A_1.0
A_2.0
A_3.0
A_4.0
A_5
A_6
A_7
A_8    (SYSMIS=0). 
EXECUTE.
compute socialCohesionT1 = A.22+
A.23+ 
A.24 .
EXECUTE.
recode A.1X (5=4) (4=3) (3=2) (2=1).
execute.


Compute chronicStressorsT1 = A.6+A.7+A.8.
EXECUTE.

IF (A_1 = 1) Disprep2.monsoonprep.fixed = 1.
EXECUTE.
IF (A_2 = 1) Disprep2.monsoonprep.fixed = 2.
EXECUTE.
IF (A_3 = 1) Disprep2.monsoonprep.fixed = 3.
EXECUTE.
IF (A_4 = 1) Disprep2.monsoonprep.fixed = 4.
EXECUTE.
compute Disprep2.monsoonprep.fixed.revCoded = Disprep2.monsoonprep.fixed * -1.
EXECUTE.
if (Disprep2.monsoonprep.fixed.revCoded = -1) Disprep2.monsoonprep.fixed.revCoded = 4.
EXECUTE.
if (Disprep2.monsoonprep.fixed.revCoded = -2) Disprep2.monsoonprep.fixed.revCoded = 3.
EXECUTE.
if (Disprep2.monsoonprep.fixed.revCoded = -3) Disprep2.monsoonprep.fixed.revCoded = 2.
EXECUTE.
if (Disprep2.monsoonprep.fixed.revCoded = -4) Disprep2.monsoonprep.fixed.revCoded = 1.
EXECUTE.


compute Disprep1.futureEQ.revCoded = A.1X * -1.
EXECUTE.
if (Disprep1.futureEQ.revCoded = -1) Disprep1.futureEQ.revCoded = 4.
EXECUTE.
if (Disprep1.futureEQ.revCoded = -2) Disprep1.futureEQ.revCoded = 3.
EXECUTE.
if (Disprep1.futureEQ.revCoded = -3) Disprep1.futureEQ.revCoded = 2.
EXECUTE.
if (Disprep1.futureEQ.revCoded = -4) Disprep1.futureEQ.revCoded = 1.
EXECUTE.
compute disPrepSelfPerceptT1 =Disprep1.futureEQ.revCoded + Disprep2.monsoonprep.fixed.revCoded .
EXECUTE.
compute disPrepBehaviorsT1 = A_1.0 +A_2.0 +A_3.0 +A_4.0 +A_5+ A_6 +A_7 .
EXECUTE.
compute disPrepT1 = disPrepSelfPerceptT1 + disPrepBehaviorsT1.
EXECUTE.

COMPUTE phqT1=A.O+A.P+A.Q+A.R+A.S+A.T+A.U+A.V+A.W .
EXECUTE.
COMPUTE phqMeanT1=MEAN(A.O,A.P,A.Q,A.R,A.S,A.T,A.U,A.V,A.W ).
EXECUTE.
COMPUTE phqMean6_T1=MEAN.6(A.O,A.P,A.Q,A.R,A.S,A.T,A.U,A.V,A.W ).
EXECUTE.
RECODE A.12 (2=0).
EXECUTE.

COMPUTE ptsdT1=A.14+
A.15+ 
A.16+
A.17+
A.18+
A.19+
A.1A+
A.1B+
A.1C+
A.1D+
A.1E+
A.1F+
A.1G+
A.1H+
A.1I+
A.1J+
A.1K.
EXECUTE.

COMPUTE ptsdMean11_T1=MEAN.11(A.14,A.15,A.16,A.17,A.18,A.19,A.1A,A.1B,A.1C,A.1D,A.1E,A.1F,A.1G,A.1H,A.1I,A.1J,A.1K).
EXECUTE.

COMPUTE ptsdMeanT1 = MEAN(A.14,A.15,A.16,A.17,A.18,A.19,A.1A,A.1B,A.1C,A.1D,A.1E,A.1F,A.1G,A.1H,A.1I,A.1J,A.1K).
EXECUTE.




COMPUTE copingT1=A.1T+A.1U+A.1V.
EXECUTE.
Compute disasterAttribT1 =  disAttribNaturalT1 + disAttribGodT1 + disAttribKarmaT1.
EXECUTE.
Compute disasterAttrib123_T1 = disasterAttrib1T1 + disasterAttrib2T1 + disasterAttrib3T1.
EXECUTE.


FREQUENCIES VARIABLES=
cityT1 A.2 A.2C A.2D A.2E A_1.1 A_2.2 A_3.2 A_4.2 A_5.1 A_6.0 A.2F A.2G A.2H A.2I A.2J 
    A.2K
  /FORMAT=AFREQ
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=A.5 A.6 A.7 A.8
 /FORMAT=AFREQ  
/ORDER=ANALYSIS.

FREQUENCIES VARIABLES=A.A A.B A.C A.E A.F A.G A.H A.I A.J A.K A.L A.M
 /FORMAT=AFREQ   
/ORDER=ANALYSIS.



DESCRIPTIVES VARIABLES=A.2
A.3 A.1 A.2C A.2D A.2E A_1.1 A_2.2 A_3.2 A_4.2 A_5.1 A_6.0 A.2F A.2G A.2H A.2I A.2J 
    A.2K copingT1 phqT1 ptsdT1 disPrepT1
  /STATISTICS=MEAN RANGE MIN MAX
  /SORT=NAME (A).

DESCRIPTIVES VARIABLES=A.5 A.6 A.7 A.8
  /STATISTICS=MEAN RANGE MIN MAX.

DESCRIPTIVES VARIABLES= A.A A.B A.C A.E A.F A.G A.H A.I A.J A.K A.L A.M copingT1 phqT1 ptsdT1 disPrepT1
  /STATISTICS=MEAN RANGE MIN MAX.


T-TEST GROUPS=cityT1(0 1)
  /MISSING=ANALYSIS
  /VARIABLES=A.2D A.2E A_1.1 A_2.2 A_3.2 A_4.2 A_5.1 A_6.0 A.2F A.2G A.2H A.2J A.2K
  /CRITERIA=CI(.95).

T-TEST GROUPS=cityT1(0 1)
  /MISSING=ANALYSIS
  /VARIABLES=disAttribNaturalT1 disAttribGodT1 disAttribKarmaT1 disPrepBehaviorsT1 disPrepSelfPerceptT1 ptsdT1 phqT1 helpSeekingMentalT1
helpSeekingDisT1
HelpGivingMentalT1
HelpGivingDisT1
  /CRITERIA=CI(.95).


DATASET ACTIVATE DataSet2.
RECODE A_1 A_2 A_3 A_4 A_1.0 A_2.0 A_3.0 A_4.0 A_5 A_6 A_7 A_8 (SYSMIS=0).
EXECUTE.
RECODE DistressT2 (2=0).
EXECUTE.
recode A.1K (5=4) (4=3) (3=2) (2=1).
EXECUTE.

IF (A_1 = 1) Disprep2.monsoonprep.fixed = 1.
EXECUTE.
IF (A_2 = 1) Disprep2.monsoonprep.fixed = 2.
EXECUTE.
IF (A_3 = 1) Disprep2.monsoonprep.fixed = 3.
EXECUTE.
IF (A_4 = 1) Disprep2.monsoonprep.fixed = 4.
EXECUTE.

compute Disprep2.monsoonprep.fixed.revCoded = Disprep2.monsoonprep.fixed * -1.
EXECUTE.
if (Disprep2.monsoonprep.fixed.revCoded = -1) Disprep2.monsoonprep.fixed.revCoded = 4.
EXECUTE.
if (Disprep2.monsoonprep.fixed.revCoded = -2) Disprep2.monsoonprep.fixed.revCoded = 3.
EXECUTE.
if (Disprep2.monsoonprep.fixed.revCoded = -3) Disprep2.monsoonprep.fixed.revCoded = 2.
EXECUTE.
if (Disprep2.monsoonprep.fixed.revCoded = -4) Disprep2.monsoonprep.fixed.revCoded = 1.
EXECUTE.


compute Disprep1.futureEQ.revCoded = A.1K * -1.
EXECUTE.
if (Disprep1.futureEQ.revCoded = -1) Disprep1.futureEQ.revCoded = 4.
EXECUTE.
if (Disprep1.futureEQ.revCoded = -2) Disprep1.futureEQ.revCoded = 3.
EXECUTE.
if (Disprep1.futureEQ.revCoded = -3) Disprep1.futureEQ.revCoded = 2.
EXECUTE.
if (Disprep1.futureEQ.revCoded = -4) Disprep1.futureEQ.revCoded = 1.
EXECUTE.
compute disPrepSelfPerceptT2 =Disprep1.futureEQ.revCoded + Disprep2.monsoonprep.fixed.revCoded .
EXECUTE.
compute disPrepBehaviorsT2 = A_1.0 +A_2.0 +A_3.0 +A_4.0 +A_5+ A_6 +A_7 .
EXECUTE.
compute disPrepT2 = disPrepSelfPerceptT2 + disPrepBehaviorsT2.
EXECUTE.

Compute socialCohesionT2 = A.1P + Q105 + Q110 + Q109.
EXECUTE.



RECODE A.6 A.7 A.8 newTraumaT2 (2=0) (4=1) (5=0).
EXECUTE.
Compute chronicStressorsT2 = A.6+A.7+A.8.
EXECUTE.


RECODE A.B A.C A.D A.E A.F A.G A.H A.I A.J (4=3) (3=2) (2=1) (1=0).
EXECUTE.

COMPUTE phqT2=A.B+A.C+A.D+A.E+A.F+A.G+A.H+A.I+A.J.
EXECUTE.
COMPUTE phqMeanT2=MEAN(A.B,A.C,A.D,A.E,A.F,A.G,A.H,A.I,A.J).
EXECUTE.
COMPUTE phqMean6_T2=MEAN.6(A.B,A.C,A.D,A.E,A.F,A.G,A.H,A.I,A.J).
EXECUTE.

RECODE A.P (2=0).
EXECUTE.
compute ptsdT2 = A.R+ 
A.S+ 
A.T+ 
A.U+ 
A.V+ 
A.W+ 
A.X+ 
A.Y+ 
A.Z+ 
A.10+ 
A.11+ 
A.12+ 
A.13+ 
A.14+ 
A.15+ 
A.16+ 
A.17. 
EXECUTE.

COMPUTE ptsdMean11_T2 = MEAN.11(A.R,A.S,A.T,A.U,A.V,A.W,A.X,A.Y,A.Z,A.10,A.11,A.12,A.13,A.14,A.15,A.16,A.17).
EXECUTE.

COMPUTE ptsdMeanT2 = MEAN(A.R,A.S,A.T,A.U,A.V,A.W,A.X,A.Y,A.Z,A.10,A.11,A.12,A.13,A.14,A.15,A.16,A.17).
EXECUTE.

compute copingT2 = A.1G+
A.1H+
A.1I.
EXECUTE.
Compute disasterAttribT2 =  disasterAttribNaturalT2 + disasterAttribGodT2 + diszasterAttribKarmaT2.
EXECUTE.
Compute disasterAttrib123_T2 = disasterAttrib1T2 + disasterAttrib2T2 + disasterAttrib3T2.
EXECUTE.
RECODE Q126.0 Q125 participatedT2  (2=0).
EXECUTE.

recode HelpGivingMentalT2
HelpGivingDisT2 (2=0) (3=0).
EXECUTE.

rename A.1P DisMentalConcerns1T1
rename A.1Q DisMentalConcerns2T1
after A.1Y, rename---not sure if this is right((( disasterAttrib1-3T1 ))))then disAttribNaturalT1 disAttribGodT1 disAttribKarmaT1

DataSet activate DataSet3.

RECODE A.6 A.7 A.8 Q134 (2=0) (4=1) (5=0).
EXECUTE.
Compute chronicStressorsT3 = A.6+A.7+A.8.
EXECUTE.
RECODE A_1 A_2 A_3 A_4 A_1.0 A_2.0 A_3.0 A_4.0 A_5 A_6 A_7 A_8 (SYSMIS=0).
EXECUTE.
RECODE DistressT3 (2=0).
EXECUTE.
recode A.1K (5=4) (4=3) (3=2) (2=1).
EXECUTE.

IF (A_1 = 1) Disprep2.monsoonprep.fixed = 1.
EXECUTE.
IF (A_2 = 1) Disprep2.monsoonprep.fixed = 2.
EXECUTE.
IF (A_3 = 1) Disprep2.monsoonprep.fixed = 3.
EXECUTE.
IF (A_4 = 1) Disprep2.monsoonprep.fixed = 4.
EXECUTE.


compute Disprep2.monsoonprep.fixed.revCoded = Disprep2.monsoonprep.fixed * -1.
EXECUTE.
if (Disprep2.monsoonprep.fixed.revCoded = -1) Disprep2.monsoonprep.fixed.revCoded = 4.
EXECUTE.
if (Disprep2.monsoonprep.fixed.revCoded = -2) Disprep2.monsoonprep.fixed.revCoded = 3.
EXECUTE.
if (Disprep2.monsoonprep.fixed.revCoded = -3) Disprep2.monsoonprep.fixed.revCoded = 2.
EXECUTE.
if (Disprep2.monsoonprep.fixed.revCoded = -4) Disprep2.monsoonprep.fixed.revCoded = 1.
EXECUTE.


compute Disprep1.futureEQ.revCoded = A.1K * -1.
EXECUTE.
if (Disprep1.futureEQ.revCoded = -1) Disprep1.futureEQ.revCoded = 4.
EXECUTE.
if (Disprep1.futureEQ.revCoded = -2) Disprep1.futureEQ.revCoded = 3.
EXECUTE.
if (Disprep1.futureEQ.revCoded = -3) Disprep1.futureEQ.revCoded = 2.
EXECUTE.
if (Disprep1.futureEQ.revCoded = -4) Disprep1.futureEQ.revCoded = 1.
EXECUTE.
compute disPrepSelfPerceptT3 =Disprep1.futureEQ.revCoded + Disprep2.monsoonprep.fixed.revCoded .
EXECUTE.
compute disPrepBehaviorsT3 = A_1.0 +A_2.0 +A_3.0 +A_4.0 +A_5+ A_6 +A_7 .
EXECUTE.
compute disPrepT3 = disPrepSelfPerceptT3 + disPrepBehaviorsT3.
EXECUTE.

RECODE A.B A.C A.D A.E A.F A.G A.H A.I A.J (4=3) (3=2) (2=1) (1=0).
EXECUTE.

COMPUTE phqT3=A.B+A.C+A.D+A.E+A.F+A.G+A.H+A.I+A.J.
EXECUTE.
COMPUTE phqMeanT3=MEAN(A.B,A.C,A.D,A.E,A.F,A.G,A.H,A.I,A.J).
EXECUTE.
COMPUTE phqMean6_T3=MEAN.6(A.B,A.C,A.D,A.E,A.F,A.G,A.H,A.I,A.J).
EXECUTE.

RECODE A.P (2=0).
EXECUTE.
compute ptsdT3 = A.R+ 
A.S+ 
A.T+ 
A.U+ 
A.V+ 
A.W+ 
A.X+ 
A.Y+ 
A.Z+ 
A.10+ 
A.11+ 
A.12+ 
A.13+ 
A.14+ 
A.15+ 
A.16+ 
A.17. 
EXECUTE.

COMPUTE ptsdMean11_T3 = MEAN.11(A.R,A.S,A.T,A.U,A.V,A.W,A.X,A.Y,A.Z,A.10,A.11,A.12,A.13,A.14,A.15,A.16,A.17).
EXECUTE.

COMPUTE ptsdMeanT3 = MEAN(A.R,A.S,A.T,A.U,A.V,A.W,A.X,A.Y,A.Z,A.10,A.11,A.12,A.13,A.14,A.15,A.16,A.17).
EXECUTE.
compute copingT3 = A.1G+
A.1H +
A.1I.
EXECUTE.
compute socialCohesionT3 = A.1P + Q105 + Q110 + Q109. 
EXECUTE.

recode HelpGivingMentalT3
HelpGivingDisT3 participatedT3 (2=0) (3=0).
EXECUTE.

Compute disasterAttribT3 =  disasterAttribNaturalT3 + disasterAttribGodT3 + diszasterAttribKarmaT3.
EXECUTE.
Compute disasterAttrib123_T3 = disasterAttrib1T3 + disasterAttrib2T3 + disasterAttrib3T3.
EXECUTE.




DATASET ACTIVATE DataSet5.
MATCH FILES /FILE=*
  /FILE='DataSet2'
  /RENAME (A.L A.P A.18 A.19 A.1E A.1F A.1J A.1L A.1V A.4 A.9 Q116 Q117 Q122 Q123 Q125 Q126 Q128 
    Q129 A.5 A.1G A.1W A.1K V9 V10 V6 LocationAccuracy LocationLatitude LocationLongitude A.A V8 V7 A.M 
    A.1I A.1X A A.Q A.O A.1O A.N A.1B A.2 A.1 A.21 A.3 A.R A.B A.6 A.10 A.K A.11 A.12 A.13 A.14 A.15 
    A.16 A.17 A.S A.1Y A.1H A_3 A_1 A_4 A_2 A.7 A.C A.T A.8 Q124 A.D A.U A_7 A_2.0 A_6 A_1.0 A_8 
    A_8_TEXT A_3.0 A_4.0 A_5 A.E A.V A.F A.W A.G A.X A.H A.Y A.I A.Z A.J = d0 d1 d2 d3 d4 d5 d6 d7 d8 
    d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 d25 d26 d27 d28 d29 d30 d31 d32 d33 
    d34 d35 d36 d37 d38 d39 d40 d41 d42 d43 d44 d45 d46 d47 d48 d49 d50 d51 d52 d53 d54 d55 d56 d57 d58 
    d59 d60 d61 d62 d63 d64 d65 d66 d67 d68 d69 d70 d71 d72 d73 d74 d75 d76 d77 d78 d79 d80 d81 d82 d83 
    d84 d85 d86 d87 d88 d89 d90) 
  /BY ID
  /DROP= d0 d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 d11 d12 d13 d14 d15 d16 d17 d18 d19 d20 d21 d22 d23 d24 
    d25 d26 d27 d28 d29 d30 d31 d32 d33 d34 d35 d36 d37 d38 d39 d40 d41 d42 d43 d44 d45 d46 d47 d48 d49 
    d50 d51 d52 d53 d54 d55 d56 d57 d58 d59 d60 d61 d62 d63 d64 d65 d66 d67 d68 d69 d70 d71 d72 d73 d74 
    d75 d76 d77 d78 d79 d80 d81 d82 d83 d84 d85 d86 d87 d88 d89 d90.
EXECUTE.
