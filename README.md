# Homebrew Tap for Wayland

The official Homebrew tap for [Wayland](https://github.com/FerroxLabs/wayland) — the
local-first desktop AI agent that drives every AI CLI on your machine (Claude Code,
Codex, Gemini, and more), on your keys.

## Install

```bash
brew tap ferroxlabs/wayland
brew install --cask wayland
```

The app is signed with a Developer ID and notarized by Apple, so it opens with a
normal double-click — no Gatekeeper prompts.

## Update

```bash
brew upgrade --cask wayland
```

## Uninstall

```bash
brew uninstall --cask wayland
brew untap ferroxlabs/wayland
```

> This tap currently ships the latest release candidate. Once Wayland reaches a
> stable release, the cask will also be submitted to the official
> `homebrew/homebrew-cask` so `brew install --cask wayland` works without tapping.
