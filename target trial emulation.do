
**** Statistical analysis code for target trial emulation
**** Description: Pooled logistical models in target trial emulation to estimate the association between statin therapy and the incidence of MG onset or exacerbation
**** Software: Stata/MP 17.0 (StataCorp LLC, College Station, Texas 77845 USA).


** 1. Estimating the hazard ratio for MG onset: statin initiators vs. non-initiators

// Factor variable to define the risk windows

gen interval=.
replace interval=0 if time==0
replace interval=1 if time>=1 & time<=3
replace interval=2 if time>=4 & time<=6
replace interval=3 if time>=7 & time<=12
replace interval=4 if time>=13 & time<=18
replace interval=5 if time>=19 & time<=24

// Model for causal estimates (Intention-to-treat analysis)

logit onset i1.statin_initiate#ibn.interval sex age_bl ldl_c_bl charlson_index_bl dm_bl hypertension_bl CTD_bl amino_bl fluo_bl b_blocker_bl ccb_bl if time<=fup_onset_obs, cluster(id_seq) or


** 2. Estimating the hazard ratio for exacerbation of pre-existing MG: statin initiators vs. non-initiators

// Factor variable to define the risk windows

gen interval=.
replace interval=0 if time==0
replace interval=1 if time>=1 & time<=3
replace interval=2 if time>=4 & time<=6
replace interval=3 if time>=7 & time<=12
replace interval=4 if time>=13 & time<=18
replace interval=5 if time>=19 & time<=24

// Model for causal estimates (Intention-to-treat analysis)

logit exacerbate i1.statin_initiate#ibn.interval sex age_bl ldl_c_bl charlson_index_bl dm_bl hypertension_bl CTD_bl amino_bl fluo_bl b_blocker_bl ccb_bl if time<=fup_exacerbate_obs, cluster(id_seq) or
