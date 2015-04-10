df <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query=
"select * from TITANICDATA"
')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_anc2275', PASS='orcl_anc2275', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

tbl_df(df)

#rank fare paid within an age group
df1 <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query=
"SELECT me, age, fare, rank() 
OVER (PARTITION BY age order by fare desc) AGE_RANK 
FROM titanicdata"
')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_THC359', PASS='orcl_THC359', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)));

tbl_df(df1)

#last value


#nth_value


#cume_dist
