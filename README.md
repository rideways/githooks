# Git Hooks

This is designed to be a simple repo to provide convenience git hooks.

## Current Hooks
### prepare-commit-msg

Appends the ticket number is one exists to the start of all commits eg.
All the commits on the branch `ABC-123_do-something-fun` would begin with `[ABC-123]`.
The only exceptions to this are `master`, `develop` and `test`.
