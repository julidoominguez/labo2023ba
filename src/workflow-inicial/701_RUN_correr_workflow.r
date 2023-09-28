# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/labo2023ba/src/workflow-inicial/711_CA_reparar_dataset.r")
source("~/labo2023ba/src/workflow-inicial/721_DR_corregir_drifting.r")
source("~/labo2023ba/src/workflow-inicial/731_FE_historia.r")
source("~/labo2023ba/src/workflow-inicial/741_TS_training_strategy.r")

# ultimos pasos, muy lentos
source("~/labo2023ba/src/workflow-inicial/751_HT_lightgbm.r")
source("~/labo2023ba/src/workflow-inicial/761_ZZ_final.r")
