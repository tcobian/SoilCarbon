ghg<- function(element, kg){
 # What you will have to put in the function, ghg("elemnt", kg = ) 
  if(element == "C"){return(3.077*kg)} # Conversionn from kgC to kgCO2e
  
  else if(element == "N2O"){return(416.429*kg)} # Conversion from kgN to KkgCO2e
  
  else if (element == "CH4"){return(37.333*kg)} # Conversion from kgC to kgCO2e
  
  else {return("Can only convert CH4, N2O, and C, in units of kg to units of kgCO2e. CH4 is measured in units of kgC, N2O in units of kgN, and C in units of kgC")} # Error checking fro anything that is not C, CH4, or N2O
}


