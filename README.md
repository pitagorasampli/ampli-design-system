# Sofia Design Tokens

_**Important**: The branch `release` should never be used._

## Get started

```sh
npm install
ZEROHEIGHT_TOKENS_URL=<zeroheight_tokens_url> npm run build
```

The tokens will be generated locally.

_**Tip:** Link the projects to be develop with local tokens._

_**Note:** Get ZeroHeight Tokens URL with product design team._


## CI pipeline

```sh
ZEROHEIGHT_TOKENS_URL=<zeroheight_tokens_url>
npm version <version_number | major | minor | patch> -m "New release %s"
```

The version hook scripts will make the job.
