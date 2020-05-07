
<!-- README.md is generated from README.Rmd. Please edit that file -->

# traumaR <img src='man/figures/logo.png' align="right" height="139" />

<!-- badges: start -->

[![](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

The goal of traumaR is to provide users with human friendly results in a
normalized format.

## Installation

You can install the released version of traumaR from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("traumaR")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("ultramattyice/traumaR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(traumaR)
library(kableExtra)

raw_data <- data.table::fread("E:/Northwestern/12 - Capstone/PTOS_Toy.csv", na.strings = c("<unk>", "", "<n/a>"))

traumaR::run_full_show(raw_data)
```

### Example of Patient Data Output

``` r
patient_df %>% 
  head(10) %>% 
  kable() %>% 
  kable_styling() %>% 
  scroll_box(width = "300px", height = "100px")
```

<div style="border: 1px solid #ddd; padding: 0px; overflow-y: scroll; height:100px; overflow-x: scroll; width:300px; ">

<table class="table" style="margin-left: auto; margin-right: auto;">

<thead>

<tr>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

id

</th>

<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">

trauma\_number

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

date\_of\_birth

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

age\_in\_yrs

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

sex

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

race

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

patient\_county

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

zip\_code

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

payor\_class\_primary

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

pay\_cat1\_o

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

primary\_injury\_type

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

injury\_dt

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

injury\_tm\_s

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

cause\_of\_injury\_e\_code

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

place\_of\_injury

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

fall\_height

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

was\_the\_patient\_extricated

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

scene\_gcs\_eye

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

scene\_gcs\_verbal

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

scene\_gcs\_motor

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

transport\_gcs\_eye

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

transport\_gcs\_verbal

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

transport\_gcs\_motor

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

interhospital\_transport\_gcs\_eye

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

interhospital\_transport\_gcs\_verbal

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

interhospital\_transport\_gcs\_motor

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

referring\_facility\_gcs\_eye

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

referring\_facility\_gcs\_verbal

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

referring\_facility\_gcs\_motor

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

admission\_gcs\_eye

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

admission\_gcs\_verbal

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

admission\_gcs\_motor

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

fasciotomy\_dt

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

fasciotomy\_time

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

fasciotomy\_loc

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

fasciotomy\_cd

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

fasciotomy\_desc

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

forearm\_fx\_dt

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

forearm\_fx\_time

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

forearm\_fx\_loc

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

forearm\_fx\_cd

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

forearm\_fx\_desc

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

code\_cd\_complication

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

code\_cd\_diagnosis

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

code\_cd\_procedure

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

code\_desc\_complication

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

code\_desc\_diagnosis

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

code\_desc\_procedure

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

fltr\_diagnosis

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

fltr\_procedure

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

fltr\_complication

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

fltr\_fasciotomy

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

0123198320000011

</td>

<td style="text-align:right;">

20000011

</td>

<td style="text-align:left;">

01/23/1983

</td>

<td style="text-align:left;">

16

</td>

<td style="text-align:left;">

MALE

</td>

<td style="text-align:left;">

Black

</td>

<td style="text-align:left;">

Delaware

</td>

<td style="text-align:left;">

19373

</td>

<td style="text-align:left;">

Commercial Insurer Indemnity

</td>

<td style="text-align:left;">

PRISON HEALTH C25

</td>

<td style="text-align:left;">

Blunt

</td>

<td style="text-align:left;">

01/23/1983

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

Fight/Brawl/Rape - Unarmed Fight or Brawl

</td>

<td style="text-align:left;">

Residential Institution

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

NO

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Spontaneous

</td>

<td style="text-align:left;">

Oriented

</td>

<td style="text-align:left;">

Obeys Command

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

</tr>

<tr>

<td style="text-align:left;">

0208197920000001

</td>

<td style="text-align:right;">

20000001

</td>

<td style="text-align:left;">

02/08/1979

</td>

<td style="text-align:left;">

20

</td>

<td style="text-align:left;">

MALE

</td>

<td style="text-align:left;">

White

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

Commercial Insurer Indemnity

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

Blunt

</td>

<td style="text-align:left;">

02/08/1979

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

Oth MVA Traffic, Highway Collision - Driver of MV, Non MC

</td>

<td style="text-align:left;">

Street/Highway

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

NO

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Spontaneous

</td>

<td style="text-align:left;">

Oriented

</td>

<td style="text-align:left;">

Obeys Command

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

</tr>

<tr>

<td style="text-align:left;">

0527195820000003

</td>

<td style="text-align:right;">

20000003

</td>

<td style="text-align:left;">

05/27/1958

</td>

<td style="text-align:left;">

41

</td>

<td style="text-align:left;">

MALE

</td>

<td style="text-align:left;">

White

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

18914

</td>

<td style="text-align:left;">

Commercial Insurer Indemnity

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

Blunt

</td>

<td style="text-align:left;">

05/27/1958

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

Oth MVA Traffic, Highway Collision - Driver of MV, Non MC

</td>

<td style="text-align:left;">

Street/Highway

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

UNK

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Spontaneous

</td>

<td style="text-align:left;">

Oriented

</td>

<td style="text-align:left;">

Obeys Command

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

</tr>

<tr>

<td style="text-align:left;">

031219782000018

</td>

<td style="text-align:right;">

2000018

</td>

<td style="text-align:left;">

03/12/1978

</td>

<td style="text-align:left;">

21

</td>

<td style="text-align:left;">

FEMALE

</td>

<td style="text-align:left;">

White

</td>

<td style="text-align:left;">

Allegheny

</td>

<td style="text-align:left;">

15025

</td>

<td style="text-align:left;">

Commercial Insurer Indemnity

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

Blunt

</td>

<td style="text-align:left;">

03/12/1978

</td>

<td style="text-align:left;">

03:00

</td>

<td style="text-align:left;">

MVA Traffic, Loss Control-No Collision - Driver of MV, Non MC

</td>

<td style="text-align:left;">

Street/Highway

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

NO

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

None

</td>

<td style="text-align:left;">

Incomprehensible Sounds

</td>

<td style="text-align:left;">

Withdraws

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

</tr>

<tr>

<td style="text-align:left;">

1104196520000006

</td>

<td style="text-align:right;">

20000006

</td>

<td style="text-align:left;">

11/04/1965

</td>

<td style="text-align:left;">

34

</td>

<td style="text-align:left;">

MALE

</td>

<td style="text-align:left;">

White

</td>

<td style="text-align:left;">

Lawrence

</td>

<td style="text-align:left;">

16112

</td>

<td style="text-align:left;">

Self Pay

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

Blunt

</td>

<td style="text-align:left;">

11/04/1965

</td>

<td style="text-align:left;">

00:01

</td>

<td style="text-align:left;">

MVA Traffic, Collision w/ Pedestrian - Pedestrian

</td>

<td style="text-align:left;">

Street/Highway

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

NO

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Spontaneous

</td>

<td style="text-align:left;">

Oriented

</td>

<td style="text-align:left;">

Obeys Command

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

</tr>

<tr>

<td style="text-align:left;">

1016197220000017

</td>

<td style="text-align:right;">

20000017

</td>

<td style="text-align:left;">

10/16/1972

</td>

<td style="text-align:left;">

27

</td>

<td style="text-align:left;">

MALE

</td>

<td style="text-align:left;">

White

</td>

<td style="text-align:left;">

Allegheny

</td>

<td style="text-align:left;">

15601

</td>

<td style="text-align:left;">

Self Pay

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

Blunt

</td>

<td style="text-align:left;">

10/16/1972

</td>

<td style="text-align:left;">

23:30

</td>

<td style="text-align:left;">

Suicide/Self Injury - Oth Spec Means

</td>

<td style="text-align:left;">

Public Building

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

NO

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

None

</td>

<td style="text-align:left;">

None

</td>

<td style="text-align:left;">

None

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

</tr>

<tr>

<td style="text-align:left;">

0903192820000007

</td>

<td style="text-align:right;">

20000007

</td>

<td style="text-align:left;">

09/03/1928

</td>

<td style="text-align:left;">

71

</td>

<td style="text-align:left;">

FEMALE

</td>

<td style="text-align:left;">

Black

</td>

<td style="text-align:left;">

Philadelphia

</td>

<td style="text-align:left;">

19096

</td>

<td style="text-align:left;">

Medicare Indemnity

</td>

<td style="text-align:left;">

Medicare

</td>

<td style="text-align:left;">

Blunt

</td>

<td style="text-align:left;">

09/03/1928

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

Fall on Same Level - Other

</td>

<td style="text-align:left;">

Home

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

NO

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Spontaneous

</td>

<td style="text-align:left;">

Confused

</td>

<td style="text-align:left;">

Localizes pain

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

01/02/2000

</td>

<td style="text-align:left;">

13:49

</td>

<td style="text-align:left;">

OR

</td>

<td style="text-align:left;">

79.32

</td>

<td style="text-align:left;">

Op red-int fix rad/ulna

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

</tr>

<tr>

<td style="text-align:left;">

0401197920000008

</td>

<td style="text-align:right;">

20000008

</td>

<td style="text-align:left;">

04/01/1979

</td>

<td style="text-align:left;">

20

</td>

<td style="text-align:left;">

MALE

</td>

<td style="text-align:left;">

White

</td>

<td style="text-align:left;">

Philadelphia

</td>

<td style="text-align:left;">

19036

</td>

<td style="text-align:left;">

Commercial Insurer Indemnity

</td>

<td style="text-align:left;">

Elect & Mgt Choice

</td>

<td style="text-align:left;">

Blunt

</td>

<td style="text-align:left;">

04/01/1979

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

MVA Traffic, Collision w/ Pedestrian - Pedestrian

</td>

<td style="text-align:left;">

Street/Highway

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

NO

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Spontaneous

</td>

<td style="text-align:left;">

Oriented

</td>

<td style="text-align:left;">

Obeys Command

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

01/02/2000

</td>

<td style="text-align:left;">

18:31

</td>

<td style="text-align:left;">

OR

</td>

<td style="text-align:left;">

79.32

</td>

<td style="text-align:left;">

Op red-int fix rad/ulna

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

</tr>

<tr>

<td style="text-align:left;">

0816196020000001

</td>

<td style="text-align:right;">

20000001

</td>

<td style="text-align:left;">

08/16/1960

</td>

<td style="text-align:left;">

39

</td>

<td style="text-align:left;">

FEMALE

</td>

<td style="text-align:left;">

White

</td>

<td style="text-align:left;">

York

</td>

<td style="text-align:left;">

17313

</td>

<td style="text-align:left;">

Commercial Insurer Indemnity

</td>

<td style="text-align:left;">

———————-

</td>

<td style="text-align:left;">

Blunt

</td>

<td style="text-align:left;">

08/16/1960

</td>

<td style="text-align:left;">

20:02

</td>

<td style="text-align:left;">

Striking Against/Struck Accidentally - Oth w/ or w/o Subseq Fall

</td>

<td style="text-align:left;">

Home

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

NO

</td>

<td style="text-align:left;">

Spontaneous

</td>

<td style="text-align:left;">

Oriented

</td>

<td style="text-align:left;">

Obeys Command

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Spontaneous

</td>

<td style="text-align:left;">

Oriented

</td>

<td style="text-align:left;">

Obeys Command

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

</tr>

<tr>

<td style="text-align:left;">

0407197520000005

</td>

<td style="text-align:right;">

20000005

</td>

<td style="text-align:left;">

04/07/1975

</td>

<td style="text-align:left;">

24

</td>

<td style="text-align:left;">

MALE

</td>

<td style="text-align:left;">

White

</td>

<td style="text-align:left;">

York

</td>

<td style="text-align:left;">

17370

</td>

<td style="text-align:left;">

Commercial Insurer Indemnity

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

Blunt

</td>

<td style="text-align:left;">

04/07/1975

</td>

<td style="text-align:left;">

01:06

</td>

<td style="text-align:left;">

Oth MVA Traffic, Collision w/ MV - Motorcyclist

</td>

<td style="text-align:left;">

Street/Highway

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

NO

</td>

<td style="text-align:left;">

To Voice

</td>

<td style="text-align:left;">

Oriented

</td>

<td style="text-align:left;">

Obeys Command

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Unknown

</td>

<td style="text-align:left;">

Spontaneous

</td>

<td style="text-align:left;">

Oriented

</td>

<td style="text-align:left;">

Obeys Command

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

01/01/2000

</td>

<td style="text-align:left;">

04:25

</td>

<td style="text-align:left;">

OR

</td>

<td style="text-align:left;">

79.32

</td>

<td style="text-align:left;">

Op red-int fix rad/ulna

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

<td style="text-align:left;">

FALSE

</td>

</tr>

</tbody>

</table>

</div>

### Example of Procedures, Diagnosis & Complications Dataframe

``` r
trans_full_df %>%  
  head(10) %>% 
  kable() %>% 
  kable_styling() %>% 
  scroll_box(width = "100%", height = "100px")
```

<div style="border: 1px solid #ddd; padding: 0px; overflow-y: scroll; height:100px; overflow-x: scroll; width:100%; ">

<table class="table" style="margin-left: auto; margin-right: auto;">

<thead>

<tr>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

id

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

date

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

time

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

loc\_desc

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

code\_cd

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

code\_desc

</th>

<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">

data\_source

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

0101188020001731

</td>

<td style="text-align:left;">

10/23/2000

</td>

<td style="text-align:left;">

10:04

</td>

<td style="text-align:left;">

ED

</td>

<td style="text-align:left;">

88.76

</td>

<td style="text-align:left;">

Dx ultrasound-abdomen

</td>

<td style="text-align:left;">

procedure

</td>

</tr>

<tr>

<td style="text-align:left;">

0101188020001731

</td>

<td style="text-align:left;">

10/23/2000

</td>

<td style="text-align:left;">

10:15

</td>

<td style="text-align:left;">

ED

</td>

<td style="text-align:left;">

87.03

</td>

<td style="text-align:left;">

C.A.T. scan of head

</td>

<td style="text-align:left;">

procedure

</td>

</tr>

<tr>

<td style="text-align:left;">

0101188020001731

</td>

<td style="text-align:left;">

10/23/2000

</td>

<td style="text-align:left;">

10:30

</td>

<td style="text-align:left;">

ED

</td>

<td style="text-align:left;">

88.01

</td>

<td style="text-align:left;">

C.A.T. scan of abdomen

</td>

<td style="text-align:left;">

procedure

</td>

</tr>

<tr>

<td style="text-align:left;">

0101188020001731

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

Diagnosis

</td>

<td style="text-align:left;">

850.1

</td>

<td style="text-align:left;">

Concussion - brief loss of consciousness

</td>

<td style="text-align:left;">

diagnosis

</td>

</tr>

<tr>

<td style="text-align:left;">

0101188020001731

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

Diagnosis

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

diagnosis

</td>

</tr>

<tr>

<td style="text-align:left;">

0101188020001731

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

Diagnosis

</td>

<td style="text-align:left;">

825

</td>

<td style="text-align:left;">

Fracture calcaneus-close

</td>

<td style="text-align:left;">

diagnosis

</td>

</tr>

<tr>

<td style="text-align:left;">

0101190020000939

</td>

<td style="text-align:left;">

08/11/2000

</td>

<td style="text-align:left;">

22:59

</td>

<td style="text-align:left;">

ED

</td>

<td style="text-align:left;">

96.04

</td>

<td style="text-align:left;">

Insert endotracheal tube

</td>

<td style="text-align:left;">

procedure

</td>

</tr>

<tr>

<td style="text-align:left;">

0101190020000939

</td>

<td style="text-align:left;">

08/11/2000

</td>

<td style="text-align:left;">

23:00

</td>

<td style="text-align:left;">

ED

</td>

<td style="text-align:left;">

99.6

</td>

<td style="text-align:left;">

Cardiopulm resuscita NOS

</td>

<td style="text-align:left;">

procedure

</td>

</tr>

<tr>

<td style="text-align:left;">

0101190020000939

</td>

<td style="text-align:left;">

08/11/2000

</td>

<td style="text-align:left;">

23:00

</td>

<td style="text-align:left;">

ED

</td>

<td style="text-align:left;">

99.62

</td>

<td style="text-align:left;">

Heart countershock NEC

</td>

<td style="text-align:left;">

procedure

</td>

</tr>

<tr>

<td style="text-align:left;">

0101190020000939

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

NA

</td>

<td style="text-align:left;">

Diagnosis

</td>

<td style="text-align:left;">

874.8

</td>

<td style="text-align:left;">

Open wound of neck NEC

</td>

<td style="text-align:left;">

diagnosis

</td>

</tr>

</tbody>

</table>

</div>
