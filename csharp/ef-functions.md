# EF Functions

In the Entity Framework in C#, some SQL functions are not 'converted' correctly.
For example, if you try to do a `Rand()` like SQL, you would type something like this : 

```csharp
entity.Where(e => e.Id == new Random().Next())
```

But EF does not convert it correctly to SQL.

```sql
select * from entity where Id = <randomly-generated-number>

-- should be Id = Rand()
```

To overcome this situation, you can use `EF.Functions` to get translated database functions.
Some functions are provider-specific because they're closely tied to certain database functions.

A nice thing is that you can also define custom mappings.
> A custom mapping extends the query translation according to the user's needs. This functionality is useful when there are custom functions in the database that
the user wants to call from their LINQ query.

> [More info](https://www.learn.microsoft.com/en-us/ef/core/querying/user-defined-function-mapping)
