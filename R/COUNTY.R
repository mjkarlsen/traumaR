#' The county of Pennsylvania in which the injury event took place
#'
#' @param col Indicate the county or state in which the injury took place using the 2 digit codes  provided.
#'
#' @return  State or County translation
#' @export
#'
county <- function(col) {
  col_value <-  case.(col == 1 , 'Adams' ,
                      col == 2 , 'Allegheny' ,
                      col == 3 , 'Armstrong' ,
                      col == 4 , 'Beaver' ,
                      col == 5 , 'Bedford' ,
                      col == 6 , 'Berks' ,
                      col == 7 , 'Blair' ,
                      col == 8 , 'Bradford' ,
                      col == 9 , 'Bucks' ,
                      col == 10 , 'Butler' ,
                      col == 11 , 'Cambria' ,
                      col == 12 , 'Cameron' ,
                      col == 13 , 'Carbon' ,
                      col == 14 , 'Centre' ,
                      col == 15 , 'Chester' ,
                      col == 16 , 'Clarion' ,
                      col == 17 , 'Clearfield' ,
                      col == 18 , 'Clinton' ,
                      col == 19 , 'Columbia' ,
                      col == 20 , 'Crawford' ,
                      col == 21 , 'Cumberland' ,
                      col == 22 , 'Dauphin' ,
                      col == 23 , 'Delaware' ,
                      col == 24 , 'Elk' ,
                      col == 25 , 'Erie' ,
                      col == 26 , 'Fayette' ,
                      col == 27 , 'Forest' ,
                      col == 28 , 'Franklin' ,
                      col == 29 , 'Fulton' ,
                      col == 30 , 'Greene' ,
                      col == 31 , 'Huntingdon' ,
                      col == 32 , 'Indiana' ,
                      col == 33 , 'Jefferson' ,
                      col == 34 , 'Juniata' ,
                      col == 35 , 'Lackawanna' ,
                      col == 36 , 'Lancaster' ,
                      col == 37 , 'Lawrence' ,
                      col == 38 , 'Lebanon' ,
                      col == 39 , 'Lehigh' ,
                      col == 40 , 'Luzerne' ,
                      col == 41 , 'Lycoming' ,
                      col == 42 , 'McKean' ,
                      col == 43 , 'Mercer' ,
                      col == 44 , 'Mifflin' ,
                      col == 45 , 'Monroe' ,
                      col == 46 , 'Montgomery' ,
                      col == 47 , 'Montour' ,
                      col == 48 , 'Northhampton' ,
                      col == 49 , 'Northumberland' ,
                      col == 50 , 'Perry' ,
                      col == 51 , 'Philadelphia' ,
                      col == 52 , 'Pike' ,
                      col == 53 , 'Potter' ,
                      col == 54 , 'Schuylkill' ,
                      col == 55 , 'Snyder' ,
                      col == 56 , 'Somerset' ,
                      col == 57 , 'Sullivan' ,
                      col == 58 , 'Susquehanna' ,
                      col == 59 , 'Tioga' ,
                      col == 60 , 'Union' ,
                      col == 61 , 'Venango' ,
                      col == 62 , 'Warren' ,
                      col == 63 , 'Washington' ,
                      col == 64 , 'Wayne' ,
                      col == 65 , 'Westmoreland' ,
                      col == 66 , 'Wyoming' ,
                      col == 67 , 'York' ,
                      col == 68 , 'Delaware' ,
                      col == 69 , 'Maryland' ,
                      col == 70 , 'New Jersey' ,
                      col == 71 , 'New York' ,
                      col == 72 , 'Ohio' ,
                      col == 73 , 'West Virginia' ,
                      col == 74 , 'Other State' ,
                      col == 75 , 'Virginia' ,
                      col == 79 , 'Other Country' ,
                      default = 'Unknown'
  )
  return(col_value)
}
