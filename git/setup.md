# GitHub Setup
ssh-keygen

### Files
- README.md
- SUPPORT.md
- CONTRIBUTING.md

### Git credentials on account switch
1. The following deletes git credentials: 
- `git config --global --unset credential.helper`
   
1.1 Omit --global and set only in the repo:
- `git config user.email ""`
- `git config user.name ""`

2. Now try to perform a git command that requires auth, and reset your credentials

3. `git config credentials.email`

### Git

```git
git init
git add README.md
git commit -m "first commit" --amend
git branch -M main
git remote add origin https://github.com/Mondieur/TexxyDee.git
git push --set-upstream origin master
git push -u origin main
```

