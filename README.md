# Design System

## Build pipeline

```sh
git fetch --all
git checkout release
git pull
git checkout master -- assets properties scripts config.json index.js
git reset HEAD .
git checkout master -- package.json package-lock.json
npm install
npm run build
git add .
git commit -am "New build message"
git push origin release
```
