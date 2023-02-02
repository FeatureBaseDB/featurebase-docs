### Connection strings

| `--driver` | example `--connection-string` | Further information |
|---|---|---|
| postgres | `'postgresql://postgres:password@localhost:5432/molecula?sslmode=disable'` | [`postgres` connection string](https://godoc.org/github.com/lib/pq) |
| postgres | `'user=postgres password=password host=localhost port=5432 dbname=molecula sslmode=disable'` |
| mysql | `'myusername:password@(10.0.0.1:3306)/mydb'` | [`MySQL` connection strings](https://github.com/go-sql-driver/mysql#dsn-data-source-name){:target="_blank"} |
| mysql | `'server=sqldb.myserver.com;userid=mysqlusername;password=secret;database=mydbname'` |  |
| SQL-Server | `--driver mssql --connection-string 'server=sqldb.myserver.com;userid=mysqlusername;password=secret;database=mydbname'`` | [`SQL-Server` connection strings](https://github.com/denisenkom/go-mssqldb#connection-parameters-and-dsn){:target="_blank"} |
