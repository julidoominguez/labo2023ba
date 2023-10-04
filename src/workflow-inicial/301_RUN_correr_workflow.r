# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workfloww

# primeros pasos, relativamente rapidos
source("~/labo2023ba/src/workflow-inicial/311_CA_reparar_dataset.r")
source("~/labo2023ba/src/workflow-inicial/321_DR_corregir_drifting.r")
source("~/labo2023ba/src/workflow-inicial/331_FE_historia.r")
source("~/labo2023ba/src/workflow-inicial/341_TS_training_strategy.r")

# ultimos pasos, muy lentos
source("~/labo2023ba/src/workflow-inicial/351_HT_lightgbm.r")
source("~/labo2023ba/src/workflow-inicial/361_ZZ_final.r")
