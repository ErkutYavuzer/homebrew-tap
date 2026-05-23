# ErkutYavuzer's Homebrew tap

Homebrew formulae and casks by [Erkut Yavuzer](https://github.com/ErkutYavuzer).

## Usage

```bash
brew tap ErkutYavuzer/tap
```

## Available

### `pixel-agent` (Cask)

[Personal AI agent for macOS](https://github.com/ErkutYavuzer/pixel-agent) — chat with Claude/Codex/Gemini side by side, dispatch subagents, see your screen via Set-of-Mark, control everything from iPhone.

```bash
brew install --cask --no-quarantine ErkutYavuzer/tap/pixel-agent
```

> **`--no-quarantine` is required** because pixel-agent is currently ad-hoc signed (not Apple Developer ID signed). Without it, macOS Gatekeeper blocks first launch. Alternative: install normally and then `xattr -d com.apple.quarantine /Applications/PixelAgent.app`, or right-click → "Open Anyway" in System Settings → Privacy & Security.

Requires at least one of [Claude Code](https://github.com/anthropics/claude-code), [OpenAI Codex](https://github.com/openai/codex), or [Google Gemini](https://github.com/google-gemini/gemini-cli) CLI installed and authenticated. See [pixel-agent README](https://github.com/ErkutYavuzer/pixel-agent#quickstart) for full docs.

To uninstall (removes app + user data):

```bash
brew uninstall --cask --zap pixel-agent
```

## Contributing

This tap is primarily a personal distribution channel. Cask issues are tracked on the upstream repo:

- [pixel-agent issues](https://github.com/ErkutYavuzer/pixel-agent/issues)
- [pixel-agent discussions](https://github.com/ErkutYavuzer/pixel-agent/discussions)

## License

MIT (tap structure). Individual casks/formulae carry their own upstream licenses.
