# StageWhisper Homebrew Tap

Official Homebrew tap for [StageWhisper Lite](https://stagewhisper.io/).

## Install

```sh
brew install --cask stagewhisperio/tap/stagewhisper
```

Or tap first, then install by name:

```sh
brew tap stagewhisperio/tap
brew install --cask stagewhisper
```

## Updates

The app updates itself in place, so `brew upgrade` skips it by default. To force the latest version through Homebrew, run:

```sh
brew upgrade --cask stagewhisper --greedy
```

## Requirements

- macOS 14 (Sonoma) or newer
- Apple Silicon

This repository is generated from the StageWhisper monorepo. The cask is updated automatically on each release.
