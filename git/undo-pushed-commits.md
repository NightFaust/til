# Undo pushed commits
> Or how to revert 1 or n commit(s) as it never existed

1. Place yourself on the branch you want to delete commit(s)
2. `git log` to get the last known good commit hash
3. `git push -f origin <last_known_good_commit>:<branch_name>` to get rid of last commits which were already pushed.
4. `git reset --hard <last_known_good_commit>` to get rid of local also.

> Credits: [fedorqui](https://stackoverflow.com/a/36177806)
