# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Perform noncompartmental analysis (NCA) calculations for pharmacokinetic (PK) data Use PKNCA With (In) R Software
# Estimation Perform noncompartmental analysis (NCA) calculations for pharmacokinetic (PK) data Use PKNCA With (In) R Software
# Install the package
install.packages("PKNCA")
install.packages("dplyr")
# Load the package
library(PKNCA)
library(dplyr, quietly=TRUE)
# Set the business rule options with the PKNCA.options() function
# Load your concentration-time data
conc_raw <- read.csv("https://raw.githubusercontent.com/timbulwidodostp/PKNCA/main/PKNCA/d_conc_both.csv",sep = ";", stringsAsFactors=FALSE)
# Load your dose data
dose_raw <- read.csv("https://raw.githubusercontent.com/timbulwidodostp/PKNCA/main/PKNCA/d_dose_both.csv",sep = ";", stringsAsFactors=FALSE)
# Put your concentration data into a PKNCAconc object
o_conc <- PKNCAconc(data=conc_raw, formula=conc~Time|Study+Subject/Analyte)
# Put your dose data into a PKNCAdose object
o_dose <- PKNCAdose(data=dose_raw, formula=Dose~Time|Study+Subject)
# Combine the two (and automatically determine the intervals of
# interest
o_data <- PKNCAdata(o_conc, o_dose)
# Compute the NCA parameters
o_results <- pk.nca(o_data)
# Summarize the results
summary(o_results)
# Perform noncompartmental analysis (NCA) calculations for pharmacokinetic (PK) data Use PKNCA With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished