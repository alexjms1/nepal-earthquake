set more off
/// X = intervention, M = disaster prep, Y = PHQ
bootstrap indir=(_b[disPrepBehaviorsT:1.interventionT]*_b[phqMean6_T:disPrepBehaviorsT]),  strata(T1Citycode) cluster(ID) reps(5000): ///
		  gsem (disPrepBehaviorsT <- i.interventionT i.timePointZerod M1[ID] ,  nocapslatent) (phqMean6_T <- disPrepBehaviorsT  i.timePointZerod i.interventionT M2[ID],    ///
nocapslatent) if T2Interventionparticipant == 1 | T3Interventionparticipant == 1 ,  latent(M1 M2) cov(M1[ID]*M2[ID]@0)
estat bootstrap
gsem (disPrepBehaviorsT <- i.interventionT i.timePointZerod M1[ID] ,  nocapslatent) (phqMean6_T <- disPrepBehaviorsT  i.timePointZerod i.interventionT M2[ID],    ///
nocapslatent) if T2Interventionparticipant == 1 | T3Interventionparticipant == 1 ,  latent(M1 M2) cov(M1[ID]*M2[ID]@0)

/// X = intervention, M = disaster prep, Y = PTSD
bootstrap indir=(_b[disPrepBehaviorsT:1.interventionT]*_b[ptsdMean11_T:disPrepBehaviorsT]),  strata(T1Citycode) cluster(ID) reps(5000): ///
		  gsem (disPrepBehaviorsT <- i.interventionT i.timePointZerod M1[ID] ,  nocapslatent) (ptsdMean11_T <- disPrepBehaviorsT  i.timePointZerod i.interventionT M2[ID],    ///
nocapslatent) if T2Interventionparticipant == 1 | T3Interventionparticipant == 1 ,  latent(M1 M2) cov(M1[ID]*M2[ID]@0)
estat bootstrap
gsem (disPrepBehaviorsT <- i.interventionT i.timePointZerod M1[ID] ,  nocapslatent) (ptsdMean11_T <- disPrepBehaviorsT  i.timePointZerod i.interventionT M2[ID],    ///
nocapslatent) if T2Interventionparticipant == 1 | T3Interventionparticipant == 1 ,  latent(M1 M2) cov(M1[ID]*M2[ID]@0)

/// X = intervention, M = PHQ, Y = disaster prep
bootstrap indir=(_b[phqMean6_T:1.interventionT]*_b[disPrepBehaviorsT:phqMean6_T]),  strata(T1Citycode) cluster(ID) reps(5000): ///
		  gsem (phqMean6_T <- i.interventionT i.timePointZerod M1[ID] ,  nocapslatent) (disPrepBehaviorsT <- phqMean6_T  i.timePointZerod i.interventionT M2[ID],    ///
nocapslatent) if T2Interventionparticipant == 1 | T3Interventionparticipant == 1 ,  latent(M1 M2) cov(M1[ID]*M2[ID]@0)
estat bootstrap
gsem (phqMean6_T <- i.interventionT i.timePointZerod M1[ID] ,  nocapslatent) (disPrepBehaviorsT <- phqMean6_T  i.timePointZerod i.interventionT M2[ID],    ///
nocapslatent) if T2Interventionparticipant == 1 | T3Interventionparticipant == 1 ,  latent(M1 M2) cov(M1[ID]*M2[ID]@0)

/// X = intervention, M = PTSD, Y = disaster prep
bootstrap indir=(_b[ptsdMean11_T:1.interventionT]*_b[disPrepBehaviorsT:ptsdMean11_T]),  strata(T1Citycode) cluster(ID) reps(5000): ///
		  gsem (ptsdMean11_T <- i.interventionT i.timePointZerod M1[ID] ,  nocapslatent) (disPrepBehaviorsT <- ptsdMean11_T  i.timePointZerod i.interventionT M2[ID],    ///
nocapslatent) if T2Interventionparticipant == 1 | T3Interventionparticipant == 1 ,  latent(M1 M2) cov(M1[ID]*M2[ID]@0)
estat bootstrap
gsem (ptsdMean11_T <- i.interventionT i.timePointZerod M1[ID] ,  nocapslatent) (disPrepBehaviorsT <- ptsdMean11_T  i.timePointZerod i.interventionT M2[ID],    ///
nocapslatent) if T2Interventionparticipant == 1 | T3Interventionparticipant == 1 ,  latent(M1 M2) cov(M1[ID]*M2[ID]@0)

/// X = intervention, M = social cohesion, Y = disaster prep
bootstrap indir=(_b[socialCohesionT:1.interventionT]*_b[disPrepBehaviorsT:socialCohesionT]),  strata(T1Citycode) cluster(ID) reps(5000): ///
		  gsem (socialCohesionT <- i.interventionT i.timePointZerod M1[ID] ,  nocapslatent) (disPrepBehaviorsT <- socialCohesionT  i.timePointZerod i.interventionT M2[ID],    ///
nocapslatent) if T2Interventionparticipant == 1 | T3Interventionparticipant == 1 ,  latent(M1 M2) cov(M1[ID]*M2[ID]@0)
estat bootstrap
gsem (socialCohesionT <- i.interventionT i.timePointZerod M1[ID] ,  nocapslatent) (disPrepBehaviorsT <- socialCohesionT  i.timePointZerod i.interventionT M2[ID],    ///
nocapslatent) if T2Interventionparticipant == 1 | T3Interventionparticipant == 1 ,  latent(M1 M2) cov(M1[ID]*M2[ID]@0)

/// X = intervention, M = social cohesion, Y = PHQ
bootstrap indir=(_b[socialCohesionT:1.interventionT]*_b[phqMean6_T:socialCohesionT]),  strata(T1Citycode) cluster(ID) reps(5000): ///
		  gsem (socialCohesionT <- i.interventionT i.timePointZerod M1[ID] ,  nocapslatent) (phqMean6_T <- socialCohesionT  i.timePointZerod i.interventionT M2[ID],    ///
nocapslatent) if T2Interventionparticipant == 1 | T3Interventionparticipant == 1 ,  latent(M1 M2) cov(M1[ID]*M2[ID]@0)
estat bootstrap
gsem (socialCohesionT <- i.interventionT i.timePointZerod M1[ID] ,  nocapslatent) (phqMean6_T <- socialCohesionT  i.timePointZerod i.interventionT M2[ID],    ///
nocapslatent) if T2Interventionparticipant == 1 | T3Interventionparticipant == 1 ,  latent(M1 M2) cov(M1[ID]*M2[ID]@0)

/// X = intervention, M = social cohesion, Y = PTSD
bootstrap indir=(_b[socialCohesionT:1.interventionT]*_b[ptsdMean11_T:socialCohesionT]),  strata(T1Citycode) cluster(ID) reps(5000): ///
		  gsem (socialCohesionT <- i.interventionT i.timePointZerod M1[ID] ,  nocapslatent) (ptsdMean11_T <- socialCohesionT  i.timePointZerod i.interventionT M2[ID],    ///
nocapslatent) if T2Interventionparticipant == 1 | T3Interventionparticipant == 1 ,  latent(M1 M2) cov(M1[ID]*M2[ID]@0)
estat bootstrap
gsem (socialCohesionT <- i.interventionT i.timePointZerod M1[ID] ,  nocapslatent) (ptsdMean11_T <- socialCohesionT  i.timePointZerod i.interventionT M2[ID],    ///
nocapslatent) if T2Interventionparticipant == 1 | T3Interventionparticipant == 1 ,  latent(M1 M2) cov(M1[ID]*M2[ID]@0)

