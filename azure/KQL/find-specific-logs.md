# Find specific logs with KQL

> KQL stands for Kusto Query Language.

```kql
StormEvents 
| where StartTime between (datetime(2007-11-01) .. datetime(2007-12-01))
| where State == "FLORIDA"  
| count 
```

> Note: KQL is case-sensitive for everything
