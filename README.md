# homebrew-arkham

A [Homebrew](https://brew.sh) tap for tools used by the Arkham Horror: The Card Game community.

## Installation

```sh
brew tap zaratan/arkham
```

Then install one of the casks:

```sh
brew install strange-eons
brew install shoggoth
```

## Available casks

| Cask           | Description                                               | Upstream                                                                                                                                      |
| -------------- | --------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| `strange-eons` | Design tool for paper-based games (Arkham LCG and others) | [strangeeons.org](https://strangeeons.org/) — releases on [strange-eons/strange-eons](https://github.com/strange-eons/strange-eons)           |
| `shoggoth`     | Card creation tool for Arkham Horror: The Card Game       | [tokeeto/shoggoth](https://github.com/tokeeto/shoggoth)                                                                                       |

## Updating versions

A GitHub Action checks for new versions every day at 6am (UTC) and creates a new PR for each update.

The `strange-eons` cask follows GitHub releases including prereleases, so an update PR can propose an alpha or beta version. To split into stable + beta channels later, fork the cask into `strange-eons` (stable) and `strange-eons@beta` (prerelease).

## Reporting issues

For bugs in the tap (cask definitions, CI, etc.), open an issue here. For bugs in the apps themselves, report them upstream.
