# MERGE operator in sql

Means `INSERT OR UPDATE`.

```sql
MERGE INTO Target AS T
USING (SELECT * FROM Source) AS S
    ON (T.Name = S.Name)
WHEN MATCHED THEN
    UPDATE SET T.Value = S.Value
WHEN NOT MATCHED THEN
    INSERT (Name, Value)
    VALUES (S.Name, S.Value)
; -- Don't forget the mandatory ;
```

You can also check if matched by source, and many more :

```sql
MERGE INTO Target AS T
USING (SELECT * FROM Source) AS S
    ON (T.Name = S.Name)
WHEN MATCHED THEN
    UPDATE SET T.Value = S.Value
WHEN NOT MATCHED BY TARGET AND S.Value > 10 THEN -- You can add criterias
    INSERT (Name, Value)
    VALUES (S.Name, S.Value)
WHEN NOT MATCHED BY SOURCE THEN
    DELETE
OUTPUT deleted.* , $action, inserted.*
; -- Don't forget the mandatory ;
```

Very powerful cause it can cross indexes (know exactly where to insert and which line to block, etc.).
`MERGE` is transactional.
Used to insert data massively.

In code, you can create a temp table, use `BULK INSERT`(ado.net) etc. (not transactional)
Once alimented, you can use `Merge` (very performant)

```sql
CREATE TABLE #MyTable
(
-- lifecycle on the connection

)
```
