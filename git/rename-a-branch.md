# Rename a branch

## Locally

1. If you are on the branch you want to rename, just do `git branch -m <new-branch-name>`
2. Else if you want to rename a branch other than the one you are currently on, do `git branch -m <old-branch-name> <new-branch-name>`

## Renaming only a remote branch

```bash
git push <remote> <remote>/<old_name>:refs/heads/<new_name> :<old_name>
```

#git #til 
