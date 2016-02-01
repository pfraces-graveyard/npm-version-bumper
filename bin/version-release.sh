#!/bin/bash

npm run version-set -- patch &&
git commit -am "Release $(npm run --silent version-current)" &&
git tag "$(npm run --silent version-current)" &&
npm run broadcast
