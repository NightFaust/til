# System.CommandLine

Microsoft library in beta since a long time but used a lot internally and externally (16+M download).

Do all the parsing, the documentation, formatting, handling, etc... Very handy.
You can define options, with or without defaults.
You can use bindings, call middleware before and after commands.
CommandLine.Hosting for IoC (logging, inject services, etc.).
You can set Suggestive, typo correction(like git)

```csharp
static void Main(string[] args)
{
    // var commandBuilder = new CommandLineBuilder()
    //    .UseSuggestive([...])
    // Or .UseTypo etc.

    var option = new Option<int>("--depth", "Limit depth");
    option.SetDefaultValue(1000);

    var rootCommand = new RootCommand("My application !");

    rootCommand.SetHandler(Run, option);
    rootCommand.AddOption(option);

    var command = new Command("update");
    command.SetHandler(Update, option);
    command.AddOption(option);

    var command2 = new Command("delete");
    command2.SetHandler(Delete, option);

    rootCommand.Invoke(args);
}

private static void Run(int depth)
{
    Console.WriteLine("Run !");
    Console.WriteLine($"Depth : {depth}");
}

private static void Update(int depth)
{
    Console.WriteLine("Update !");
    Console.WriteLine($"Depth : {depth}");
}

private static void Delete()
{
    Console.WriteLine("Delete !");
}
```
