# Kite Homebrew Tap

Install [Kite Desktop](https://kitehq.dev/) for macOS using Homebrew.

Kite Desktop is currently in **beta**. The macOS app requires Apple Silicon and macOS 13 or later, plus a working Homebrew installation.

## Install

```sh
brew install --cask kite-org/tap/kite-desktop
```

Homebrew downloads the published DMG, verifies its SHA256, and installs `Kite.app` into `/Applications`.

## First launch

The macOS beta is not yet signed with an Apple Developer ID or notarized. If macOS blocks the first launch, follow the instructions in the [release notes](https://github.com/kite-org/kite/releases/tag/v0.17.0).

## Update

Use **Check for Updates** in Kite, or update with Homebrew:

```sh
brew update
brew upgrade --cask --greedy kite-org/tap/kite-desktop
```

## Uninstall

```sh
brew uninstall --cask kite-org/tap/kite-desktop
```

Uninstalling the app preserves its settings and cluster configurations.

## Maintaining the cask

After a release is published, update `version` and `sha256` in `Casks/kite-desktop.rb` using the published `kite-darwin-arm64.dmg`. Keep the download URL pinned to the release tag. Update the first-launch release link in this README when bumping the version.
