# Sofia Design Tokens by Kroton.Tech

**TODO: rename this repository to `kroton-tech/sofia-tokens`.**

_**Important**: The branch `release` should never be used._


## How to use the Sofia Design Tokens

_**Note**: Specific version is better than Latest release to ensure more
control._

### Install with NPM

_**Warning**: The package name to import in code is
`@kroton-tech/sofia-tokens`._

#### Specific version

```sh
npm install pitagorasampli/ampli-design-system#v0.0.14
```

#### Latest release

```sh
npm install pitagorasampli/ampli-design-system#release
```


### Install with Gradle

**TODO: describe how to install with Gradle**


### Install with XCode

**TODO: describe how to install with XCode**


## Development

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
