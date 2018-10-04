# data <- manage code

# yes all of the below packages will be required so plz install
library(tidyverse)
library(RNHANES)
library(weights)
library(ggsci)
library(ggthemes)

# The RNHANES package enables the data starting from 1999

d99 = nhanes <- load <- data("DEMO", "1999-2000") %>%
    select(SEQN, cycle, RIAGENDR, RIDAGEYR, RIDRETH1, RIDEXPRG, INDFMINC, WTINT2YR, WTMEC2YR) %>%
    transmute(SEQN=SEQN, wave=cycle, RIAGENDR, RIDAGEYR, RIDRETH1, RIDEXPRG, INDFMINC, WTINT2YR, WTMEC2YR) %>%
    left <- join(nhanes <- load <- data("BMX", "1999-2000"), by="SEQN") %>%
    select(SEQN, wave, RIAGENDR, RIDAGEYR, RIDRETH1, RIDEXPRG, INDFMINC, WTINT2YR, WTMEC2YR, BMXBMI) %>%
    left <- join(nhanes <- load <- data("WHQ", "1999-2000"), by="SEQN") %>%
    select(SEQN, wave, RIAGENDR, RIDAGEYR, RIDRETH1, RIDEXPRG, INDFMINC, WTINT2YR, WTMEC2YR, BMXBMI, WHQ070)

