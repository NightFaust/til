# EF Functions

In Entity Framework in C#, some SQL Functions are not correctly 'converted'.
For exemple, if you try to do a `Rand()` like SQL, you would type something like this : 

```csharp
entity.Where(e => e.Id == new Random().Next())
```

But EF does not convert it correctly in SQL.

```sql
select * from entity where Id = <randomly-generated-number>

-- should be Id = Rand()
```

To overcome this situation, you can use `EF.Functions` to get translated database functions.
Some Functions are provider-specific as they're closely tied with particular database functions.

One nice thing is that you can also define custom mapping.
> A user-defined mapping estends the query translation according to the user needs. This functionality is useful when there are user-defined functions in the database, which the user wants to invoke from their LINQ query.
