#!/bin/bash

# wrapper for adding all changed and commiting with a default message
# use-case: keep commiting -> rebase/squash commits as needed -> submit PR/MR

git add -A && git commit -m "incremental commit, rebase/squash me"
