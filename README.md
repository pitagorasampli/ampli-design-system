# Design System

## Serve docs

```sh
npm run serve:docs
```

_See: http://localhost:4000_

## Build tokens
Get ZeroHeight Tokens URL with product design team.

```sh
ZEROHEIGHT_TOKENS_URL=<zeroheight_tokens_url> npm run build
```

## Download tokens locally
Get ZeroHeight Tokens URL with product design team.

```sh
ZEROHEIGHT_TOKENS_URL=<zeroheight_tokens_url> npm run download:tokens
```

## Jenkins pipeline

```sh
npm version <version_number | major | minor | patch> -m "New release %s"
```

_The version hook scripts will make the job._
