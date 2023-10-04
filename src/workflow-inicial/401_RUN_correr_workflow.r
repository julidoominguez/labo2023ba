# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workfloww

# primeros pasos, relativamente rapidos
source("~/labo2023ba/src/workflow-inicial/411_CA_reparar_dataset.r")
source("~/labo2023ba/src/workflow-inicial/421_DR_corregir_drifting.r")
source("~/labo2023ba/src/workflow-inicial/431_FE_historia.r")
source("~/labo2023ba/src/workflow-inicial/441_TS_training_strategy.r")

# ultimos pasos, muy lentos
source("~/labo2023ba/src/workflow-inicial/451_HT_lightgbm.r")
source("~/labo2023ba/src/workflow-inicial/461_ZZ_final.r")
