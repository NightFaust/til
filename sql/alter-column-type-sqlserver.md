# Alter column type in Sql Server

If you want to change the type of particular column
```sql
ALTER TABLE <table-name>
ALTER COLUMN <column-name> [new-type](optional) <NULL/NOT NULL>
```

You may need to backup data, empty the column and insert it back after change if the type is not compliant with existings data.
