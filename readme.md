
- Directory : 
```
data : wkt input in csv files
result : postgis output 
sql : postgis sql scripts 
```

- Use
You can test postgis functions at (zilliz@192.168.2.36 -password zilliz):
```shell
sudo su
psql -U postgres
\i /home/czp/auto_postgis/sql/postgis.sql
```

