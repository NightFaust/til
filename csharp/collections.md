# Collections

There is multiple collections type in csharp :
* List
* Collection
* Enumerable
* IList
* ICollection
* IEnumerable
* ReadOnlyCollection
* ReadOnlyDictionary
* Array
* HashSet
* Dictionary
* IReadOnlyCollection
* IReadOnlyList
* Linked List
* etc...

Technical Collections like `Dictionary`, `List`, etc. should never be exposed to consumption. They should be used only
internally for solving a technical problem.

`IList` can be dangerous because it is so abstract thatk it can be used to return many types. So if you don't know the
implementation (you should not => Liskov Substituion Principle), you may face an exception due to an incompatible type.
ex : 
```csharp
public class TestList
{
    public static IList<string> GetList()
    {
        // Not returning an expected type
        return new string[]
        {
            "A",
            "B"
        };
    }
}

// Can cause exception
var l = TestList.GetList();
l.Add("something"); // This line will throw a System.NotSupportedException 'Collection was of a fixed size.'

```

