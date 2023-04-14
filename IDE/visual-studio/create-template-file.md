# How to create a template file in visual studio

* Project
* Export template...
* Select Item Template
* Template Name, Template description, icon image, etc.
* Finish
* Relaunch Visual Studio

You can also create a Project Template
* Project
* Export template...
* Select Project Template
* Etc.


The templates are saved in the folder `My Exported Template` and in `Documents`-`Visual Studio 2022`-> `Templates`-> `ProjectTemplates` or `ItemTemplates`
You can edit the zipped template and re-zipped it to edit the current template.
The \*.vstemplate contain information about the project type targetted, the icon, etc.

**Tips** : 
- In `Microsoft Visual Studio`/`Professional`/`Common7`/`IDE`/`ItemTemplates` or `ProjectTempates`, you can find all the defaults templates of Microsoft, you can check here to find the existing icons integrated in `Visual Studio`.
- You can use `*.vsix` to share the template between developpers.
  - Create a `vsix` project
  - In Assets, you can add some `Item Templates`
  - Build the project
  - In `DEBUG`, you will find the `*.vsix` file.
  - You can use the `Experimental` visual studio to test it (right click -> `DEBUG`)
    - `devenv /RootSuffix Exp` command for starting an empty `Visual Studio`
