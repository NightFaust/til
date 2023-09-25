# How to squash some commits in a branch

`git checkout <branch_name_to_be_squashed>` 
Select the commit SHA from the commit just before where you want to start squashing (from the oldest)


Enter `git rebase -i <SHA>`


Text editor will open. Every commit are listed from oldest to newest, top-down. Change every `pick` by `squash` for every commit you want to squash. Then save and exit editor.

![editor](./assets/squashing-commits-step-4.png)


![modify pick to squash](.assets/test.png)


Another editor will open, listing all commits, just comment every one and write a new commit message.


![commits message listing](./assets/squashing-commits-step-5.png)


![new commit message](./assets/squashing-commits-step-6.png)


Now, your graph look like this locally !


![local graph](./assets/squashing-commits-step-7.png)


you just need to `git push -f` now.


![done](./assets/squashing-commits-step-8.png)
