# How to modify a Azure Web App runtime stack

I was trying to modify the php runtime version of my webapp from 5.6 to 7.4.
Usually, you just have to go to the configuration tab and change the version.
But for my case, it was not displaying the version 7.4 in the dropdown list.

So, I used Kudu to find out if php 7.4 was installed on the server.
In my case, it was installed in the folder `C:\Program Files (x86)\PHP\v7.4`.

Then, in the Web App configuration tab, I opened the `Path mappings` tab, then added a new `handler mapping` with the following values :
- Extension: `*.php`
- Script processor: `C:\Program Files (x86)\PHP\v7.4\php-cgi.exe`

Even if the Web App overview tab still displays the old version, the phpinfo() page shows the new version.