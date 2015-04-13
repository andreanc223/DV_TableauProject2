#rank fare paid within a class
df_rank <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query=
"SELECT me, fare, pclass, rank() 
OVER (PARTITION BY pclass order by fare desc) FARE_RANK
FROM titanicdata order by 2,3 desc"
')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_anc2275', PASS='orcl_anc2275', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE))); tbl_df(df_rank)