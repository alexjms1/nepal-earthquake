reshape long interventionT distressT disMH_T disAttribNaturalT disAttribGodT disAttribKarmaT HelpSeekingMentalT HelpSeekingDisT HelpGivingMentalT HelpGivingDisT disPrepBehaviorsT disPrepSelfPerceptT copingPuja_T copingCalming_T copingSubuse_T phqT ptsdT socialCohesionT chronicStressorsT ptsdMean11_T ptsdMeanT phqMean6_T phqMeanT, i(ID) j(timePoint 1 2 3)
generate timePointZerod = timePoint - 1
label define cityLabel 0 "Chhaling" 1 "Tathali"
label define treatmentLabel 0 "Control" 1 "Intervention"
label values T1Citycode cityLabel 
label values T2Citycode cityLabel 
label values T3Citycode cityLabel 
label values interventionT treatmentLabel 