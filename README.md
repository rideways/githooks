# Git Hooks

This is designed to be a simple repo to provide convenience git hooks.

## How to run
From inside your repo execute `init.sh` eg.

A repository with `githooks` as a submodule:

```
cd example_repo
sh githooks/init.sh
```

## Current Hooks
### prepare-commit-msg

Appends the text before the first `_`to the start of all commits eg.
All the commits on the branch `ABC-123_do-something-fun` would begin with `[ABC-123]`.
The only exceptions to this are `master`, `develop` and `test`.
