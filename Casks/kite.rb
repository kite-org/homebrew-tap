cask "kite" do
  version "0.17.0"
  sha256 "c1dbea920a1a98ff260298c6e8d4663c0ea460c2c13fabdec8530dc874fe3896"

  url "https://github.com/kite-org/kite/releases/download/v#{version}/kite-darwin-arm64.dmg"
  name "Kite"
  desc "Kubernetes desktop workspace"
  homepage "https://kitehq.dev/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Kite.app"

  caveats <<~EOS
    Kite Desktop is in beta and is not yet signed with an Apple Developer ID or notarized.
    If macOS blocks the first launch, run:
      xattr -dr com.apple.quarantine "#{appdir}/Kite.app"
  EOS
end
