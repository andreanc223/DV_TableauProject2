#Use last value to find the max fare in a class and the difference between the max
df_last <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query=
"select me, pclass, fare, last_value(max_fare) 
OVER (PARTITION BY pclass order by fare) max_fare, last_value(max_fare) 
OVER (PARTITION BY pclass order by fare) - fare fare_diff
from
(SELECT me, pclass, fare, max(fare)
OVER (PARTITION BY pclass) max_fare
FROM titanicdata) 
order by 2,3 desc"
')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_anc2275', PASS='orcl_anc2275', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE))); tbl_df(df_last)