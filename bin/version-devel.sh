#!/bin/bash

npm run version-set -- preminor &&
git commit -am "Preparing for next development iteration ($(npm run --silent version-current))" &&
npm run broadcast
