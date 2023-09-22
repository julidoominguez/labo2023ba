# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/labo2023ba/src/workflow-inicial/6111_CA_reparar_dataset.r")
source("~/labo2023ba/src/workflow-inicial/6211_DR_corregir_drifting.r")
source("~/labo2023ba/src/workflow-inicial/6311_FE_historia.r")
source("~/labo2023ba/src/workflow-inicial/6411_TS_training_strategy.r")

# ultimos pasos, muy lentos
source("~/labo2023ba/src/workflow-inicial/6511_HT_lightgbm.r")
source("~/labo2023ba/src/workflow-inicial/6611_ZZ_final.r")
