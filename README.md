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
| `strange-eons` | Design tool for paper-based games (Arkham LCG and others) | [strangeeons.org](https://strangeeons.org/) — releases on [christophercurrie/strange-eons](https://github.com/christophercurrie/strange-eons) |
| `shoggoth`     | Card creation tool for Arkham Horror: The Card Game       | [tokeeto/shoggoth](https://github.com/tokeeto/shoggoth)                                                                                       |

## Updating versions

Run [`brew livecheck`](https://docs.brew.sh/Brew-Livecheck) to detect new releases:

```sh
brew livecheck --cask zaratan/arkham/strange-eons zaratan/arkham/shoggoth
```

The `strange-eons` cask follows GitHub releases including prereleases (since the project ships beta versions for long stretches). To split into stable + beta channels later, fork the cask into `strange-eons` (stable) and `strange-eons@beta` (prerelease).

## Reporting issues

For bugs in the tap (cask definitions, CI, etc.), open an issue here. For bugs in the apps themselves, report them upstream.
