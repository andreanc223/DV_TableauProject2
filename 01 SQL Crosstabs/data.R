df <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query="select * from titanic"')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_THC359', PASS='orcl_THC359', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)));

tbl_df(df)

#rank fare paid within an age group
df <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query=
"SELECT name, sex, age, fare rank() 
OVER (PARTITION BY age order by fare desc) AGE_RANK 
FROM titanic order by 2,3 desc"
')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_THC359', PASS='orcl_THC359', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)));

tbl_df(df)

#last value


#nth_value


#cume_dist