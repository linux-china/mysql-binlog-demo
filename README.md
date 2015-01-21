MySQL binlog parser
=========================

### Java

1. RotateEventData: binlog切换
2. QueryEventData: database, sql = BEGIN 表示DML, 其他表示DDL(跳出)
3. TableMapEventData:  table name, database
4. WriteRowsEventData(insert)、DeleteRowsEventData(delete)、UpdateRowsEventData(update): real data
5. XidEventData: xid


### framework

* https://github.com/noplay/python-mysql-replication
* https://github.com/jeremycole/mysql_binlog
* https://github.com/shyiko/mysql-binlog-connector-java