# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/labo2023ba/src/workflow-inicial/61111_CA_reparar_dataset.r")
source("~/labo2023ba/src/workflow-inicial/62111_DR_corregir_drifting.r")
source("~/labo2023ba/src/workflow-inicial/63111_FE_historia.r")
source("~/labo2023ba/src/workflow-inicial/64111_TS_training_strategy.r")

# ultimos pasos, muy lentos
source("~/labo2023ba/src/workflow-inicial/65111_HT_lightgbm.r")
source("~/labo2023ba/src/workflow-inicial/66111_ZZ_final.r")
