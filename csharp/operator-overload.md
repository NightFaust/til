# Operator overload

> A user-defined type can overload a predefined C# operator.
[...]
Use the `operator` keyword to declare an operator. AN operator declaration must satisfy the following rules: It includes both a public and a static modifier and a unary operator has one input parameter. A binary operator has two input parameters. In each case, at least one parameter must have type T or T? where T is the type that contains the operator declaration

Example:
```csharp
        public static bool operator ==(PhoneNumber? left, PhoneNumber? right)
        {
            return Equals(left, right);
        }

        public static bool operator !=(PhoneNumber? left, PhoneNumber? right)
        {
            return !(left == right);
        }
```

>[source](https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/operators/operator-overloading)
