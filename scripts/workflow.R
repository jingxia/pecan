#-------------------------------------------------------------------------------
# Copyright (c) 2012 University of Illinois, NCSA.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the 
# University of Illinois/NCSA Open Source License
# which accompanies this distribution, and is available at
# http://opensource.ncsa.illinois.edu/license.html
#-------------------------------------------------------------------------------
#---------------- Load libraries. -----------------------------------------------------------------#
require(PEcAn.all)
#--------------------------------------------------------------------------------------------------#

#---------------- Load PEcAn settings file. -------------------------------------------------------#
# Open and read in settings file for PEcAn run.
settings <- read.settings()
#--------------------------------------------------------------------------------------------------#

#---------------- Run PEcAn workflow. -------------------------------------------------------------#
# Query the trait database for data and priors
get.trait.data()

# Run the PEcAn meta.analysis
run.meta.analysis()

# Calls model specific write.configs e.g. write.config.ed.R
run.write.configs(settings$model$name, settings$bety$write)

# Clear any old model output in ebi-cluster scratch/$USER on worker nodes
clear.scratch(settings)

# Start ecosystem model runs
start.model.runs(settings$model$name, settings$bety$write)

# Get results of model runs
get.model.output(settings$model$name, settings)

# Run sensitivity analysis and variance decomposition on model output
run.sensitivity.analysis()

# Run ensemble analysis on model output. 
run.ensemble.analysis()

# OPTIONAL: to get an esemble time-series output for the target variables set in the PEcAn.xml file
#run.ensemble.analysis(plot.timeseries=TRUE)

### PEcAn workflow run complete
print("---------- PEcAn Workflow Complete ----------")
#--------------------------------------------------------------------------------------------------#
