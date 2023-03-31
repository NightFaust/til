# Do a join without join keyword in SQL

```sql
Select [table3].[row1], [table2].[row2]
FROM
    [table1],
    [table2],
    [table3]
WHERE
    [table1].[Id] = [table2].[Table1Id]
    AND [table2].[Id] = [table3].[Table2.Id]
```


