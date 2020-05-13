#' Injury ECode Level 1
#'
#' @param col A column in PTOS data that typically starts with e_code
#'
#' @return It translations of the code into human friendly values.
#' @export
injury_lvl_1 <- function(col) {
  col_value <-  case.(col >= 0 & col  <= 0, 'External Cause Status',
                      col >= 1 & col  <= 30, 'Activity',
                      col >= 800 & col  <= 848, 'Transport Accidents',
                      col >= 800 & col  <= 807, 'Railway Accidents',
                      col >= 810 & col  <= 819, 'Motor Vehicle Traffic Accidents',
                      col >= 820 & col  <= 825, 'Motor Vehicle Nontraffic Accidents',
                      col >= 826 & col  <= 829, 'Other Road Vehicle Accidents',
                      col >= 830 & col  <= 838, 'Water Transport Accidents',
                      col >= 840 & col  <= 845, 'Air And Space Transport Accidents',
                      col >= 846 & col  <= 848, 'Vehicle Accidents Not Elsewhere Classifiable',
                      col >= 849 & col  <= 849, 'Place Of Occurrence',
                      col >= 850 & col  <= 858, 'Accidental Poisoning By Drugs, Medicinal Substances, And Biologicals',
                      col >= 860 & col  <= 869, 'Accidental Poisoning By Other Solid And Liquid Substances, Gases, And Vapors',
                      col >= 870 & col  <= 876, 'Misadventures To Patients During Surgical And Medical Care',
                      col >= 878 & col  <= 879, 'Surgical And Medical Procedures As The Cause Of Abnormal Reaction Of Patient Or Later Complication,Without Mention Of Misadventure At The Time Of Procedure',
                      col >= 880 & col  <= 888, 'Accidental Falls',
                      col >= 890 & col  <= 899, 'Accidents Caused By Fire And Flames',
                      col >= 900 & col  <= 909, 'Accidents Due To Natural And Environmental Factors',
                      col >= 910 & col  <= 915, 'Accidents Caused By Submersion, Suffocation, And Foreign Bodies',
                      col >= 916 & col  <= 928, 'Other Accidents',
                      col >= 929 & col  <= 929, 'Late Effects Of Accidental Injury',
                      col >= 930 & col  <= 949, 'Drugs, Medicinal And Biological Substances Causing Adverse Effects In Therapeutic Use',
                      col >= 950 & col  <= 959, 'Suicide And Self-Inflicted Injury',
                      col >= 960 & col  <= 969, 'Homicide And Injury Purposely Inflicted By Other Persons',
                      col >= 970 & col  <= 978, 'Legal Intervention',
                      col >= 979 & col  <= 979, 'Terrorism',
                      col >= 980 & col  <= 989, 'Injury Undetermined Whether Accidentally Or Purposely Inflicted',
                      col >= 990 & col  <= 999, 'Injury Resulting From Operations Of War',
                      default = "Unknown")
  return(col_value)
}
