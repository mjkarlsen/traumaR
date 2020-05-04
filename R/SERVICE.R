#' Service or Specialty (Not the same as surgical speciality)
#'
#' @param col A column typically ends with "_serv"
#'
#' @return It translations of the code into human friendly values.
#'
service <- function(col) {
  col_value <-  case.(col == 0,    'None',
                      col == 1,    'Trauma',
                      col == 2,    'Neurosurgery',
                      col == 3,    'Orthopedics',
                      col == 4,    'Thoracic Surgery',
                      col == 5,    'Vascular Surgery',
                      col == 6,    'Pediatrics',
                      col == 7,    'Oromaxillo Facial Service',
                      col == 8,    'OB/GYN',
                      col == 9,    'Burn Services',
                      col == 10,    'Cardiology',
                      col == 11,    'Cardiothoracic Surgery',
                      col == 12,    'Drug/Alcohol Counselor',
                      col == 13,    'ENT',
                      col == 14,    'Family Medicine',
                      col == 15,    'General Surgery',
                      col == 16,    'Infectious Disease',
                      col == 17,    'Internal Medicine',
                      col == 18,    'Nephrology',
                      col == 19,    'Neurology',
                      col == 20,    'Nutrition',
                      col == 21,    'Occupational Therapy',
                      col == 22,    'Ophthalmology',
                      col == 23,    'Oral Surgery',
                      col == 24,    'Physiatry',
                      col == 25,    'Physical Therapy',
                      col == 26,    'Plastic Surgery',
                      col == 27,    'Psychiatry',
                      col == 28,    'Pulmonary',
                      col == 29,    'Social Services',
                      col == 30,    'Speech Therapy',
                      col == 31,    'Urology',
                      col == 32,    'Case Management',
                      col == 33,    'Palliative Care',
                      col == 34,    'Pastoral Care',
                      col == 35,    'Geriatrics/Gerontology',
                      col == 99,    'Other',
                      default = NA)
  return(col_value)
}
