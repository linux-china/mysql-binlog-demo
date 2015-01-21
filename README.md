MySQL binlog parser
=========================

### Java

1. RotateEventData: binlog切换
2. QueryEventData: database, sql = BEGIN 表示DML, 其他表示DDL(跳出)
3. TableMapEventData:  table name, database
4. WriteRowsEventData(insert)、DeleteRowsEventData(delete)、UpdateRowsEventData(update): real data
5. XidEventData: xid


### MySQL的binlog配置
my.cnf添加以下内容：

    [mysqld]
    server-id        = 1
    log_bin          = /var/log/mysql/mysql-bin.log
    expire_logs_days = 10
    max_binlog_size  = 100M
    binlog-format    = row #Very important if you want to receive write, update and delete row events

### framework

* https://github.com/noplay/python-mysql-replication
* https://github.com/jeremycole/mysql_binlog
* https://github.com/shyiko/mysql-binlog-connector-java