# generator-node-cypress

> Yeoman generator for PUBLIC Node packages from Cypress.io team

[![NPM][generator-node-cypress-icon] ][generator-node-cypress-url]

[![Build status][generator-node-cypress-ci-image] ][generator-node-cypress-ci-url]
[![semantic-release][semantic-image] ][semantic-url]
[![renovate-app badge][renovate-badge]][renovate-app]

## Install and use

    npm install -g yo generator-node-cypress

In a new project folder

    git init
    git remote add origin <remote git>
    yo node-cypress

Answer a few questions and you should be all set.

## Features

- Targeted at public GitHub repos
- Default `.npmrc` and `.gitignore` files
- Git hooks and message validation using [pre-git](https://github.com/bahmutov/pre-git)
- Linting and auto formatting using [eslint](https://eslint.org/) and
  [prettier-eslint](https://github.com/prettier/prettier-eslint-cli) using `npm run lint`
- Showing open Git issues via
  [git-issues](https://github.com/softwarescales/git-issues) using `npm run issues`
- Unit testing with [Mocha](http://mochajs.org/) using `npm run unit`
- Packaged [size reporting on pre-push hook][size] using `npm run size`
- Running [Node Security Project](https://github.com/nodesecurity/nsp) check on `pre-push`
- Checking if you are trying to commit
  [sensitive files](https://github.com/bahmutov/ban-sensitive-files)
  using `npm run ban`
- License check of production dependencies with
  [license-checker](https://www.npmjs.com/package/license-checker) using `npm run license`
- Outdated, missing local and unused dependencies check with
  [deps-ok](https://github.com/bahmutov/deps-ok) and
  [dependency-check](https://www.npmjs.com/package/dependency-check)
  using `npm run deps` and `npm run unused-deps`
- Semantic release setup using [semantic-action](https://github.com/bahmutov/semantic-action)

See `npm run` output for the full list of scripts.

[size]: https://glebbahmutov.com/blog/smaller-published-NPM-modules/

## Debugging

Run the generator with environment variable DEBUG set to "gen"

    DEBUG=gen yo node-cypress

## Remote

This generator assumes there is already a remote Git
(probably GitHub) repository where all code will live. Please create
it first and then set it before running generator

    git init
    git remote add origin <remote git>
    yo node-cypress

### Small print

Author: Gleb Bahmutov Cypress.io &copy; 2018

- [@bahmutov](https://twitter.com/bahmutov)
- [cypress.io](https://www.cypress.io)

License: MIT - do anything with the code, but don't blame me if it does not work.

Spread the word: tweet, star on github, etc.

Support: if you find any problems with this module, email / tweet /
[open issue](https://github.com/cypress-io/generator-node-cypress/issues) on Github

## MIT License

Copyright (c) 2018 Cypress.io

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

[generator-node-cypress-icon]: https://nodei.co/npm/generator-node-cypress.svg?downloads=true
[generator-node-cypress-url]: https://npmjs.org/package/generator-node-cypress
[generator-node-cypress-ci-image]: https://travis-ci.org/cypress-io/generator-node-cypress.svg?branch=master
[generator-node-cypress-ci-url]: https://travis-ci.org/cypress-io/generator-node-cypress
[semantic-image]: https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg
[semantic-url]: https://github.com/semantic-release/semantic-release
[renovate-badge]: https://img.shields.io/badge/renovate-app-blue.svg
[renovate-app]: https://renovateapp.com/
