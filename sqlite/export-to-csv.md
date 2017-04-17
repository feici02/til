# How to export data in sqlite3 db to a csv file?

## Method 1
```
$ sqlite3 test.db
> .headers on
> .mode csv
> .output data.csv
> SELECT * FROM customer;
> .quit
```

## Method 2
```
$ sqlite3 -header -csv test.db < query.sql > data.csv
```

query.sql:
```
SELECT * FROM customer;
```
