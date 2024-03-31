
//********************* Target trial emulation ****************//


** Estimating the hazard ratio for MG onset: statin initiators vs. non-initiators

logit onset i1.statin_initiate#ibn.interval gender age_bl ldl_c_bl charlson_index_bl dm_b4 hypertension_b4 CTD_b4 amino_b4 fluo_b4 b_blocker_b4 ccb_b4 if time<=fup_onset_obs, cluster(id_seq) or


** Estimating the hazard ratio for exacerbation of pre-existing MG: statin initiators vs. non-initiators

logit exacerbate i1.statin_initiate#ibn.interval gender age_bl ldl_c_bl charlson_index_bl dm_b4 hypertension_b4 CTD_b4 amino_b4 fluo_b4 b_blocker_b4 ccb_b4 if time<=fup_exacerbate_obs, cluster(id_seq) or
