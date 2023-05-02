# Sql Server Profiler

> An interface to create and manage traces and analyze and replay trace results.

Installed with SSMS (equivalent version in Azure Data Studio).

- Create a trace
- Choose a server
- Authenticate

There is a lot (A LOT) of filters/event.

> Sql Server reads 8kb per page. So if your request have 20 in column `Reads`, it means this request loaded 20
times 8kb of data.

> For the moment, you can't profile a azure database for technical reason (not fixed, moving between different datacenter)

> You can also create some `Templates` to save time when launching the utility.
