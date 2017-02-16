MySQL binlog parser
=========================

### Development

Please install docker-compose first, then execute docker-compose up -d to starter MySQL with binlog support.

### Java

1. RotateEventData: binlog切换
2. QueryEventData: database, sql = BEGIN 表示DML, 其他表示DDL(跳出)
3. TableMapEventData:  table name, database
4. WriteRowsEventData(insert)、DeleteRowsEventData(delete)、UpdateRowsEventData(update): real data
5. XidEventData: xid

### MySQL的binlog支持配置
Please add following code in your MySQL config file(config-file.cnf)

```
[mysqld]
server-id        = 1
log_bin          = /var/log/mysql/mysql-bin.log
expire_logs_days = 10
max_binlog_size  = 100M
binlog-format    = row #Very important if you want to receive write, update and delete row events
```

### MySQL Binlog commands

```
mysql> show master status
mysql> show binary logs;
mysql> show binlog events in 'mysql-bin.000002';
```

### Testing
After start the application, enter mysql shell and execute following code:

```sql
create table users (
  id int not null PRIMARY KEY  AUTO_INCREMENT,
  name varchar(32)
);
insert into users(name) value('jacky');
```
### framework

* https://github.com/noplay/python-mysql-replication
* https://github.com/jeremycole/mysql_binlog
* https://github.com/shyiko/mysql-binlog-connector-java