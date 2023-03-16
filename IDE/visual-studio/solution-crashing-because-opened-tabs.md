# Fix a Solution crashing because of opened tabs

* Context : When trying to open a solution in visual studio, your IDE is not responding because of some opened tabs causing the issue (inexisting file, designer file, etc.)

* Solution : To fix the problem, navigate to your solution folder and delete your local settings.
  * visual studio 17+ : Check the `.vs` folder and delete the `*.suo` file(s) causing the issue.
If you don't mind to loose all your local settings, you can just delete the `.vs` folder.
  * older versions : There should be a `*.suo` file within the solution directory.

