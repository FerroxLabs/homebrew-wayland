# Homebrew Tap for Wayland (moved)

Wayland's Homebrew cask now lives in the consolidated Ferrox Labs tap:

```sh
brew install --cask ferroxlabs/tap/wayland
```

or:

```sh
brew tap ferroxlabs/tap
brew install --cask wayland
```

## This tap still works

`ferroxlabs/wayland` continues to work for existing installs, but it is no longer
the canonical home and will not receive new apps. Please switch to
[`ferroxlabs/tap`](https://github.com/FerroxLabs/homebrew-tap), which hosts every
Ferrox Labs app in one place.

```sh
# move to the consolidated tap
brew untap ferroxlabs/wayland
brew install --cask ferroxlabs/tap/wayland
```

The app is signed with a Developer ID and notarized by Apple, so it opens with a
normal double-click.
