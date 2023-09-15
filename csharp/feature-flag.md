# Feature flag in c#

 A feature flag is used to enable or disable some features in your code.

```csharp
// Basic implementation
if (featureFlag) {
    // ...
}
else
{
    // ...
}
```

---

## with environment variable

```csharp
if (Environment.GetEnvironmentVariable("featureFlag") == "value") {
    // ...
}
else
{
    // ...
}
```

---

## with dotnet 6.0 and +

```csharp
// Startup.cs
using Microsoft.FeatureManagement;

builder.Services.AddFeatureManagement();
// Or
builder.Services.AddFeatureManagement(Configuration.GetSection("MyFeatureFlags"));
// Or
builder.Services.AddFeatureManagement().AddFeatureFilter<PercentageFilter>();

```

> for much more, check [use feature flags dotnet core](https://learn.microsoft.com/en-us/azure/azure-app-configuration/use-feature-flags-dotnet-core?tabs=core6x)
