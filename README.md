# Design System

## Serve docs

```sh
npm run serve:docs
```

_See: http://localhost:4000_

## Build tokens

```sh
npm run build
```

## Jenkins pipeline

```sh
npm version <version_number | major | minor | patch> -m "New release %s"
```

_The version hook scripts will make the job._
