# Sql Server equivalent to NULLS FIRST

> [Source](https://stackoverflow.com/questions/1456653/sql-server-equivalent-to-oracles-nulls-first)

You can do the following : 

```sql
ORDER BY (CASE WHEN [Order] IS NULL THEN 0 ELSE 1 END), [Order]
```
