#!/usr/bin/env node

var fs = require('fs');

var version = function (file) {
  var content = fs.readFileSync(file, 'utf-8');
  console.log(file, JSON.parse(content).version);
};

version('package.json');
version('bower.json');
