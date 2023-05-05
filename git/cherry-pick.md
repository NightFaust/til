# Cherry pick

`git cherry-pick` is used to pick a commit and append it to the current working `HEAD`. Very useful for exemple to move a commit made to the wrong branch to the correct one.

The command is `git cherry-pick <commitSha>`.

There is multiple parameters :
`-edit` will cause git to prompt for a commit message before applying the cherry-pick operation.

`--no-commit` will execute the cherry-pick but instead of making a new commit it will move the contents of the target commit into the working directory of the current branch.

`--signoff` will add a 'signoff' signature line to the end of the cherry-pick commit message.

You can also use `--abort`, `--continue` and `--quit` like merge conflict resolution.

> Source: https://www.atlassian.com/git/tutorials/cherry-pick
