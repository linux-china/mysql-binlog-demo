MySQL binlog parser
=========================

### Java

1. RotateEventData: binlog切换
2. QueryEventData: database, sql = BEGIN 表示DML, 其他表示DDL(跳出)
3. TableMapEventData:  table name, database
4. WriteRowsEventData(insert)、DeleteRowsEventData(delete)、UpdateRowsEventData(update): real data
5. XidEventData: xid

### MySQLd binlog configuration
my.cnf添加以下内容：

    [mysqld]
    server-id        = 1
    log_bin          = /var/log/mysql/mysql-bin.log
    expire_logs_days = 10
    max_binlog_size  = 100M
    binlog-format    = row #Very important if you want to receive write, update and delete row events

### Binlog operations

* show binary logs;
* show master status;
* show binlog events in 'mysql-bin.000001';

### Todo

* Spring Boot
* @Async support
* Spring plugin integration for SPI

### framework

* https://github.com/shyiko/mysql-binlog-connector-java