library(RCurl)
library(dplyr)
library(tidyr)
library(jsonlite)
library(scales)
library(ggplot2)
library(ggthemes)
require(jsonlite)
options(dplyr.width = Inf)

df <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query=
"select * from TITANICDATA"
')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_anc2275', PASS='orcl_anc2275', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))
tbl_df(df)