
#### Statistical analysis code for self-control cases series

library(SCCS)

# 1. Estimating the incidence rate ratios for MG onset following statin therapy

mod1_onset <- standardsccs(event~initiate, indiv=patient_pssn, astart=start, aend=end, aevent=age_onset,
                           adrug=initiate, aedrug=initiate+24, expogrp = c(0,1,4,7,13,19),
                           data=data_onset)
mod1_onset

# 2. Estimating the incidence rate ratios for exacerbation of pre-existing MG following statin therapy

mod2_exacerbate <- standardsccs(event~initiate, indiv=patient_pssn, astart=start_dx, aend=end_death, aevent=age_exacerbate,
                           adrug=initiate, aedrug=initiate+24, expogrp = c(0,1,4,7,13,19),
                           data=data_exacerbate)
mod2_exacerbate

