
#!/bin/bash

npm install --save-dev @commitlint/{cli,config-conventional}
npm install --save-dev husky

echo "module.exports = { extends: ['@commitlint/config-conventional'] };" > commitlint.config.js

npx husky install
npx husky add .husky/pre-commit "npx --no-install commitlint --edit $1"

echo "Commitlint and Husky installed successfully."
