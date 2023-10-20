# Git branching

## Gitflow

5 types of branches:
- main
- develop
- feature
- release
- hotfixes

feature branching
Concept of "release" branches

|+|-|
|--|--|
|Main branch stays stable|High inertia evelopment cycle|
|Emphasis on versioning et realease management|Impossibility CI/CD|
|Clear role for branches helps for understanding responsibilities and when/where to make changes|High mental workload for developers|
|Allows multiple product versions|Strict - overhead of managing multiple branches might outweigh the benefits|
|Mature tooling (extensions & plug-ins)|Release overheads - managing release branches and merging them back into the main development branch can be time-consuming|

## Github flow

No development branch - Testing and automating changes to one branch
Main branch serves for production & development
Focus on Agile principles (*Short production cycles, Frequent releases*)

|+|-|
|--|--|
|Simple|Not suitable multiple product versions|
|Allows focus on Agile principles|Require good testing capabilities or it will increase risk of bugs|
|Short production cycles and frequent releases|Increase of merge conflicts for bigger teams|
|Allows for fast feedback loops to solve bugs||
|Allows for quick and continuous deployment||
|Ideal when you need to maintain asingle production version||

## Trunk-base

Trunk-based development at scale is best done with sorht-lived feature branches: one person over a couple of days (max) and flowing through Pull-Request style code-review & build automation before "integration" (merging) into the trunk (or master)

Prerequisites:
- Feature Flags
- Good Code Coverage
- CI/CD
- Communication

|+|-|
|--|--|
|Small feature branches|Prerequisites|
|Faster PR|Merge commit = Task|
|Less merge conflict||
|Less complexity||
|Improve collaboration||
