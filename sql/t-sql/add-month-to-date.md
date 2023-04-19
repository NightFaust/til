# How to add month(s) to a date in T-SQL

```SQL
DATEADD(MONTH, n, date_column)
```

n = number of month you want to add (negative for substracting).
`MONTH` can be replaced with : 

| datepart  | abbreviations |
|---|---|
|year|yy, yyyy|
|quarter|qq, q|
|month|mm, m|
|dayofyear|dy, y|
|day|dd, d|
|week|wk, ww|
|weekday|dw, w|
|hour|hh|
|minute|mi, n|
|second|ss, s|
|millisecond|ms|
|microsecond|mcs|
|nanosecond|ns|

date\_column must be of the following values:
* date
* datetime
* datetimeoffset
* datetime2
* smalldatetime
* time
