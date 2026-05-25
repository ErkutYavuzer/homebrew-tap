cask "pixel-agent" do
  version "0.2.55"
  sha256 "b2214d8998b89655014f3ee371ac69eb708723bd2bd94e438a6790d815d5e552"

  url "https://github.com/ErkutYavuzer/pixel-agent/releases/download/v#{version}/PixelAgent-#{version}-arm64.zip"
  name "pixel-agent"
  desc "Personal AI agent — multi-LLM CLI orchestration with iPhone remote"
  homepage "https://github.com/ErkutYavuzer/pixel-agent"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "PixelAgent.app"

  zap trash: [
    "~/Library/Application Support/PixelAgent",
    "~/Library/Caches/dev.erkutyavuzer.pixel-agent",
    "~/Library/Preferences/dev.erkutyavuzer.pixel-agent.plist",
  ]

  caveats <<~EOS
    pixel-agent is currently ad-hoc signed (not Apple Developer ID signed).
    macOS Gatekeeper will block first launch unless you bypass quarantine.

    Recommended (one-shot, via environment variable):

      HOMEBREW_CASK_OPTS="--no-quarantine" brew install --cask \\
        ErkutYavuzer/tap/pixel-agent

    If you already installed and Gatekeeper blocks the app, run:

      xattr -d com.apple.quarantine /Applications/PixelAgent.app

    Or right-click PixelAgent.app → Open → "Open Anyway" in
    System Settings → Privacy & Security.

    Requires at least one of: Claude Code, OpenAI Codex, or Google Gemini
    CLI, installed and authenticated. See:
      https://github.com/ErkutYavuzer/pixel-agent#quickstart
  EOS
end
