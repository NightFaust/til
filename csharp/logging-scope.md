# Log with a scope

If you want to normalize logs for a certain scope (same variable accross all classes for a specific scope, etc.), you can use the method BeginScope.

```csharp
using (logger.BeginScope(new { DocumentId = id}))
{
    // ...
}
```
