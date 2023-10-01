# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/labo2023ba/src/workflow-inicial/911_CA_reparar_dataset.r")
source("~/labo2023ba/src/workflow-inicial/921_DR_corregir_drifting.r")
source("~/labo2023ba/src/workflow-inicial/931_FE_historia.r")
source("~/labo2023ba/src/workflow-inicial/941_TS_training_strategy.r")

# ultimos pasos, muy lentos
source("~/labo2023ba/src/workflow-inicial/951_HT_lightgbm.r")
source("~/labo2023ba/src/workflow-inicial/961_ZZ_final.r")
