#!/bin/bash

git remote |
while read remote
do
    git push $remote master &&
    git push --tags
done
