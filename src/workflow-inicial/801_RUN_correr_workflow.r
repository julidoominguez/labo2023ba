# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/labo2023ba/src/workflow-inicial/811_CA_reparar_dataset.r")
source("~/labo2023ba/src/workflow-inicial/821_DR_corregir_drifting.r")
source("~/labo2023ba/src/workflow-inicial/831_FE_historia.r")
source("~/labo2023ba/src/workflow-inicial/841_TS_training_strategy.r")

# ultimos pasos, muy lentos
source("~/labo2023ba/src/workflow-inicial/851_HT_lightgbm.r")
source("~/labo2023ba/src/workflow-inicial/861_ZZ_final.r")
