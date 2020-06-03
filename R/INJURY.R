#' Injury ECode Descriptions
#'
#' @param col A column in PTOS data that typically starts with e_code
#'
#' @return It translations of the code into human friendly values.
#' @export

# injury_lvl_0 <- function(col) {
#   col_value <- case.(col == 'Motor Vehicle Traffic Accidents', col,
#                      col == 'Accidental Falls', col,
#                      col == 'Other Accidents', col,
#                      col == 'Homicide and Injury Purposely Inflicted By Other Persons', col,
#                      col == 'Motor Vehicle Nontraffic Accidents', col,
#                      default = 'Other Injuries' )
# }


injury_lvl_1 <- function(col) {
  col_value <-  case.(col >= 0 & col  < 1, 'External Cause Status',
                      col >= 1 & col  < 800, 'Activity',
                      col >= 800 & col  < 800, 'Transport Accidents',
                      col >= 800 & col  < 810, 'Railway Accidents',
                      col >= 810 & col  < 820, 'Motor Vehicle Traffic Accidents',
                      col >= 820 & col  < 826, 'Motor Vehicle Nontraffic Accidents',
                      col >= 826 & col  < 830, 'Other Road Vehicle Accidents',
                      col >= 830 & col  < 840, 'Water Transport Accidents',
                      col >= 840 & col  < 846, 'Air And Space Transport Accidents',
                      col >= 846 & col  < 849, 'Vehicle Accidents Not Elsewhere Classifiable',
                      col >= 849 & col  < 850, 'Place Of Occurrence',
                      col >= 850 & col  < 860, 'Accidental Poisoning By Drugs, Medicinal Substances, And Biologicals',
                      col >= 860 & col  < 870, 'Accidental Poisoning By Other Solid And Liquid Substances, Gases, And Vapors',
                      col >= 870 & col  < 878, 'Misadventures To Patients During Surgical And Medical Care',
                      col >= 878 & col  < 880, 'Surgical And Medical Procedures As The Cause Of Abnormal Reaction Of Patient Or Later Complication,Without Mention Of Misadventure At The Time Of Procedure',
                      col >= 880 & col  < 890, 'Accidental Falls',
                      col >= 890 & col  < 900, 'Accidents Caused By Fire And Flames',
                      col >= 900 & col  < 910, 'Accidents Due To Natural And Environmental Factors',
                      col >= 910 & col  < 916, 'Accidents Caused By Submersion, Suffocation, And Foreign Bodies',
                      col >= 916 & col  < 929, 'Other Accidents',
                      col >= 929 & col  < 930, 'Late Effects Of Accidental Injury',
                      col >= 930 & col  < 950, 'Drugs, Medicinal And Biological Substances Causing Adverse Effects In Therapeutic Use',
                      col >= 950 & col  < 960, 'Suicide And Self-Inflicted Injury',
                      col >= 960 & col  < 970, 'Homicide And Injury Purposely Inflicted By Other Persons',
                      col >= 970 & col  < 979, 'Legal Intervention',
                      col >= 979 & col  < 980, 'Terrorism',
                      col >= 980 & col  < 990, 'Injury Undetermined Whether Accidentally Or Purposely Inflicted',
                      col >= 990 & col  <= 999, 'Injury Resulting From Operations Of War',

                      default = "Unknown")
  return(col_value)
}

